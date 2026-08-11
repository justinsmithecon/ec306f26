# BFGLSS 2026 — chapter-by-chapter coverage of existing slides

Built from the detailed table of contents for all 19 chapters, checked against the
section headers of the nine decks in `slides/`. Companion to `restructure-plan.md`.

**Legend** — ✅ covered by existing slides · 🟡 partial, needs writing · ❌ no coverage

Source references are `deck` → `# Section` → `## Slide` as they exist today.

---

## Scope — decided

**The course covers chapters 1–12, 14, and 15.** Fourteen chapters, fourteen decks.
Not taught: 13 (Inequality), 16 (Unions), 17 (Immigration), 18 (Incentives and
Compensation), 19 (Unemployment and Job Search).

| | Chapters |
|:---|:---|
| ✅ Essentially complete | 1, **2**, 3, 8, 9, 11, 12, 14, 15 |
| 🟡 Mostly there, some gaps | 4, 5, 6, 7 |
| ❌ Built from scratch | 10 |

Thirteen of the fourteen decks are now written. **Chapter 2** has been written from
the 2026 edition (86 slides). Only **Chapter 10** (labour demand and technology)
remains from scratch.

### Consequences of the chapters left out

- **Chapter 17 must come out of the syllabus Topics table.** Immigration is listed
  there today with no deck behind it, and is now formally out of scope.
- **Hidden Unemployment** (`lsupply1`) was headed for Chapter 19, which is no longer
  taught. It stays in the Chapter 3 deck as an extension, or gets cut.
- **`intro` → Issues in Unemployment** stays; it is Chapter 1 policy-issues framing,
  not Chapter 19 content.
- Chapter 14 keeps its own *Education and Inequality* section, so dropping Chapter 13
  costs nothing already on the slides.

---

## Chapter 1 — Introduction to Labour Market Economics

| TOC section | | Source |
|:---|:---|:---|
| Why Study the Labour Market? | ✅ | `intro` → What is Labour Economics? |
| Modelling the Labour Market | ✅ | `intro` → Basic Economic Model of the Labour Market |
| Current Policy Issues | ✅ | `intro` → Current Policy Issues |
| Some Observations and the Format of This Book | — | Book-specific; no slide needed |

**Note:** `intro` → Statistics on Labour Market Outcomes (the seven distribution and
earnings-by-group slides) is Chapter 2 material, not Chapter 1. The `intro` deck splits.

---

## Chapter 2 — Introduction to the Canadian Labour Market, Measurement, and Research

**Written.** `slides/ch02` is complete — 49 slides, following the chapter's own
learning-objective order (LO1 → LO5). Inside *Quantifying the Canadian Labour Market*
the flow is: types of data → the data sources → key definitions → then every chart
together, LFS first and CIS second. Justin's charts came from `intro` and `lsupply1`;
the prose was written from the 2026 edition.

| TOC section | | Source |
|:---|:---|:---|
| Introducing the Canadian Labour Market | ✅ | `intro` → Statistics on Labour Market Outcomes |
| **Institutional and Legal Context** | | |
| — Canada and Indigenous Peoples | ✅ | `ch02` |
| — Federal and Provincial Jurisdictions | ✅ | `ch02` |
| — Canada Labour Code | ✅ | `ch02` |
| — Provincial Employment Standards | ✅ | `ch02` |
| — Provincial Labour Relations | ✅ | `ch02` |
| — Equity and Human Rights | ✅ | `ch02` |
| **Quantifying the Canadian Labour Market** | | |
| — Types of Data | ✅ | `ch02` |
| — Canadian Labour Force Survey | ✅ | `ch02` → Quantifying the Canadian Labour Market (moved out of `lsupply1`) |
| — Canadian Census | ✅ | `ch02` |
| — Canadian Income Survey | ✅ | `ch02` |
| — Other Major Surveys | ✅ | `ch02` |
| **Empirical Research** | | |
| — Regression Analysis | ✅ | `ch02` → Regression Analysis (OLS, coefficients, R-squared, multiple regression) |
| — Correlation vs Causation | ✅ | `ch02` |
| **Advanced Research Design** | | |
| — Audit and Resumé Studies | ✅ | `ch02`; worked examples in `ch15` |
| — Before-and-After Comparison of Those Treated | ✅ | `ch02` |
| — Post-Treatment Comparison of Treated and Comparison Groups | ✅ | `ch02` |
| — Difference-in-Differences | ✅ | `ch02`; applied in `ch05` (Maine vs New Brunswick) and `ch12` (Card & Krueger) |
| — Natural Experiments | ✅ | `ch02` |
| — Regression Discontinuity Designs | ✅ | `ch02` |
| — Instrumental Variables | ✅ | `ch02`; applied in `ch14` (compulsory schooling) |
| — Longitudinal Data and Fixed-Effects Estimators | ✅ | `ch02`; applied in `ch14` (twin studies) |
| — Propensity Score and Other Matching Procedures | ✅ | `ch02` |
| — Synthetic Comparison Groups | ✅ | `ch02` |

