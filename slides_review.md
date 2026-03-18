# EC306 Slide Deck Review — Issues to Address

Generated 2026-03-16. Items to fix after the semester ends.

---

## lmarket — Wages and Employment in a Single Labour Market

| # | Line(s) | Severity | Issue | Status |
|---|---------|----------|-------|--------|
| 1 | 378–382 | Moderate | Monopsony profit description was misleading. Clarified as surplus transferred to monopsonist. | DONE |
| 2 | 399 | Minor | "Vacancies are $V_m - S_m$" — monopsonists deliberately restrict employment, so "vacancies" is non-standard here. "Employment gap" or "unrealized hiring" would be clearer. | |
| 3 | 508–509 | Minor | CPI data for 2025 is a duplicate of 2024 (both 160.9). Update when actual 2025 CPI is available. | |
| 4 | 512, 535 | Minor | `geom_line(size = 1)` deprecated in ggplot2 3.4+; use `linewidth = 1`. | DONE |
| 5 | 28 | Formatting | Hex logo `top="300"` should be `top="275"`. | DONE |

---

## lsupply2 — Labour Supply 2

| # | Line(s) | Severity | Issue | Status |
|---|---------|----------|-------|--------|
| 1 | 679 | **High** | "14 hours" should be "14 **weeks**". | DONE |
| 2 | 998 | **High** | "above" should be "below". | DONE |
| 3 | 1043 vs 963 | Moderate | Inconsistent dates for Quebec child care: line 963 says "since 1997," line 1043 says "Implemented in 2000." Consider reconciling. | NEEDS INPUT |
| 4 | 639 | Minor | Added bridging note "(we use 60% for simplicity)." | DONE |
| 5 | 1047 | Minor | Quebec child care fee figures ($8.25–$21.45) may be outdated for 2026. Verify against current rates. | NEEDS INPUT |

---

## lsupply3 — Labour Supply 3

| # | Line(s) | Severity | Issue | Status |
|---|---------|----------|-------|--------|
| 1 | 307, 315, 318 | Moderate | `C1` → `C_1` in LaTeX. | DONE |
| 2 | 220 | Minor | Typo: "cconomic" → "economic." | DONE |
| 3 | 702 | Minor | "higher price" → "higher wage." | DONE |
| 4 | 364, 392, 418 | Minor | Same image used for three distinct wage-change scenarios. May confuse students. | NEEDS INPUT |
| 5 | 895–896, 905 | Minor | Mixed reference years for pension amounts. | NEEDS INPUT |

---

## ldemand1 — Labour Demand 1

| # | Line(s) | Severity | Issue | Status |
|---|---------|----------|-------|--------|
| 1 | 108 | Moderate | Production function K → K_0, consistent case f → F. | DONE |
| 2 | 652–653, 884 | Minor | Claims "only scale effect" in short run. Consider softening language. | |

---

## ldemand2 — Labour Demand 2

| # | Line(s) | Severity | Issue | Status |
|---|---------|----------|-------|--------|
| 1 | 289–290 | Minor | "Quasi-fixed costs shift $VMP$ curve down" is slightly ambiguous. | |
| 2 | 28 | Formatting | Hex logo `top="300"` should be `top="275"`. | DONE |

---

## hcapital — Human Capital

| # | Line(s) | Severity | Issue | Status |
|---|---------|----------|-------|--------|
| 1 | 560 | **High** | Welfare comparison "unless" → "if". | DONE |
| 2 | 560 | Moderate | "paid" → "net payoff". | DONE |
| 3 | 599 | Moderate | Potential experience uses age - schl - 5; standard is 6. Verify intent. | NEEDS INPUT |
| 4 | 77, 103, 128 | Minor | Stats Canada table number → `14-10-0020-01`. | DONE |
| 5 | 71, 96, 121, 685 | Minor | `geom_line(size = 1.2)` → `linewidth = 1.2`. | DONE |
| 6 | 28 | Formatting | Hex logo `top="300"` should be `top="275"`. | DONE |

---

## discrim — Discrimination

| # | Line(s) | Severity | Issue | Status |
|---|---------|----------|-------|--------|
| 1 | 546 | **High** | Log points 68% → 97%. | DONE |
| 2 | 124 | Moderate | Standardized w_w → w_f. | DONE |
| 3 | 663 | Moderate | R axis label "Schooling Level" → "Province". | DONE |
| 4 | 206–207 | Minor | Combined duplicate heading. | DONE |
| 5 | 487–489 | Minor | Added \cdot in Oaxaca-Blinder equations. | DONE |
| 6 | 789 | Minor | "Women earn about 60% of what men earn" — recent data closer to 70–75%. Consider qualifying. | NEEDS INPUT |
| 7 | 139–141 | Minor | MRP subscripts $MRP_{ND}$ and $MRP_D$ are misleading. | |
| 8 | 28 | Formatting | Hex logo `top="300"` should be `top="275"`. | DONE |

---

## intro — Introduction

| # | Line(s) | Severity | Issue | Status |
|---|---------|----------|-------|--------|
| 1 | 533–540 | **High** | Fixed nurses/LTC direction contradiction. | DONE |
| 2 | 532 | Minor | Typo: "temprary" → "temporary." | DONE |
| 3 | 548 | Minor | Grammar: "explore situations in the course." | DONE |
| 4 | 621 | Minor | "How long do people typically stay unemployed?" | DONE |
| 5 | ~206–208 | Minor | R code: `pivot_wider` uses `values_from = c(mean, share)` — potential bug. Worth testing. | |

---

## lsupply1 — Labour Supply 1

| # | Line(s) | Severity | Issue | Status |
|---|---------|----------|-------|--------|
| 1 | 753 | Moderate | "Graph to the right" → "Graph to the left." | DONE |
| 2 | 467 | Minor | "They make only be able" → "They may only be able." | DONE |
| 3 | 629 | Minor | `-If` → `- If`. | DONE |
| 4 | 819 | Minor | "substition" → "substitution." | DONE |
| 5 | 978 | Minor | "non-laboir" → "non-labour." | DONE |
| 6 | 978 | Minor | "slope if reservation wage" → "slope of reservation wage." | DONE |
| 7 | 1026 | Minor | "occured" → "occurred." | DONE |
| 8 | 1151 | Minor | "Becauses" → "Because." | DONE |
| 9 | 1154 | Minor | "chooses to less" → "chooses to work less." | DONE |
| 10 | 113, 163, 191 | Minor | `geom_line(size = ...)` → `linewidth`. | DONE |

---

## Global Issues (all edited decks)

| Issue | Decks affected | Status |
|-------|---------------|--------|
| Hex logo `top="300"` should be `top="275"` | lmarket, ldemand2, hcapital, discrim (check all) | DONE |
| `geom_line(size = ...)` deprecated in ggplot2 3.4+ | lmarket, lsupply1, hcapital (any deck with R code) | DONE |
