# Fall 2026 — reorganise the course around the new textbook chapters

Status: **planned, not started.** Branch `ec306f26`. Last commit before this
work began: `1535585`.

The 2026 Release of Benjamin, Foley, Gunderson, Lemieux, Schirle and
Skuterud (BFGLSS) reorganises the book into 19 chapters. The current course
sections were built around the 9th edition. The plan is to make **each
textbook chapter its own course section**.

---

## Verified chapter mapping

Confirmed against the learning objectives in the e-book table of contents.

| New chapter | Current material |
|:---|:---|
| 1–2 Introduction, Canadian Labour Market | `slides/intro` |
| 3 Labour Supply | `slides/lsupply1` (whole deck) |
| 4 Labour Supply and Income Support Programs | `slides/lsupply2` → *Income Maintenance Programs*, *Demogrants, Welfare, Wage Subsidies*, *Child Care Subsidies* |
| 5 Labour Supply and Social Insurance Programs | `slides/lsupply2` → *Unemployment Insurance*, *Disability and Workers Compensation* |
| 6 Labour Supply and Early Career Decisions | `slides/lsupply3` → *Life Cycle Labour Supply*, *Dynamic Life Cycle Models*, *Household Production*, *Fertility and Childbearing* |
| 7 Labour Supply and Later Career Decisions | `slides/lsupply3` → *Retirement and Pensions* |
| 8 Labour Demand | `slides/ldemand1` (whole deck) + `slides/ldemand2` quasi-fixed costs (Ch 8 LO5 is "Adjusting Workers versus Hours Worked") |
| 11 Competitive Labour Markets | `slides/lmarket` → *Competitive Firms*, *Imperfect Competition in the Product Market*, *Math of Labour Market Equilibrium* |
| 12 Imperfectly Competitive Labour Markets | `slides/lmarket` → *Monopsony in the Labour Market*, *Minimum Wages* |
| 14 Human Capital Theory | `slides/hcapital` |
| 15 Wage Differentials Among Diverse Population Groups | `slides/discrim` |
| 17 Economics of Immigration | no deck yet; listed in syllabus Topics |

The three decks that need splitting (`lsupply2`, `lsupply3`, `lmarket`)
already have top-level `#` headers exactly at the chapter boundary, so the
split is a cut, not a rewrite.

---

## Open questions

1. **Non-wage benefits.** `slides/ldemand2` opens with a large *Non-Wage
   Benefits* section. Chapter 8's five LOs do not cover it (short run, long
   run, the relationship between them, elasticity, workers vs hours). It may
   have moved to **Chapter 18, Incentives and Compensation Schemes**, or been
   dropped. Needs checking against the book. Until then
   `content/ldemand2.qmd` and the syllabus Topics row still say
   "BFGLSS Chapter 6", which is wrong — Chapter 6 is now Early Career
   Decisions.

2. **Merging the two demand lectures.** Both `ldemand1` and `ldemand2` map to
   Chapter 8. One chapter section would carry two classes of slides. Decide
   whether to merge, or keep two sections under one chapter.

3. **New chapters not currently taught.** The new edition adds Ch 9 Global
   Markets, Ch 10 Technology, Ch 13 Inequality, Ch 16 Unions, Ch 18
   Incentives, Ch 19 Unemployment and Job Search. Decide whether any join the
   course.

4. **Question decks.** `questions/*/index.qmd` cite specific end-of-chapter
   problems ("BFGLSS Chapter 4 Problem 2", 19 references across four decks).
   The acronym was updated but the **chapter and problem numbers were
   deliberately left alone** — where an old chapter split in two, a problem
   could be in either half, and problem numbering will have changed. These
   need checking one by one against the new edition.

---

## Suggested sequence

1. Split `lsupply2` into Chapter 4 and Chapter 5 decks.
2. Split `lsupply3` into Chapter 6 and Chapter 7 decks.
3. Split `lmarket` into Chapter 11 and Chapter 12 decks.
4. Resolve labour demand once question 1 above is answered.
5. Update `content/*.qmd` (one page per chapter), the sidebar in
   `_quarto.yml`, and the syllabus Topics table.
6. Revisit the question decks.

Each split means: new folder under `slides/`, copy `hygge.scss`, `pp2.scss`
and the needed `images/`, move the relevant `#` sections, new
`content/<name>.qmd` wrapping the deck in an iframe (copy an existing one),
and a new sidebar entry.

---

## Other unfinished business

- **Office hours** in `_variables.yml` still say "Thur 12:30 PM - 2:30 PM",
  set when the course ran Tue/Thr. Teaching is now Mon/Wed.
- **iClicker policy**: decide whether to drop the lowest *n* classes for
  legitimate absences, and whether students must buy a subscription. The
  syllabus currently says marks cannot be made up.
- **Bookstore pricing**: the $102.71 DTA figure came from a bookstore
  screenshot; Justin had queried why it differs from the publisher's $99.
- **Unused image assets**: `files/img/rstudio-panes.svg` (hand-drawn mockup)
  and `files/img/rstudio-window.png` (higher-resolution screenshot) are both
  committed but unreferenced. The live one is
  `files/img/rstudio-interface.png`.
- `.claude/launch.json` is committed but unused — the preview server is run
  from the shell instead (see below).

---

## Operational notes

- **Rendering needs R packages** `oaxaca`, `cansim` and `ggrain` beyond the
  tidyverse set. They were missing and are now installed. Without them a full
  render dies partway.
- **A failed full render is destructive.** Quarto clears the outputs it is
  about to rebuild, so an abort leaves `docs/slides/` deleted (152 files, in
  one instance). Check `git status` for deletions before committing after any
  render that errored.
- **Previewing.** `quarto preview` re-renders everything, which is slow. To
  look at the built site, serve `docs/` statically — note that a server
  launched via `.claude/launch.json` cannot read files under the OneDrive
  CloudStorage path, so run it from the shell instead.
- **Publishing.** `main` is the Winter 2026 course and is the branch GitHub
  Pages serves from `docs/`. `ec306f26` is local only and has never been
  pushed. The intention is for it to become its own repo and site.