**Resolved:** the LFS definitions (labour force, participation, employed, unemployed,
the labour force hierarchy, hours worked) used to open `lsupply1`. They now live in
`ch02` as the *Quantifying the Canadian Labour Market* section, matching the new
edition. `ch03` opens directly on the labour supply model.

**Opportunity:** the eleven research-design methods are the natural home for the new
R/Quarto empirical work and the Gradescope-autograded assignments. This chapter and the
course's new computational strand are the same project.

---

## Chapter 3 — Labour Supply

`lsupply1`, less its opening *Key Labour Force Concepts* section, which is Chapter 2
material and has moved to `ch02`. The deck now opens on the labour supply model.

| TOC section | | Source |
|:---|:---|:---|
| Supply in the Labour Market | → | Moved to `ch02`; see Chapter 2 above |
| Basic Labour Supply Model — Preferences / Constraints / The Individual's Optimum | ✅ | `lsupply1` → Labour Supply Model (Preferences, Constraints, Consumer Optimum) |
| Comparative Statics — Labour Supply for Participants | ✅ | `lsupply1` → Comparative Statics (Non-Labour Income, Increase in the Wage) |
| Comparative Statics — Participation Decisions | ✅ | `lsupply1` → Consumer Optimum, reservation wage |
| Deriving the Individual Supply Curve of Labour | ✅ | `lsupply1` → The Individual Labour Supply Curve |
| Empirical Evidence — Participation Decisions of Married Women | ✅ | `lsupply1`:764–780 |
| Empirical Evidence — Evidence of the Elasticity of Labour Supply | ✅ | `lsupply1` → Elasticity of Labour Supply |
| Advanced Applications — Added Worker Effects | ✅ | `lsupply1` → Applications → Added Worker Effect |
| Advanced Applications — Rigid Schedules and Flexible Work Hours | ✅ | `lsupply1` → Moonlighting, Overtime |

**Orphan:** `lsupply1` → Hidden Unemployment (discouraged workers) has no home in
Chapter 3. Natural fit is Chapter 19, Measuring Unemployment.

---

## Chapter 4 — Labour Supply and Income Support Programs

| TOC section | | Source |
|:---|:---|:---|
| Income Support Programs in Canada | ✅ | `lsupply2` → Overview, Government Transfers in Canada |
| Modelling Income Support Programs | ✅ | `lsupply2` → Issues in Program Design, Four Standard Income Support Programs |
| Demogrants and Social Assistance — Demogrants | ✅ | `lsupply2` → Demogrant: Theory, Canadian Example, Schirle (2015) |
| — Perfect Targeting of Social Assistance | ✅ | `lsupply2` → Welfare: Overview → Work Disincentive Case |
| — Negative Income Tax | ✅ | `lsupply2` → NIT Overview → Math, MINCOME |
| — Other Aspects of Social Assistance Programs | ✅ | `lsupply2` → Combating Work Disincentives |
| Wage Subsidies and Refundable Tax Credits | ✅ | `lsupply2` → Wage Subsidies, Tax Credits (all phases) |
| Empirical Evidence — Social Assistance Programs | ✅ | `lsupply2` → Evidence from Quebec |
| Empirical Evidence — Child Benefits | ✅ | `lsupply2`:154–168 (UCCB/CCB, currently filed under Demogrant: Canadian Example) |
| Empirical Evidence — The Self-Sufficiency Project | ❌ | Not in any deck |

**Orphan:** `lsupply2` → Child Care Subsidies (Quebec $5/day, the labour-supply-gap
diagrams, the evidence slides) is a large section with no Chapter 4 home. It belongs in
**Chapter 6, Parenthood and Paid Work → Family-Related Policy**.

---

