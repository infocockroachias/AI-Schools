# PRATIMAI · AI Handouts — Downloads

All files are also available in the web app (`/` route) with online preview and one-click download buttons.

## Student handouts (print-ready PDF, A4)

| File | Class | Level | Pages |
|---|---|---|---|
| `PRATIMAI_AI_Handout_Class6_AI_Around_Me.pdf` | 6 — "AI Around Me" | Level 1 · NOTICE | 47 |
| `PRATIMAI_AI_Handout_Class7_How_Machines_Learn.pdf` | 7 — "How Machines Learn" | Level 2 · SORT & PREDICT | 56 |

**Machiatto edition** — both books are typeset with the Machiatto template
(MoKa Reads publication specification): title page, license, acknowledgements,
preface, contents, then chapters opening with a summary and a mini table of
contents, with mirrored running footers. Body text is set 10 % larger than the
previous edition for Classes 6–7 readers. Same 20 + 17 unplugged missions,
same formative-only assessment, and never any solutions beside a task (short
answer hints live only at the very back of the Class 7 book).

## Editable Typst sources

- `PRATIMAI_AI_Handout_Class6_typst_source.zip` — main.typ + template.typ (Machiatto design system) + front.typ + 6 content modules + fonts
- `PRATIMAI_AI_Handout_Class7_typst_source.zip` — same, extended with scatter / line-graph / pie-chart primitives

Rebuild either book with:

```
typst compile --font-path fonts main.typ main.pdf
```

(The Machiatto and Suboutline packages download automatically from the Typst
package registry on first compile.)

## Reference

- `PRATIMAI_Curriculum_Spec_Classes_6-10.txt` — the full PRATIMAI common AI curriculum spec (Classes 6–10): board alignments, chapter tables, outcome codes, task banks, misconceptions, assessment philosophy.
