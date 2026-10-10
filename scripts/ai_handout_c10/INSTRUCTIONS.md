# PRATIMAI AI Handouts — Standing Instructions

This file is the working rulebook for every handout in this repository
(`class6-ai-around-me/`, `class7-how-machines-learn/`, `class8-build-the-ai-cycle/`,
`class9-the-logic-under-the-magic/`, `class10-decide-evaluate-design/` and all
future levels).
Every agent or contributor who edits the books MUST follow it.

## 1. Template & typography (fixed)

- All handouts are typeset with **Typst** on the **Machiatto template**
  (`typst init @preview/machiatto:0.2.0`), which implements the MoKa Reads
  publication specification: title page → license → acknowledgements → preface
  → TOC → chapters (summary + minitoc) → back matter.
- Our custom layer (`template.typ` in each class folder) keeps the PRATIMAI
  palette (teal `#0F4C5C` + amber `#E36414`) and the approved fonts
  (**Baloo 2** for display, **Nunito** for text). Do not change the fonts.
- Base font size is **10.4 pt × 1.1 = 11.5 pt** (the approved +10% bump for
  student readers). Any new component must use the same `× 1.1` scale.
- Series levels (from the curriculum spec): Class 6 NOTICE · Class 7 SORT &
  PREDICT · Class 8 BUILD THE CYCLE · Class 9 REASON · Class 10 EVALUATE &
  DESIGN. Page budgets in the spec are targets; the approved rule is that
  pages may be extended to satisfy the whitespace rule below.

## 2. Page-balance rule (mandatory visual audit)  ⚠️ KEY RULE

> **No page may ship with large empty/white space.** Before ANY update is
> committed, every single page of EVERY handout (this includes Class 8 and
> Class 9 and all future books) is inspected visually and programmatically,
> and any page that looks empty is filled with meaningful content (never
> with decoration alone).

Concretely, the release check is:

1. Render every page to PNG (`pdftoppm -png -r 100 main.pdf pg`).
2. Run the fill-ratio audit (`scripts/run_audit_c8.py <tag> <pdf>` in the
   workspace; `whitespace_audit2.py` does the pixel work):
   - flag any page whose **content fill < 70%** of the usable area;
   - flag any page with a **mid-page vertical gap > ~45 mm**.
3. Open and visually check every flagged page (and spot-check the rest).
4. Fix under-filled pages with **purposeful content**, in this order of
   preference:
   - learner activity: drills, mini-quizzes, predict-then-check prompts,
     write-in tables (these are workbooks — writing space beats prose);
   - reflection: `chapter-checkpoint()`, `case-journal()` strips;
   - knowledge: "detective's note" explainers, worked examples, tip strips;
   - front/back matter: licence-in-plain-words tables, box legends,
     hint logs, closing "series so far" pages.
5. Re-render and re-audit until **no page is below ~70% fill** (chapter-tail
   and closing pages with a journal strip may sit at 62–70%).
6. Re-run the QA gate for EVERY book touched:
   `python3 qa_machiatto.py c6` / `c7` / `c8` / `c9` / `c10` — each must report
   **16/16 PASS** (metadata, page size, fonts embedded, no blank pages, no
   margin overflow, no code leaks, all task codes, all vocabulary, minitoc
   per chapter, component presence).