## Chapter 5 — Labour Supply and Social Insurance Programs

| TOC section | | Source |
|:---|:---|:---|
| Social Insurance Programs in Canada | 🟡 | `lsupply2` → EI Overview opens directly; no framing slide covering social insurance as a category |
| Unemployment Insurance | ✅ | `lsupply2` → EI Overview, Benefits, Model Parameters, Budget Constraint, all effect cases |
| — Empirical Evidence of UI and Work Incentives | ✅ | `lsupply2` → Maine vs New Brunswick |
| Illness and Disability Insurance | | |
| — The Effect of Disability on the Potential Income Constraint | ✅ | `lsupply2` → Effect of Disability on Labour Supply, Disability and Preferences |
| — The Effect of Workers' Compensation | ✅ | `lsupply2` → Compensation Schemes → Optimal Compensation Level |
| — Empirical Evidence of Work Incentives | ❌ | No evidence slides for disability or workers' comp anywhere in the deck |

---

## Chapter 6 — Labour Supply and Early Career Decisions

| TOC section | | Source |
|:---|:---|:---|
| Characterizing Life-Cycle Labour Supply | ✅ | `lsupply3` → Life Cycle Labour Supply (incl. cohort vs age effects) |
| **Labour Market Entry** | ❌ | Nothing on entry, school-to-work transition, or early-career job mobility |
| Parenthood and Paid Work — Fertility Decisions | ✅ | `lsupply3` → Fertility and Childbearing |
| Parenthood and Paid Work — Family-Related Policy | 🟡 | `lsupply2` → Child Care Subsidies covers child care; parental leave is missing |
| Dynamic Life-Cycle Models | ✅ | `lsupply3` → Dynamic Life Cycle Models |

**Orphan:** `lsupply3` → Household Production (the full model, comparative statics,
household production function — roughly 15 slides) appears **nowhere in the new
edition's TOC**. Either fold it into Parenthood and Paid Work as your own extension, or
retire it.

---

## Chapter 7 — Labour Supply and Later Career Decisions

| TOC section | | Source |
|:---|:---|:---|
| Labour Supply and Age | ✅ | `lsupply3` → Determinants of Retirement - Age |
| Retirement Policies — Mandatory Retirement Policies | ✅ | `lsupply3`:859 |
| Retirement Policies — Income Maintenance Programs | ✅ | `lsupply3` → Retirement Income, OAS, CPP/QPP |
| Health Capacity to Work | 🟡 | `lsupply3`:886–890 is four bullets on health as a retirement determinant; the chapter treats it as a full section |
| Employer Pensions and Retirement | ✅ | `lsupply3` → Employer Pension Plan |
| Public Pensions and Labour Supply Decisions | ✅ | `lsupply3` → OAS, CPP/QPP, Evidence on Effect of Pensions |

---

## Chapter 8 — Labour Demand

Combines `ldemand1` and part of `ldemand2`.

| TOC section | | Source |
|:---|:---|:---|
| Labour Demand in the Short Run | ✅ | `ldemand1` → Demand in the Short Run |
| Long Run — The Cost-Minimization Problem | ✅ | `ldemand1` → Cost Minimization (incl. the math sequence) |
| Long Run — The Profit-Maximizing Problem | ✅ | `ldemand1` → Deriving Labour Demand |
| Long Run — Scale and Substitution Effect of a Wage Change | ✅ | `ldemand1` → Scale and Substitution Effects |
| Relationship between Short-Run and Long-Run — Labour Demand under Cost-Minimization | ✅ | `ldemand1` → Relationship to Short-Run Demand |
| Elasticity of Demand for Labour (all five determinants) | ✅ | `ldemand1` → Elasticity of Demand, Factors Affecting Elasticity |
| — Empirical Evidence | ✅ | `ldemand1` → Evidence on Elasticity |
| Adjusting Workers versus Hours — Examples of Quasi-fixed Costs | ✅ | `ldemand2` → Examples of Quasi-fixed Costs |
| — The Effect of Quasi-fixed Costs | ✅ | `ldemand2` → Effects of Quasi-fixed Costs |
| — Phenomena Consistent with Quasi-fixed Labour Costs | ✅ | `ldemand2` → Things Explained by Quasi-Fixed Costs (overtime, temp/gig, layoffs, labour hoarding, segmentation) |

