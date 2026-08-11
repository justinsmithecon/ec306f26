# Fall 2026 — reorganise the course around the new textbook chapters

Status: **decks split; new material still to write.** Branch `ec306f26`.
Last commit before this work began: `1535585`.

**Scope decided:** the course covers **chapters 1–12, 14, and 15**. Not taught:
13 Inequality, 16 Unions, 17 Immigration, 18 Incentives and Compensation,
19 Unemployment and Job Search.

## Done

- `slides/ch01` … `slides/ch15` (no `ch13`) — fourteen decks, one per chapter.
  Every section of the nine old decks is accounted for; verified section by
  section against the chapter TOCs. See `chapter-coverage.md`.
- `content/ch01.qmd` … `content/ch15.qmd` — one page per chapter.
- `_quarto.yml` sidebar and the syllabus Topics table rebuilt around chapters.
- Unreferenced images dropped during the split (the old decks carried ~318
  stale clipboard pastes; only referenced files were copied forward).

## Still to do

1. ~~**Write the Chapter 2 and Chapter 10 decks.**~~ **Chapter 2 is written** — 50
   slides, in the chapter's own LO1–LO5 order, from the 2026 edition via the McGraw
   Hill reader. Covers everything in the chapter but at lecture density, not textbook
   density. Justin's CIS charts and the labour force concepts live inside *Quantifying
   the Canadian Labour Market*. **Chapter 10 is still a stub.** Find remaining gaps
   with `grep -rn "TODO —" slides/`.
2. **Fill the smaller gaps** flagged in `ch04` (Self-Sufficiency Project),
   `ch05` (disability work-incentive evidence), `ch06` (labour market entry,
   parental leave), `ch07` (health capacity to work).
3. **Decide on the three dropped sections** now carried as extensions:
   non-wage benefits and work sharing in `ch08`, household production in `ch06`.
4. **Remove the old decks** once the new ones have been reviewed:
   `git rm -r slides/{intro,lsupply1,lsupply2,lsupply3,ldemand1,ldemand2,lmarket,hcapital,discrim} content/{introtolme,lsupply1,lsupply2,lsupply3,ldemand1,ldemand2,lmarket,hcapital,discrim}.qmd`
5. **Verify the question-deck problem numbers.** The decks are split (below), and
   chapter numbers are updated to the 2026 release, but the *problem* and
   *review-question* numbers are still 9th-edition and unverified. Each new deck
   carries an HTML comment saying so. Check against the new edition's end-of-chapter
   problems one at a time.
6. ~~**Where the LFS definitions live.**~~ **Resolved.** *Key Labour Force
   Concepts* — participation, employment and unemployment definitions, the
   labour force hierarchy, and hours worked — has moved from `ch03` to `ch02`,
   where it now forms the *Quantifying the Canadian Labour Market* section.
   `ch03` now opens directly on the labour supply model.
7. **Six chapters have no in-class questions at all** — see the table below.

## Question decks

Split to match the new chapters. Four had source `.qmd`; three existed only as
built PDFs and were split by page.

| Deck | From | How |
|:---|:---|:---|
| `questions/ch03` | `lsupply1` | whole (old Ch 2 → new Ch 3) |
| `questions/ch04` | `lsupply2` | all but the child-care MC (old Ch 3 → new Ch 4) |
| `questions/ch06` | `lsupply3` + `lsupply2` | whole, **plus the child-care MC**, which follows the child care material into Chapter 6 |
| `questions/ch08` | `ldemand1` | whole (old Ch 5 → new Ch 8) |
| `questions/ch11` | `lmarket` (PDF only) | pages 1–4 — competitive markets, product-market power, payroll tax — plus the answer key |
| `questions/ch12` | `lmarket` (PDF only) | pages 5–8 — minimum wages and monopsony — plus the answer key |
| `questions/ch14` | `hcapital` (PDF only) | whole, no split needed (old Ch 9 → new Ch 14) |
| `questions/ch15` | `discrim` (PDF only) | whole, no split needed (old Ch 12 → new Ch 15) |

