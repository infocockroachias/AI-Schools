# PRATIMAI AI Handouts — Standing Instructions

This file is the working rulebook for every handout in this repository
(`class6-ai-around-me/`, `class7-how-machines-learn/` and all future levels).
Every agent or contributor who edits the books MUST follow it.

## 1. Template & typography (fixed)

- Both handouts are typeset with **Typst** on the **Machiatto template**
  (`typst init @preview/machiatto:0.2.0`), which implements the MoKa Reads
  publication specification: title page → license → acknowledgements → preface
  → TOC → chapters (summary + minitoc) → back matter.
- Our custom layer (`template.typ` in each class folder) keeps the PRATIMAI
  palette (teal `#0F4C5C` + amber `#E36414`) and the approved fonts
  (**Baloo 2** for display, **Nunito** for text). Do not change the fonts.
- Base font size is **10.4 pt × 1.1 = 11.5 pt** (the approved +10% bump for
  Class 6–7 readers). Any new component must use the same `× 1.1` scale.

## 2. Page-balance rule (mandatory visual audit)  ⚠️ KEY RULE

> **No page may ship with large empty/white space.** Before ANY update is
> committed, every single page of BOTH handouts is inspected visually and
> programmatically, and any page that looks empty is filled with meaningful
> content (never with decoration alone).

Concretely, the release check is:

1. Render every page to PNG (`pdftoppm -png -r 100 main.pdf pg`).
2. Run the fill-ratio audit (`scripts/run_audit.py` in the workspace):
   - flag any page whose **content fill < 70%** of the usable area;
   - flag any page with a **mid-page vertical gap > ~45 mm**.
3. Open and visually check every flagged page (and spot-check the rest).
4. Fix under-filled pages with **purposeful content**, in this order of
   preference:
   - learner activity: drills, mini-quizzes, predict-then-check prompts,
     write-in tables (these are a workbook — writing space beats prose);
   - reflection: `chapter-checkpoint()`, `case-journal()` strips;
   - knowledge: "detective's note" explainers, worked examples, tip strips;
   - front/back matter: licence-in-plain-words tables, box legends,
     word-hunt dictionaries, hint logs.
5. Re-render and re-audit until **no page is below ~70% fill** (chapter-tail
   pages with a journal strip may sit at 65–70%).
6. Re-run the QA gate: `python3 qa_machiatto.py c6` and `python3 qa_machiatto.py c7`
   — both must report **16/16 PASS** (metadata, page size, fonts embedded,
   no blank pages, no margin overflow, no code leaks, all task codes,
   all vocabulary, minitoc per chapter, component presence).

## 3. Rebuild commands

```bash
# Class 6
cd class6-ai-around-me/src
typst compile --font-path fonts main.typ main.pdf

# Class 7
cd class7-how-machines-learn/src
typst compile --font-path fonts main.typ main.pdf
```

## 4. Git discipline (standing rule)

- Repo: `https://github.com/infocockroachias/AI-Schools.git` (branch `main`).
- **Every** update — content fix, new class, template tweak, webapp change —
  is committed AND pushed before the task is considered done.
- Commit message style: one line, specific ("Fill white space: openers +
  checkpoints in both handouts", not "update").

## 5. Content invariants (do not break)

- Fully **unplugged**: no task may require a device, account, photo, voice
  recording or personal information.
- Formative only: answers never print beside a task; hints live at the back
  ("for checking, never for copying").
- Vocabulary budget: Class 6 = 10 Word Power terms, Class 7 = 14. New terms
  need a curriculum-spec change, not a casual addition.
- The three Question-Habit questions ("How do I know? · What is missing? ·
  Who made this?" — Class 7 adds "What is the trick here?") must keep
  appearing throughout; they are the spine of the series.