**Orphan 1 — Non-Wage Benefits.** `ldemand2` opens with a substantial Non-Wage Benefits
section. It is **not in Chapter 8, and not in Chapter 18** (which is performance pay,
piece rates, deferred compensation, teams, and top-end compensation). It appears to have
been dropped from the new edition. This resolves open question 1 in `restructure-plan.md`.

**Orphan 2 — Work Sharing.** `ldemand2` → Work Sharing (Canada's program, overtime
restrictions, the lump of labour fallacy, subsidized work sharing, employee demand) is
roughly 15 slides of policy material. It fits loosely under "Phenomena Consistent with
Quasi-fixed Labour Costs" but has no explicit TOC home. Keep as your own extension of
Chapter 8, or cut.

---

## Chapter 9 — Labour Demand in Global Markets

**Already taught.** `restructure-plan.md` listed Chapter 9 as new; it is not.

| TOC section | | Source |
|:---|:---|:---|
| Globalization of Labour Markets | ✅ | `ldemand1` → Globalization and Offshoring → Introduction |
| The Impact of Trade on a Single Labour Market | ✅ | `ldemand1` → Effect of Trade on Single Market (six slides) |
| Cross-Sectoral Impact of Trade | ✅ | `ldemand1` → Effect of Trade Across Sectors |
| Empirical Evidence | ✅ | `ldemand1` → Evidence on Trade and Labour Demand |

Lifting this out gives Chapter 9 a complete deck and leaves Chapter 8 a more reasonable
length.

---

## Chapter 10 — Labour Demand and Technology

| TOC section | | Source |
|:---|:---|:---|
| Technology and the Jobs We Do | ❌ | `intro`:563 raises automation/AI as a policy question only |
| Capital Labour Substitution — Two-Factor Model | 🟡 | `ldemand1` cost minimization is a two-factor K/L model — the machinery exists, the technology framing does not |
| Capital Labour Substitution — Three-Factor Model | ❌ | |
| Empirical Evidence — Skill-Biased Technological Change | 🟡 | `hcapital`:948, one slide inside Education and Inequality |
| Empirical Evidence — Job Polarization | ❌ | |
| Emerging Technologies — Broadband Internet | ❌ | |
| Emerging Technologies — Robotics | ❌ | |
| Emerging Technologies — Gig Job Platforms | 🟡 | `ldemand2` → Temp and Gig Workers, framed as quasi-fixed costs not technology |
| Emerging Technologies — Artificial Intelligence | ❌ | |

Also relevant: `ldemand1` → Non-Trade Demand Factors.

---

## Chapter 11 — Competitive Labour Markets

| TOC section | | Source |
|:---|:---|:---|
| Competitive Market Equilibrium | ✅ | `lmarket` → Competitive Firms (Assumptions, Market Demand and Supply) |
| Change in Supply or Demand | ✅ | `lmarket` → Market Demand and Supply |
| Implications of the Competitive Market Equilibrium | ✅ | `lmarket` → Firm Demand and Supply in the Short Run |
| Imperfect Competition in the Product Market — Departure from Competitive Market Wages | ✅ | `lmarket` → Imperfect Competition (Monopoly, Monopolistic Competition and Oligopoly) |
| Working with Supply and Demand — Application: Incidence of a Payroll Tax | ✅ | `lmarket` → Math of Labour Market Equilibrium (Payroll Tax, Tax Incidence, Evidence) |

---

## Chapter 12 — Imperfectly Competitive Labour Markets

| TOC section | | Source |
|:---|:---|:---|
| Sources of Monopsony Power | ✅ | `lmarket` → Characteristics of Monopsonies |
| Equilibrium in a Monopsonistic Labour Market | ✅ | `lmarket` → Simple Monopsony, Marginal Cost of Labour |
| Implications of the Imperfectly Competitive Market Equilibrium | ✅ | `lmarket` → Wage Differentiation |
| Evidence of Monopsony Power | ✅ | `lmarket` → Evidence of Monopsonies |
| Minimum Wages — Competitive Labour Market | ✅ | `lmarket` → Minimum Wages in Competitive Labour Market |
| Minimum Wages — Monopsonistic Labour Market | ✅ | `lmarket` → Minimum Wages in Monopsony, Card and Krueger (1994), Evidence |

---

## Chapter 13 — Inequality

