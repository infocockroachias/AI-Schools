# AI-Schools · PRATIMAI AI Handouts

Print-ready, fully **unplugged** AI-literacy student handouts for Classes 6–10,
built with [Typst](https://typst.app) on the
[Machiatto](https://typst.app/universe/package/machiatto) (MoKa Reads) template.

| Path | Contents |
|---|---|
| `class6-ai-around-me/` | Class 6 · "AI Around Me" — Level 1 · NOTICE (PDF + Typst source) |
| `class7-how-machines-learn/` | Class 7 · "How Machines Learn" — Level 2 · SORT & PREDICT (PDF + Typst source) |
| `class8-build-the-ai-cycle/` | Class 8 · "Build the AI Cycle" — Level 3 · BUILD THE CYCLE (PDF + Typst source) |
| `class9-the-logic-under-the-magic/` | Class 9 · "The Logic Under the Magic" — Level 4 · REASON (PDF + Typst source) |
| `class10-decide-evaluate-design/` | Class 10 · "Decide, Evaluate, Design" — Level 5 · EVALUATE & DESIGN (PDF + Typst source) |
| `visuals-html/` | HTML sources + PNG renders of every book diagram (flowcharts, mind maps, infographics) |
| `visualgeneration.md` | Visual registry: per-class/chapter/page captions, file names, aspect ratios and detailed AI-regeneration prompts |
| `curriculum/` | PRATIMAI curriculum specification (Classes 6–10) |
| `webapp/` | Next.js file library with in-browser PDF preview + download buttons |

## Building a handout

```bash
cd class6-ai-around-me/typst
typst compile --font-path fonts main.typ main.pdf
```

Requires Typst ≥ 0.13 (tested with 0.15). Fonts (Nunito, Baloo 2) ship in
each `typst/fonts/` directory; the Machiatto + Suboutline packages are pulled
automatically from the Typst package registry on first compile.

## Rules

See **[INSTRUCTIONS.md](INSTRUCTIONS.md)** — the standing rulebook: template + fonts, the mandatory
per-page whitespace audit ("no page below ~70% fill"), QA gates, git discipline and content
invariants for every handout in this repo.

## Design

All handouts follow the MoKa Reads publication specification that the
Machiatto template implements: title page → license → acknowledgements →
preface → table of contents → chapters (each opening with a summary and a
mini table of contents) → back matter, with mirrored running footers.

Typefaces: **Baloo 2** for display, **Nunito** for text — sized 10 % larger
than the base design for student readers. Ink accents: deep teal
`#0F4C5C` + amber `#E36414` on warm paper `#FDFBF7`.

## Web app

```bash
cd webapp
bun install
bun run dev
```

Serves all four PDFs, the editable Typst source bundles and the curriculum spec at
`/` with an online preview dialog and one-click "save locally" buttons.

## License

Handbook content: CC BY-NC-SA 4.0 (see the License page inside each PDF).
Code and Typst sources: MIT.
