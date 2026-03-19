#!/usr/bin/env bash
set -euo pipefail

# Project root (Quarto sets this)
PROJECT_ROOT="${QUARTO_PROJECT_DIR:-$(pwd)}"
DOCS_SLIDES="$PROJECT_ROOT/docs/slides"
DOCS_QUESTIONS="$PROJECT_ROOT/docs/questions"
CACHE_DIR="$PROJECT_ROOT/.decktape-cache"
mkdir -p "$CACHE_DIR"

# Gather outputs from Quarto if present; else scan docs/slides and docs/questions
declare -a htmls
if [[ -n "${QUARTO_PROJECT_OUTPUT_FILES:-}" ]]; then
  # Read newline-separated list safely
  while IFS= read -r line; do
    htmls+=("$line")
  done <<< "$QUARTO_PROJECT_OUTPUT_FILES"
else
  # Fallback for preview/incremental runs
  for dir in "$DOCS_SLIDES" "$DOCS_QUESTIONS"; do
    if [[ -d "$dir" ]]; then
      while IFS= read -r f; do htmls+=("$f"); done < <(find "$dir" -type f -name '*.html')
    fi
  done
fi

# Convert only HTML under docs/slides/** or docs/questions/** (handle absolute or relative)
for f in "${htmls[@]}"; do
  # Normalize to absolute path
  if [[ "$f" != /* ]]; then
    f="$PROJECT_ROOT/$f"
  fi

  case "$f" in
    "$DOCS_SLIDES"/*.html|"$DOCS_SLIDES"/*/*.html|"$DOCS_SLIDES"/*/*/*.html|\
    "$DOCS_QUESTIONS"/*.html|"$DOCS_QUESTIONS"/*/*.html|"$DOCS_QUESTIONS"/*/*/*.html)
      pdf="${f%.html}.pdf"

      # Derive source .qmd path from output HTML path (docs/slides/X/Y.html → slides/X/Y.qmd)
      rel_path="${f#"$PROJECT_ROOT"/docs/}"
      src_qmd="$PROJECT_ROOT/${rel_path%.html}.qmd"

      # Cache key based on source .qmd path
      cache_key="$(echo "$src_qmd" | shasum -a 256 | cut -d' ' -f1)"
      cached_hash_file="$CACHE_DIR/${cache_key}.hash"
      cached_pdf_file="$CACHE_DIR/${cache_key}.pdf"

      # If source .qmd exists and hasn't changed, restore cached PDF
      if [[ -f "$src_qmd" ]]; then
        current_hash=$(shasum -a 256 "$src_qmd" | cut -d' ' -f1)
        if [[ -f "$cached_hash_file" ]] && [[ "$(cat "$cached_hash_file")" == "$current_hash" ]] && [[ -f "$cached_pdf_file" ]]; then
          cp "$cached_pdf_file" "$pdf"
          echo "Decktape: restored $pdf from cache (source unchanged)"
          continue
        fi
      fi

      # Run decktape
      decktape "$f" "$pdf"
      echo "Decktape: wrote $pdf"

      # Cache the PDF and source hash
      if [[ -f "$src_qmd" ]]; then
        cp "$pdf" "$cached_pdf_file"
        echo "$current_hash" > "$cached_hash_file"
      fi
      ;;
  esac
done