| TOC section | | Source |
|:---|:---|:---|
| Why Do Economists Study Inequality? — Theories of Redistributive Justice | ❌ | |
| Measuring Inequality — Income Concepts | ❌ | |
| Measuring Inequality — Measures of Inequality | ❌ | No Gini, Lorenz, or percentile ratios anywhere in the decks |
| Measuring Inequality — Strengths and Weaknesses of Measures | ❌ | |
| Inequality in Canada — Income Inequality Trends | 🟡 | `intro` → Distribution of Earnings / Hourly Earnings are descriptive only |
| Inequality in Canada — Wage Inequality Trends | 🟡 | `hcapital` → Education and Inequality (between- vs within-group, five slides) |

---

## Chapter 14 — Human Capital Theory

| TOC section | | Source |
|:---|:---|:---|
| Education and Labour Market Outcomes in Canada | ✅ | `hcapital` → Educational Attainment, Unemployment Rate, Participation Rate |
| Human Capital Theory — Education as an Investment Decision | ✅ | `hcapital` → Human Capital Theory |
| Human Capital Theory — Private Investment in Education | ✅ | `hcapital` → Private Investments In Education (full Attending University sequence) |
| Education as a Filter | ✅ | `hcapital` → Signalling |
| Empirical Evidence — Education and Earnings | ✅ | `hcapital` → Estimating Returns to Schooling |
| — The Human Capital Earnings Function | ✅ | `hcapital` → Mincer Equation |
| — Signalling, Screening, and Ability | ✅ | `hcapital` → Signalling, Ability Bias |
| — Addressing Ability Bias | ✅ | `hcapital` → Twin Studies, Compulsory Schooling |
| — Investments in Early Childhood Education and Inequalities in Educational Opportunities | ❌ | |
| — Social Returns to Education | ✅ | `hcapital` → Social Returns to Education |
| Increased Returns to Education and Inequality — Education and Inequality | ✅ | `hcapital` → Education and Inequality |
| — Increasing Returns to Education since 1980 | ✅ | `hcapital`:944–961 |
| Training — Who Pays? | ✅ | `hcapital` → Who Pays for Job Training (nine slides) |
| Training — How Large Are the Returns to Training? | ✅ | `hcapital` → Evidence from Program Evaluation |

One gap in an otherwise complete chapter. Note this deck is already the longest in the
course.

---

## Chapter 15 — Wage Differentials Among Diverse Population Groups

| TOC section | | Source |
|:---|:---|:---|
| Comparing Differences in Average Wages | ✅ | `discrim` → Male and Female Earnings |
| Sources — Labour Market Discrimination | ✅ | `discrim` → Demand-Side Theories |
| Sources — Competitive Theories of Discrimination | ✅ | `discrim` → Taste-Based, Statistical Discrimination, Crowding, Dual Labour Market |
| Sources — Noncompetitive Theories of Discrimination | ✅ | `discrim` → Non-Competitive Theories (imperfect information, queueing, political pressure, monopsony, systemic) |
| Methods — Measuring How Much of Wage Gaps Can Be Explained | ✅ | `discrim` → Blinder-Oaxaca Decomposition, Collider Bias |
| Methods — Experiments, Audits, and Correspondence Studies | 🟡 | `discrim`:83, :480 list audit studies; no worked treatment |
| Evidence — Choosing Which Groups to Study | ✅ | `discrim` → Other Groups → Introduction |
| Evidence — Wage Differentials among Select Groups | ✅ | `discrim` → Additional Evidence on Gender Pay Gaps, Evidence for Other Groups |
| Policies to Mitigate Wage Differentials | ✅ | `discrim` → Policies to Combat Gender Discrimination, Impact of Policies |

Also present and worth keeping: `discrim` → Productivity Differences, Pre-Market
Discrimination. Fits under Sources.

---

## Chapter 16 — Unions and Collective Bargaining

❌ **Nothing.** `intro`:101 has a single definitional slide. Passing mentions in
`ldemand2` (unions resist work sharing), `lmarket`:502 (bargaining models), and
`hcapital`:961 (declining unionization as an inequality driver).

All eighteen TOC subsections are gaps: legal framework, determinants and decline of
membership, union objectives and objective functions, the labour demand and efficient
contracts models, bargaining power, how unions affect labour markets, threat effects,
union–non-union differentials, and union impacts on inequality.

---

## Chapter 17 — Economics of Immigration

