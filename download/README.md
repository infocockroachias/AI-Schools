# PRATIMAI · AI Handouts — Downloads

All files are also available in the web app (`/` route) with online preview and one-click download buttons.

## Student handouts (print-ready PDF, A4)

| File | Class | Level | Pages |
|---|---|---|---|
| `PRATIMAI_AI_Handout_Class6_AI_Around_Me.pdf` | 6 — "AI Around Me" | Level 1 · NOTICE | 49 |
| `PRATIMAI_AI_Handout_Class7_How_Machines_Learn.pdf` | 7 — "How Machines Learn" | Level 2 · SORT & PREDICT | 59 |
| `PRATIMAI_AI_Handout_Class8_Build_the_AI_Cycle.pdf` | 8 — "Build the AI Cycle" | Level 3 · BUILD THE CYCLE | 63 |
| `PRATIMAI_AI_Handout_Class9_The_Logic_Under_the_Magic.pdf` | 9 — "The Logic Under the Magic" | Level 4 · REASON | 65 |

**Machiatto edition** — all four books are typeset with the Machiatto template
(MoKa Reads publication specification): title page, license, acknowledgements,
preface, contents, then chapters opening with a summary and a mini table of
contents, with mirrored running footers. Body text is set 10 % larger than the
first edition for student readers. The unplugged rule holds everywhere: 20 +
17 + 17 + 21 paper missions, formative-only assessment, and never any
solutions beside a task (short answer hints live only at the very back of
each book).

**Class 8 — "Build the AI Cycle" (Level 3):** the AI project cycle and 4Ws
problem statements, the Plant Doctor walk-through, data guest lists, sampling
and consent, a nearest-neighbour classifier run with a ruler, accuracy
arithmetic, no-code tool matching, next-word guessing and hallucination
hunts, the Responsible-Use Court and a full AI Project Proposal capstone with
peer-review gallery and a budget-optimisation finale.

**Class 9 — "The Logic Under the Magic" (Level 4):** the 4Ws canvas,
stakeholder and system maps; data literacy with the misleading-graph gallery;
the mathematics under the machine — mean/median/mode/spread, probability dice
labs, a line of best fit drawn by hand, k-nearest-neighbour votes, and
pattern-to-rule algorithms; a next-word generator built on paper; deepfakes
and the four-move Verify-It routine — closing on an SDG-linked AI brief with
an ethics review panel and a flowchart trace.

## Editable Typst sources

- `PRATIMAI_AI_Handout_Class6_typst_source.zip` — main.typ + template.typ (Machiatto design system) + front.typ + 6 content modules + fonts
- `PRATIMAI_AI_Handout_Class7_typst_source.zip` — same, extended with scatter / line-graph / pie-chart primitives
- `PRATIMAI_AI_Handout_Class8_typst_source.zip` — same, extended with the nearest-neighbour plot and project-cycle diagram
- `PRATIMAI_AI_Handout_Class9_typst_source.zip` — same, extended with the nearest-neighbour plot and decision-flowchart primitives

Rebuild any book with:

```
typst compile --font-path fonts main.typ main.pdf
```

(The Machiatto and Suboutline packages download automatically from the Typst
package registry on first compile. Typst CLI 0.15.x recommended.)

## Reference

- `PRATIMAI_Curriculum_Spec_Classes_6-10.txt` — the full PRATIMAI common AI curriculum spec (Classes 6–10): board alignments, chapter tables, outcome codes, task banks, misconceptions, assessment philosophy.
- `INSTRUCTIONS.md` (repository root) — the standing rulebook: template + typography, the mandatory per-page whitespace audit, rebuild commands, git discipline and content invariants.
