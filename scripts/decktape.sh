#!/usr/bin/env bash
set -euo pipefail

# Project root (Quarto sets this)
PROJECT_ROOT="${QUARTO_PROJECT_DIR:-$(pwd)}"
DOCS_SLIDES="$PROJECT_ROOT/docs/slides"
DOCS_QUESTIONS="$PROJECT_ROOT/docs/questions"
CHECKSUM_DIR="$PROJECT_ROOT/.decktape-checksums"
mkdir -p "$CHECKSUM_DIR"

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
      # Skip if HTML hasn't changed since last PDF generation
      checksum_file="$CHECKSUM_DIR/$(echo "$f" | shasum -a 256 | cut -d' ' -f1)"
      current_hash=$(shasum -a 256 "$f" | cut -d' ' -f1)
      if [[ -f "$checksum_file" ]] && [[ "$(cat "$checksum_file")" == "$current_hash" ]] && [[ -f "${f%.html}.pdf" ]]; then
        echo "Decktape: skipped ${f%.html}.pdf (HTML unchanged)"
        continue
      fi

      decktape "$f" "${f%.html}.pdf"
      echo "Decktape: wrote ${f%.html}.pdf"

      # Save checksum for next run
      echo "$current_hash" > "$checksum_file"
      ;;
  esac
done