❌ **Nothing.** Listed in the syllabus Topics table but never built.
`intro` → Earnings by Immigration Status is one descriptive chart; `intro`:570 poses
"why do immigrants earn lower wages on entry?" as an open policy question;
`discrim`:867–868 notes immigration confounds racial wage gap estimates.

All TOC subsections are gaps: policy objectives, the Canadian points approach, source
countries, settlement, the migration decision, brain drain both directions, economic
assimilation, effects on native-born outcomes, and optimal policy.

---

## Chapter 18 — Incentives and Compensation Schemes

❌ **Nothing.** Performance pay, piece rates, deferred compensation, cooperation and
competition in teams, tournament theory, superstars, and CEO compensation are all absent.

Confirmed: the `ldemand2` Non-Wage Benefits material does **not** belong here.

---

## Chapter 19 — Unemployment and Job Search

| TOC section | | Source |
|:---|:---|:---|
| Measuring Unemployment — Defining Unemployment | ✅ | `lsupply1` → Employment and Unemployment, Key Definitions, Labour Force Hierarchy |
| — Unemployment Patterns | ❌ | |
| — Unemployment Rate as a Summary Statistic | 🟡 | `lsupply1` → Hidden Unemployment covers the discouraged-worker critique |
| Labour Market Dynamics — Incidence and Duration of Unemployment | ❌ | |
| Steady State Unemployment | ❌ | |
| Search and Matching — Job Search Models | ❌ | |
| Search and Matching — Search and Matching Models | ❌ | |
| Displaced Workers and Unemployment | ❌ | |
| High-Wage Unemployment — Implicit Contracts | ❌ | |
| High-Wage Unemployment — Efficiency Wages | ❌ | |
| Unemployment Insurance Program Design | 🟡 | `lsupply2` → EI covers the labour supply response; not program design |

`intro` → Issues in Unemployment poses the questions this chapter answers.

---

## Orphaned material — current slides with no home in the new TOC

Each of the first three was a **named section of the 9th edition** that the 2026
release dropped. The slides are faithful to the old book; these are the authors'
editorial cuts, not holes in the decks.

| Material | Deck | 9th ed. home | Disposition |
|:---|:---|:---|:---|
| Non-Wage Benefits | `ldemand2` | Ch 6 § *Non-wage Benefits and Total Compensation* (p. 171) — half the chapter title | Dropped. Keep as an extension, or cut. |
| Household Production (full model) | `lsupply3` | Ch 4 § *Household Production* (pp. 114–117) | Dropped. Fold into Ch 6, or cut. |
| Work Sharing | `ldemand2` | Ch 6 § *Worksharing and Job Creation* (pp. 181–187) | Dropped. Keep as an extension, or cut. |
| Child Care Subsidies (Quebec $5/day) | `lsupply2` | Ch 3 § *Child Care Subsidy* (p. 98) | Moved: Ch 4 → Ch 6, Family-Related Policy. |
| Hidden Unemployment | `lsupply1` | Ch 2 § *Hidden Unemployment* **and** Ch 16 (p. 507) | Both editions put it with unemployment. Ch 19. |
| LFS definitions / labour force hierarchy | `lsupply1` | Ch 2 § *Quantifying Labour Market Attachment* (p. 36) | The new edition moves measurement to Ch 2. Decide. |

---

## Crosswalk: 9th edition → 2026 release

The 9th edition had 17 chapters in 6 parts. The decks were built from it, so this
explains why the current material sits where it does.