**No questions exist for chapters 1, 2, 5, 7, 9, 10.** The `Sample Questions`
section has been removed from those content pages rather than left pointing at
a wrong deck. Worth noting that Chapter 5 (EI, disability, workers' compensation)
and Chapter 7 (retirement and pensions) are substantial chapters with nothing.

`questions/ch11`, `ch12`, `ch14`, `ch15` have **no `.qmd` source** — the original
was never committed, only the built PDF. They cannot be edited without rebuilding
from scratch.

## Pre-existing bugs found during the split

- `slides/lmarket/index.qmd:56` — a stray `# Introduction` that should be `##`.
  It renders as a section-break slide rather than a content slide. Corrected in
  `ch11`; the original is untouched.
- `slides/discrim/index.qmd:46` — the image reference uses `%20` but the file on
  disk has a narrow no-break space (U+202F) before "AM", so **this image has
  never rendered**. Fixed in `ch15` by copying the file under a normalised name.
- Old decks carry many unreferenced images: `lsupply1` 65 of 91, `discrim` 59 of
  70, `hcapital` 49 of 59. Not copied into the new decks.

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

The detailed chapter TOCs have since been checked against every deck. The
full section-by-section mapping is in **`chapter-coverage.md`**; questions 1
and 3 below are now answered.

1. **Non-wage benefits.** ~~May have moved to Chapter 18, or been dropped.~~
   **Resolved: dropped.** Chapter 18 is performance pay, piece rates,
   deferred compensation, teams, and top-end compensation — no fringe
   benefits. The material is in neither Ch 8 nor Ch 18. Decide whether to
   keep it as an extension beyond the text or cut it. Separately,
   `content/ldemand2.qmd` and the syllabus Topics row still say "BFGLSS
   Chapter 6", which is wrong — Chapter 6 is now Early Career Decisions.

2. **Merging the two demand lectures.** Both `ldemand1` and `ldemand2` map to
   Chapter 8. One chapter section would carry two classes of slides. Decide
   whether to merge, or keep two sections under one chapter. Note that
   pulling globalization out to Ch 9 (see below) shortens `ldemand1`
   considerably.

3. **New chapters not currently taught.** ~~Ch 9, 10, 13, 16, 18, 19.~~
   **Corrected: Ch 9 is already taught** — `ldemand1` → *Globalization and
   Offshoring* covers all four of its TOC sections. The genuinely uncovered
   chapters are **2, 10, 13, 16, 17, 18, 19**. Chapter 2 (measurement and
   research design) has the strongest case for inclusion: its eleven
   research-design methods are where the new R/Quarto assignments live.

4. **Question decks.** `questions/*/index.qmd` cite specific end-of-chapter
   problems ("BFGLSS Chapter 4 Problem 2", 19 references across four decks).
   The acronym was updated but the **chapter and problem numbers were
   deliberately left alone** — where an old chapter split in two, a problem
   could be in either half, and problem numbering will have changed. These
   need checking one by one against the new edition.

---

## Suggested sequence

0. Split `intro` into Chapter 1 (why study / modelling / policy issues) and
   Chapter 2 (the *Statistics on Labour Market Outcomes* block).
1. Split `lsupply2` into Chapter 4 and Chapter 5 decks — moving *Child Care
   Subsidies* out to Chapter 6, not Chapter 4.
2. Split `lsupply3` into Chapter 6 and Chapter 7 decks.
3. Split `lmarket` into Chapter 11 and Chapter 12 decks.
4. Split `ldemand1`, lifting *Globalization and Offshoring* out as the
   Chapter 9 deck; merge the remainder with `ldemand2`'s quasi-fixed costs
   sections as Chapter 8.
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

---

## Publisher instructor resources (2026 release)

Reached from Connect → **Instructor Resources**, plus **Test Builder** under
the Library tab. Both need a live Connect session; neither can be reached
without one.

- **Test Bank (David Gray, Ottawa).** Available in Test Builder as
  "Chapter *nn* Test Bank - Static". **Chapters 02–19 only — there is no
  Chapter 01 bank.** Ch 02 has 22 items (21 MC, 1 short answer). Each item
  carries a difficulty rating (1 Easy / 2 Medium / 3 Difficult) and a learning
  objective, which is the useful part: the LOs tell you where the author
  thinks the assessable weight sits. For Ch 02 that is
  02-01 cross-country and cross-province differences,
  02-02 legal and institutional context,
  02-03 labour force measurement, data sources, trends,
  02-04 regression analysis.
  14 of the 22 items sit under 02-03, which is why the deck's iClicker
  questions were rebalanced toward measurement.
- **Do not paste test bank items into the decks.** They are copyrighted, they
  are reused on exams, and the decks are published to a public website. Use
  them to calibrate coverage and difficulty, then write the question fresh.
- **Solutions Manual** (Word, per chapter) — worth checking against the
  question decks, whose problem numbers are still 9th-edition and unverified.
- **Figure/Table image banks** (JPG, per chapter) — the source for textbook
  figures if a deck needs one at proper resolution.
- **Student replication files** are Stata `.do` plus `.dta`/`.xlsx`, for
  Figures 2.1, 2.5, 3.3b, 3.5, 4.1, 4.9, 5.1, 6.1–6.3, 7.4, 13.1–13.4,
  14.1–14.2, Tables 14.1–14.2, 15.2, 16.1, and Oaxaca and Lorenz/Gini
  exercises. **This course is now R/Quarto**, so any of these we want to use
  has to be ported. Several duplicate charts already built in R in the decks.
- **Publisher PowerPoints** (Barry Soper) exist per chapter for all 19.
