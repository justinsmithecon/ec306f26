# EC306 — Wages and Employment: Claude Project Memory

## Project Overview
This is the Quarto-based course website for **EC306 (Wages and Employment)** at Wilfrid Laurier University, taught by Justin Smith. It uses Reveal.js for slide decks and publishes to `_site/` / `docs/`.

## Directory Structure
```
slides/         # Reveal.js slide decks (one subfolder per lecture)
content/        # Course content pages (.qmd)
assignments/    # Assignment files
files/          # Supporting files (PDFs, datasets, images)
_variables.yml  # Course-level variables (semester, instructor, schedule)
_quarto.yml     # Quarto project configuration
```

---

## Slide Decks

Each deck lives at `slides/<name>/index.qmd`, with `hygge.scss`, `pp2.scss`, and an `images/` subfolder.

### Decks that receive full formatting + clarity updates each semester
| Deck | Topic |
|------|-------|
| `lsupply2` | Labour Supply 2 |
| `lsupply3` | Labour Supply 3 |
| `ldemand1` | Labour Demand 1: Competitive Labour Markets |
| `ldemand2` | Labour Demand 2: Hours, Benefits, Quasi-Fixed Costs |
| `lmarket`  | Wages and Employment in a Single Labour Market |
| `hcapital` | Human Capital |
| `discrim`  | Discrimination |

### Decks left untouched each semester (copied as-is from previous)
- `intro` — Introduction
- `lsupply1` — Labour Supply 1
- Stata content lives in `content/introtostata.qmd` (not a slide deck)

---

## New Semester Update Workflow

### Step 1 — Update `_variables.yml`
Change `course.semester`, `course.dates`, `course.copyright_year`, and any scheduling fields.

### Step 2 — Update the title slide in each edited deck
In `slides/<name>/index.qmd`, change:
```html
<h2>Fall 20XX</h2>   →   <h2>Winter/Fall 20XX</h2>
```
Also fix the hex logo position on the title slide:
```
{.absolute top="300" ...}   →   {.absolute top="275" ...}
```

### Step 3 — Apply formatting & clarity changes to the 7 edited decks
Use the previous semester's edited versions as the reference. The patterns below describe what was changed relative to the original/unedited versions.

---

## Formatting Conventions for Edited Decks

See the shared formatting guide at `../../shared/slide-formatting.md` for all style rules (goals sections, bullet formatting, highlighted key terms, callout boxes, column layouts).

---

## Previous Semester Reference
The previous semester's site (Winter 2026) is the sibling repo/folder `../ec306w26`. This repo began as the `ec306f26` branch of that repo, so histories are shared up to the branch point. The branch point is tagged `winter2026`, so to compare slides between semesters use:
```bash
git diff winter2026 -- slides/
```