| 9th ed. | 2026 release | What happened |
|:---|:---|:---|
| 1 Introduction to Labour Market Economics | **1** + **2** | Appendices 1A (regression) and 1B (research designs) were promoted into the new Ch 2 and roughly doubled |
| 2 Labour Supply: Individual Attachment | **3** (+ **2**, **19**) | Measurement material to Ch 2; hidden unemployment to Ch 19 |
| 3 Labour Supply and Public Policy | **4** + **5** | Income support split from social insurance; child care subsidy out to Ch 6 |
| 4 Labour Supply over the Life Cycle | **6** + **7** | Split at early vs later career; household production dropped |
| 5 Demand for Labour in Competitive Markets | **8** + **9** | Globalization and offshoring promoted to its own chapter |
| 6 Labour Demand, Non-wage Benefits, Quasi-fixed Costs | **8** | Only quasi-fixed costs survives; non-wage benefits and worksharing dropped |
| 7 Wages and Employment in a Single Labour Market | **11** + **12** | Split at competitive vs monopsony |
| 8 Compensating Wage Differentials | — | **No longer a chapter.** Never taught here; no deck affected |
| 9 Human Capital Theory | **14** | Largely intact; adds early childhood education |
| 10 Wage Structures across Markets | — | **No longer a chapter.** Occupational, regional, interindustry, firm-size, public–private differentials. Never taught here |
| 11 The Economics of Immigration | **17** | Intact |
| 12 Discrimination and Male–Female Earnings Differentials | **15** | Broadened to "diverse population groups"; adds audit and correspondence studies |
| 13 Optimal Compensation, Deferred Comp, Mandatory Retirement | **18** (+ **7**) | Mandatory retirement moved to Later Career Decisions |
| 14 Unions and Collective Bargaining + 15 Union Impact | **16** | **Two chapters merged into one** |
| 16 Unemployment: Meaning and Measurement + 17 Causes and Consequences | **19** | **Two chapters merged into one** |
| — | **10** Labour Demand and Technology | **Genuinely new.** SBTC, polarization, robotics, gig platforms, AI |
| — | **13** Inequality | **Genuinely new** as a chapter. Measurement of inequality has no 9th-edition ancestor |

### What this changes

**Chapter 2 has the clearest mandate.** In the 9th edition, research design was two
appendices to Chapter 1 listing five methods. The new edition makes it a full chapter
section with eleven, adding IV, fixed effects, matching, synthetic control, and audit
studies. The authors deliberately doubled down here. It is also the only chapter where
the course's move to R/Quarto has an obvious home.

**Only two chapters are genuinely new material**, 10 and 13. The other five uncovered
chapters (2, 16, 17, 18, 19) all have 9th-edition ancestors — so a solutions manual,
old problem sets, and the previous edition's figures exist for them.

**Unions and unemployment each cost one deck, not two.** The 9th edition spread each
over two chapters; the new edition consolidates. Adding either is a smaller commitment
than the old book suggested.

---

## Deck build plan

Decks are named `slides/ch01` … `slides/ch15` (no `ch13`). Chapter titles live in the
deck's own title slide and in the sidebar, so the directory name only needs to sort.

| Deck | Chapter | Built from |
|:---|:---|:---|
| `ch01` | Introduction to Labour Market Economics | `intro` → What is Labour Economics?, Basic Economic Model, Current Policy Issues |
| `ch02` | Introduction to the Canadian Labour Market, Measurement, and Research | `intro` → Statistics on Labour Market Outcomes **+** `lsupply1` → Key Labour Force Concepts **+ new** |
| `ch03` | Labour Supply | `lsupply1`, less Key Labour Force Concepts (moved to `ch02`) |
| `ch04` | Labour Supply and Income Support Programs | `lsupply2` → Income Maintenance Programs, Demogrants/Welfare/Wage Subsidies |
| `ch05` | Labour Supply and Social Insurance Programs | `lsupply2` → Unemployment Insurance, Disability and Workers Compensation |
| `ch06` | Labour Supply and Early Career Decisions | `lsupply3` → Life Cycle, Dynamic Life Cycle, Household Production, Fertility **+** `lsupply2` → Child Care Subsidies |
| `ch07` | Labour Supply and Later Career Decisions | `lsupply3` → Retirement and Pensions |
| `ch08` | Labour Demand | `ldemand1` → Background, Short Run, Long Run, Deriving, Elasticity **+** `ldemand2` → Non-Wage Benefits, Quasi-fixed Costs, Things Explained, Work Sharing |
| `ch09` | Labour Demand in Global Markets | `ldemand1` → Globalization and Offshoring |
| `ch10` | Labour Demand and Technology | **new** |
| `ch11` | Competitive Labour Markets | `lmarket` → Introduction, Competitive Firms, Imperfect Competition, Math of Equilibrium |
| `ch12` | Imperfectly Competitive Labour Markets | `lmarket` → Monopsony, Minimum Wages |
| `ch14` | Human Capital Theory | `hcapital` (whole) |
| `ch15` | Wage Differentials Among Diverse Population Groups | `discrim` (whole) |

The three dropped-by-the-authors sections (non-wage benefits, household production,
work sharing) are **carried forward** into `ch08`, `ch06`, and `ch08` respectively.
Keeping them is the reversible choice; cutting can happen any time.

Gaps are marked in the decks with a `TODO` callout so they can be found with
`grep -rn "TODO" slides/`.