7. When a layout change strands a section intro on a near-empty page, do not
   fight the flow — fill the stranded page with purposeful content, or (Class
   10's approach) allow `task()` to break across pages. Never leave a page
   below 70% fill just because "the next block is unbreakable".

## 3. Rebuild commands

```bash
# Class 6
cd class6-ai-around-me/src
typst compile --font-path fonts main.typ main.pdf

# Class 7
cd class7-how-machines-learn/src
typst compile --font-path fonts main.typ main.pdf

# Class 8
cd class8-build-the-ai-cycle/src
typst compile --font-path fonts main.typ main.pdf

# Class 9
cd class9-the-logic-under-the-magic/src
typst compile --font-path fonts main.typ main.pdf

# Class 10
cd class10-decide-evaluate-design/src
typst compile --font-path fonts main.typ main.pdf

# Re-render every HTML visual (only when an HTML source changed)
python3 scripts/visuals_html/shot.py            # workspace path; see §6
```

Typst CLI: `~/.local/bin/typst` (0.15.1). Packages `machiatto 0.2.0` and
`suboutline 0.3.0` are cached after the first compile.

## 4. Git discipline (standing rule)

- Repo: `https://github.com/infocockroachias/AI-Schools.git` (branch `main`).
- **Every** update — content fix, new class, template tweak, webapp change —
  is committed AND pushed before the task is considered done.
- Commit message style: one line, specific ("Add Class 8 and Class 9
  machiatto handouts with whitespace audit", not "update").

## 5. Content invariants (do not break)

- Fully **unplugged**: no task may require a device, account, photo, voice
  recording or personal information.
- Formative only: answers never print beside a task; hints live at the back
  ("for checking, never for copying").
- Vocabulary budgets (Word Power terms per book): Class 6 = 10 · Class 7 = 14
  · Class 8 = 16 · Class 9 = 20 · Class 10 = 24. New terms need a
  curriculum-spec change, not a casual addition.
- Task codes are per class: `T8-01…T8-17` (17 tasks), `T9-01…T9-21`
  (21 tasks). Every code must appear exactly where its task lives.
- The Question-Habit questions are the spine of the series and GROW with the
  readers: Class 6-7 "How do I know? · What is missing? · Who made this?";
  Class 7+ adds "What is the trick here?"; Class 8 adds "Who is missing?";
  Class 9 adds the analyst's suffix "Compared to WHAT?". Keep them recurring.
- Mastery language: Classes 6-8 use Beginning · Growing · Secure · Shining;
  Classes 9-10 use Emerging · Developing · Proficient · Advanced.

## 6. Visual pipeline rule (HTML-first) ⚠️ KEY RULE

> **Books must carry real visuals — flowcharts, mind maps, infographics —
> and every visual must be replaceable by an AI-generated image later.**

- Visuals are built **HTML-first**: one self-contained HTML file per visual in
  `scripts/visuals_html/` (brand fonts via local `@font-face`, PRATIMAI
  palette, `#root` element), rendered to PNG with Playwright
  (`python3 scripts/visuals_html/shot.py`, device-scale-factor 2), embedded
  with the `figure-visual()` component from each book's `template.typ`.
- **Every visual is registered in `visualgeneration.md`** (repo root + a copy
  in each class source folder): side heading = class → chapter → page name;
  entry = file name, HTML source, verbatim caption, aspect ratio, and a
  DETAILED AI regeneration prompt (palette hexes, layout, exact label text).
  To swap a visual for an AI image later: generate at the recorded aspect
  ratio, save under the SAME file name in the book's `visuals/` folder,
  recompile. No Typst edits required.
- Structural-diagram discipline (charts skill iron laws): pale fills +
  saturated borders/text only, zero overlap, hierarchy in 3+ visual weights,
  flowcharts phased-vertical with same-hue progression, mind maps with clean
  elbow connectors, PDF background `#FDFBF7` to match the page.
- After any visual change: re-run the whitespace audit — images reflow pages.

## 7. Language-tier rule (age-appropriate register)

> **Do NOT reuse the Class 6/7 voice in the senior books.** Each level owns
> its register, and the self-identity word is part of the design:

| Class | Register | Self-identity | Banned in this book |
|---|---|---|---|
| 6-7 | playful detective adventure | Detective / investigator | formal jargon without story |
| 8 | builder register (one notch up) | **Builder** | "grown-ups" (→ adults), drill label `BUILDER DRILL` |
| 9 | analyst register | **Analyst** | `ANALYST DRILL` labels, no detective voice |
| 10 | designer/evaluator register (most precise) | **Designer** | exam-cram tone; stays reasoning-first |

Series devices that survive everywhere: "mission" for task, case-journal,
chapter clues, the growing Question-Habit set. Task names from the curriculum
spec (e.g. T8-04 "Data Detective") are kept verbatim regardless of register.

## 8. Hands-on rule

> **Every book carries visible hands-on labs.** Physical/manual tasks carry
> `hands: true` in `task()`, which prints the amber **HANDS-ON LAB** marker
> in the mission header; the preface legend explains it. Current labs:
> Class 8 = T8-02, T8-05, T8-08, T8-10, T8-11 · Class 9 = T9-04, T9-09,
> T9-11, T9-12, T9-13, T9-16 · Class 10 = T10-02, T10-05, T10-07, T10-08,
> T10-10, T10-11, T10-14, T10-19. New physical tasks must be tagged.
- Component placement per chapter (page-balance kit): every chapter opens
  with `opener-extras` (words-you'll-meet + warm-up + toolkit) and closes
  with clues note + `chapter-checkpoint` + `case-journal`.
