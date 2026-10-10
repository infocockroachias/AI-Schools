# Worklog

---
Task ID: 1
Agent: Super Z (main agent)
Task: Build the PRATIMAI Class 6 "AI Around Me" handout as a professionally designed, print-ready PDF using Typst, per the uploaded curriculum file (Pasted Content_1791297608730.txt). Validate design with VLM (visual inspection + scoring) and iterate until professional print quality (≥8/10).

Work Log:
- Read full 485-line curriculum spec; extracted Class 6 contract: 36pp budget (cap 48), big question, 5 chapters, 10 outcomes (6.U1–6.T1), 20 tasks (T6-01–T6-20), ≤10 vocabulary terms, 5 misconceptions, formative-only assessment, fully unplugged.
- Loaded pdf skill (routing compliance); user-mandated Typst toolchain overrides skill's ReportLab/Playwright briefs; applied skill's QA gates (pdf_qa.py) and design discipline.
- Clarified design via 8 questions: Scholar Teal palette (#0F4C5C/#E36414), native Typst diagrams, bold geometric cover, generous workbook write-in space, warm rounded sans, detective-adventure tone, ~36pp, "Note to grown-ups" extra.
- Installed Typst 0.15.1 CLI (GitHub binary) + typst-py; downloaded Nunito (variable), Nunito-Italic, Baloo 2 (variable) from google/fonts; Carlito as system fallback.
- Built modular Typst project at /home/z/my-project/scripts/ai_handout/: template.typ (design system: palette, chips, task boxes, Word Power cards, myth busters, self-checks, Think & Ink, home-link, chapter openers, dtable, pixel-grid, bar charts, confidence line, header/footer with chapter state), main.typ + 7 content modules (front matter, ch1–ch5, back matter).
- Wrote full student-facing content: cover with pixel-heart motif, how-to-use + grown-ups note, journey map (5 strands U/D/L/W/R + stepper + outcome checklist), 5 chapters with all 20 curriculum tasks + 4 extra "Detective Drill" practice strips, 5 myth-buster boxes, 10-term glossary with "use it in my own sentence" lines, progress tracker + certificate page.
- VLM validation loop (8+ iterations, rendered PNGs inspected visually each round):
  1. Cover: fixed font-fallback diagnosis (Nunito OK — was low-res misread), pixel-heart dot artifacts (solid fill), bottom-panel overflow (92→108mm + spacing), strand labels clipping.
  2. Fixed Typst set-page module-scoping: cover's header:none persisted document-wide → extracted page-header/page-footer, re-assert set page between every module include.
  3. Fixed literal-text leaks: bare v()/text() calls in markup; bare dtable/grid/writebox calls after over-eager seds — audited all call sites by code-block vs markup context; final leak scan = 0.
  4. Fixed state-in-header edge cases, counter(page).get().first(), type() comparisons (Typst 0.15 type objects, not strings), arguments.pos().
  5. Expanded 28→35→34pp to budget: bigger write-in areas, 6-row pattern hunt, chart-reading drill with drawn bar chart, algorithm trace drill, kind-reply drill, passphrase rating drill, chapter recap boxes, pattern gallery, survey roles/manners, glossary sentence lines.
  6. Fixed T6-08 pixel-grid overflow (cell 6.8→6.0mm), T6-13 statement quotes, invisible white stars → teal-soft.
- Final QA: pdf_qa.py — 10/10 core checks PASS (metadata, fonts embedded, no blank pages, no overflow, fill ratios, full-bleed cover, table centering); 12 warnings all benign (CJK punctuation rules misfiring on English quotes; intentional asymmetric cover margin).
- Final VLM scorecard (goal ≥8): typography 9, layout/grid 9, palette 9, components 9, whitespace 8.5, print-readiness 9, cover 9, curriculum fidelity 10 → **9.1/10 — GOAL MET**.

Stage Summary:
- Deliverables: /home/z/my-project/download/PRATIMAI_AI_Handout_Class6_AI_Around_Me.pdf (34pp A4, 530KB, vector, fonts embedded, metadata set) + PRATIMAI_AI_Handout_Class6_typst_source.zip (editable Typst source + fonts).
- Source of truth: /home/z/my-project/scripts/ai_handout/ (main.typ + template.typ + ch0–ch6 modules + fonts/). Rebuild: typst compile --font-path fonts main.typ main.pdf.
- Curriculum compliance: all 20 tasks T6-01–T6-20, outcomes 6.U1–6.T1 mapped, 10-term vocabulary budget, 5 misconceptions addressed, Quick-Win success-first tasks, no solutions beside tasks, fully unplugged, no brands/accounts, formative 4-level rubric, "Note to grown-ups".
- Key Typst lessons (for future class handouts): set page rules are module-scoped (re-assert per include); type() returns type objects; code blocks need semicolons between content expressions; bare function calls in markup print literally; typst-py/CLI both usable, poppler for page rendering.

---
Task ID: 2
Agent: Super Z (main agent)
Task: One more revision — remove the "AI-generated template" look (user: book reads like AI slop; Think & Ink design = typical Claude output). Fix chrome only, do not disturb typography, boxes/tables structure, content, or pagination.

Work Log:
- Diagnosed AI-tells in template/modules: rounded pill chips everywhere (task code/mode/min badges, cover stamps, myth/home-link/case-closed labels), rounded cards with one-side accent bars, teal-faint task header strips, solid-teal table headers + zebra rows, page number in teal rounded box, circle-numbered section heads, decorative transparent circles on openers, single-rounded-corner cover panel.
- Discovered body text actually renders in Libertinus Serif (set text rule did not survive module scoping; only Baloo display + Nunito-ExtraLight caps resolved) — user approves this look, so fonts left untouched.
- Redefined design language as classic print workbook (template.typ, 17 edits): chip() → Baloo tracked-caps label (no pill); task() → hard 2.2pt teal top rule + amber code + teal Baloo title + "PAIR · 10 MIN" tracked meta, hairline via body-box top stroke (NOT standalone line — standalone line inherits ~17pt par spacing and caused 4 chapter-end spillovers, 34→35pp); myth()/thinkink()/note()/selfcheck() → white or faint panels with 2.5pt left slabs + square marker + tracked caps labels; dtable() → white header with teal-deep text + 1.1pt teal rule under header, zebra removed; footer folio → plain Baloo numeral; sec() → amber number + teal title + trailing hairline; chapter-opener → squared band, no decorative circles, outcomes as plain white caps; barchart bars squared.
- deai_radius.py: squared all 84 rounded corners across ch0–ch6 modules (circle() protected); hand-converted remaining inline chips (STORY n, CARD A/B/C, CASE CLOSED, chapter-clues boxes) to Baloo caps; rewrote "How to read a mission" legend to demonstrate new header; cover chip → amber tracked caps; wording chips→labels.
- Fixed pagination regression by replacing standalone hairline with box top-stroke; recompiled: 34 pages, pagination diff vs approved version = 0.
- Verified: visual page inspection (cover, how-to, openers, tasks, Think & Ink, myth, self-check, recap, drill tables, chart, certificate); pdf_qa.py 10/10 PASS (same benign warnings as before: CJK punct rule on English quotes, intentional cover asymmetry); pdffonts unchanged; literal-leak scan 0.

Stage Summary:
- Deliverables refreshed: download/PRATIMAI_AI_Handout_Class6_AI_Around_Me.pdf (34pp, 533KB) + PRATIMAI_AI_Handout_Class6_typst_source.zip.
- New chrome system: hard edges, hairline rules, left accent slabs (amber = write, teal = info), Baloo tracked-caps labels, editorial tables, plain folio. Content, fonts, pagination untouched.
- Key lesson: standalone line()/rule elements in Typst flow inherit paragraph spacing (~0.85em both sides) — attach rules as box/table strokes instead.

---
Task ID: 3
Agent: Super Z (main agent)
Task: Build the PRATIMAI Class 7 "How Machines Learn" handout (40pp spec target) with the approved de-AI-slop design system, then serve all deliverables (both class PDFs, both Typst source zips, curriculum spec) through a Next.js web app with online preview and download buttons.

Work Log:
- Re-read curriculum spec: extracted Class 7 contract — "How Machines Learn", Level 2 SORT & PREDICT, ages 12-13, 40pp target (cap 48), 7 chapters, 9 outcomes (7.U1-7.T1), 17 tasks (T7-01-17), 14-term vocab budget, 5 misconceptions, formative-only, fully unplugged.
- Copied Class 6 project to scripts/ai_handout_c7 (Class 6 untouched); reinstated Typst 0.15.1 CLI (environment reset).
- Extended template.typ: Class 7 header/metadata; barchart-example gained ymin/ystep/labsize (truncated-axis teaching chart); NEW scatter-example (pre-plotted regression dots), linechart-example (curve polyline), linechart-blank, piechart-example (polygon-fan pie), pie-blank (10-wedge fraction circle), pie-legend.
- Typst 0.15 curve lessons learned the hard way: path() removed — use curve(); curve.line points are ABSOLUTE relative to the curve origin (not segment-start-relative); stroke on thin fan triangles eats fills (draw fan stroke-free, add separators after).
- Wrote all 7 Class 7 content modules: cover (pixel trend-arrow, Level 2 badge), how-to-use + grown-ups note, journey map with 10 "I can" statements; ch1 three learning jobs (T7-01 Sorting Machine, T7-02 Price Predictor scatter, T7-03 Find the Groups, T7-04 Practice vs Exam, T7-05 Too Few Examples) + if-then vs learning table + pattern-to-rule drill; ch2 camera/reader/recommender (T7-06 Be the Camera number grids + round 2, T7-07 Word Counter spam tally, T7-08 People Like You likes table, T7-09 Translate the Tricky idioms) + design-a-filter drill + Spam Hunt home link; ch3 AI at Work in India + charts (T7-10 One Problem Many Data, T7-11 Chart Detective with honest/truncated/110%-pie trio, T7-12 Benefit-Limit Cards) + chart-choice and read-the-pie drills + Chart Hunt home link; ch4 bias/fakes/responsibility (T7-13 Uniform Suggester, T7-14 Fake Check 3, T7-15 Who Is Responsible) + Talent Finder case + spot-the-missing + worked checks + fairness toolkit + home link; ch5 capstone T7-16 Class Survey Machine in two parts (collect/chart -> predict/check + report card), weather-regression drill, T7-17 Reflection Passport + gallery walk + exit ticket; back matter with 14-term glossary, oath, ANSWER HINTS strip (back-matter only per spec), outcome tracker, certificate, Class 8 teaser.
- Pagination engineered to exactly 40pp (spec target): chapter clues recap boxes added to all 5 chapters; over-tall tasks split (T7-16 Part 1/Part 2, T7-06 + Round 2 strip) to fix one-page overflow with footer overlap; fixed inline code-mode text concatenation bugs (v() separators).
- QA gate qa_c7.py: 11/11 PASS (metadata, 40pp A4, fonts embedded, no blank pages, no margin overflow, no literal code leaks, all 17 task codes, all 14 vocab terms, answer hints only on back-matter page). Visual page-by-page inspection: cover, openers, all tasks, all charts (scatter/line/pie render correct), glossary, certificate.
- Deliverables packaged: download/PRATIMAI_AI_Handout_Class7_How_Machines_Learn.pdf (40pp, 624KB, vector) + PRATIMAI_AI_Handout_Class7_typst_source.zip; download/README.md rewritten.
- Built Next.js web app (fullstack-dev skill): public/files/ hosts both PDFs, both source zips and the curriculum spec; src/lib/library.ts metadata; src/components/file-library.tsx (client) with Scholar-Teal themed cards, PDF preview dialog (native iframe viewer + open-in-new-tab + save-locally), download buttons everywhere incl. a "grab everything" strip; page.tsx (server) reads real file sizes from disk; updated layout metadata; footer sticks to bottom.
- Verified with agent-browser: desktop render clean, Class 7 PDF opens in preview dialog ("1 / 40"), all file URLs HTTP 200 with correct MIME (application/pdf, application/zip), mobile 390px stacks correctly with sticky footer, no console errors after fixing missing LIBRARY import.

Stage Summary:
- Class 7 handout: /home/z/my-project/download/PRATIMAI_AI_Handout_Class7_How_Machines_Learn.pdf (40pp, QA 11/11) + editable source zip. Class 6 deliverables untouched.
- Web app: Next.js 16 file library at / — preview + download for 5 files (2 PDFs, 2 Typst zips, curriculum spec); source in /home/z/my-project/src.
- Key lessons: Typst 0.15 curve API semantics; breakable:false tasks taller than a page must be split manually; code-block content expressions concatenate inline (use v() or bracket blocks); agent-browser golden-path verification caught a missing import before delivery.
---
Task ID: 4
Agent: Super Z (main agent)
Task: Re-typeset BOTH handouts (Class 6 + Class 7) on the machiatto template (typst init @preview/machiatto:0.2.0), +10% font size for Classes 6-7 readers, push all project files to github.com/infocockroachias/AI-Schools with the provided token; from now on every update is committed and pushed.

Work Log:
- Initialized machiatto 0.2.0 (pulls suboutline 0.3.0); studied its MoKa Reads spec: title page -> license -> acknowledgements -> preface -> TOC -> chapters (summary + minitoc), mirrored chapter/page footer, 1pt-stroke radius-5pt components, def()/note()/info-box().
- Rewrote template.typ (both projects) as a machiatto edition: moka-doc() implements the spec with PRATIMAI palette/fonts; moka-nums() gives "1." chapters and "1.1" sections (no trailing dots); level-1 headings centered per MoKa spec; chapter-opener() now emits a real level-1 heading + GUIDING QUESTION box + summary + missions/outcomes/strands meta + minitoc() + pagebreak; sec() is now a real level-2 heading (auto-numbered) so TOC/minitoc work; Word Power cards literally use machiatto's def(); acknowledgement() used for the ack page; all task/myth/selfcheck/thinkink/note/homelink boxes restyled to machiatto anatomy; ALL sizes x1.1 (base 10.4 -> 11.5pt), ruled-line leads x1.1.
- convert_machiatto.py: scaled sizes/leads, machiatto-ized content box borders (line-soft 0.7/0.8pt + radius 0 -> ink-soft 0.9pt + radius 5), converted back-matter chap.update display headings to unnumbered level-1 headings.
- New front.typ per class: license page (CC BY-NC-SA 4.0 + machiatto-style info table + typesetting credit), acknowledgements (machiatto cream box), preface (how-to-use + mission anatomy + question habit + grown-ups note + journey map with strands/stepper/ican).
- Chapter openers enriched with new summary paragraphs + mission ranges (5 per book).
- Class 6: 47pp; Class 7: 56pp (extended budget OK per user). Fixed during visual QA: orphaned myth/thinkink (ch1 reorder, removed stale pagebreak in ch3), journey-map thread strip wrap, ican orphan, glossary card spacing, ch5 c6 missing 5.1 heading (anchor), c7 pie-drill squeezed column (explicit 44mm column), wordpower def() splitting across pages (now unbreakable), 5 pre-existing literal "text(size:...)" leaks in chapter-clues boxes (now #text), Class 8 teaser orphan on p57 (back-matter tightened to 56pp).
- Typst lessons: heading fields are it.numbering (pattern) not it.numbers - use counter(heading).at(it.location()); params with defaults are keyword-only; datetime.display("[year]"); top-level name resolution is lexical (define before use even in function bodies).
- QA: new qa_machiatto.py (parameterized c6/c7): metadata, A4, fonts embedded, no blank pages, no margin overflow, no literal leaks (extended patterns), all task codes (T6-01..20 / T7-01..17), all vocabulary terms, minitoc on all 5 chapters, component presence. Both books 16/16 PASS. Full visual pass via 6-up contact sheets.
- Repo: ai-schools-repo/ (README, class6-ai-around-me/, class7-how-machines-learn/, curriculum/, webapp/) — git init, snapshot commit (Scholar Teal state), machiatto commit, webapp metadata commit; pushed to https://github.com/infocockroachias/AI-Schools.git main with token auth (token only in local .git/config). STANDING RULE: every future update gets committed and pushed.
- Deliverables refreshed in download/ + webapp public/files/: Class6 47pp PDF (678KB), Class7 56pp PDF (734KB), both typst source zips (now with front.typ, no ch0_front); download/README.md rewritten; webapp library cards updated (page counts + "Machiatto edition"); verified dev server serves new PDFs (200, correct sizes) and home page shows updated metadata.

Stage Summary:
- Both handouts are now machiatto-edition books: c6 = 47pp (16/16 QA), c7 = 56pp (16/16 QA), +10% type, MoKa Reads front matter, minitoc per chapter, mirrored footers.
- GitHub: infocockroachias/AI-Schools main @ 43222cf (3 commits: snapshot, machiatto edition, webapp metadata).
- Web app live with updated cards + files. Source of truth: scripts/ai_handout (c6), scripts/ai_handout_c7 (c7); rebuild: typst compile --font-path fonts main.typ main.pdf.
- Standing rule recorded: all future updates are committed + pushed to the AI-Schools repo.
---
Task ID: 5
Agent: Super Z (main agent)
Task: Inspect and visual-audit EVERY page of both handouts (Class 6 + Class 7), fill all large white/empty space with meaningful content, add the whitespace rule to the instructions md file, commit and push everything to GitHub.

Work Log:
- Built whitespace_audit.py + whitespace_audit2.py (render pages via pdftoppm, compute per-page fill ratio excluding footer band, internal mid-gaps) and run_audit.py; first pass flagged 22 under-filled pages in c6 (<70% fill) and 21 in c7.
- Visual audit via labelled 6-up contact sheets mapped every flagged page to its role (chapter openers ~45%, chapter-end pages 25-45%, front matter, TOC, answer-key tails).
- Template page-balance kit added to BOTH projects: opener-extras (Words-you'll-meet chips + warm-up write-in + toolkit strip), chapter-checkpoint (3-question no-peek quiz), case-journal (dashed journal strip), legend-card/box-legend (TOC legend), moka-doc extended with toc-extras / cover-questions / ack-meta params, cover enriched (question-habit line + CASE OPENED/CLOSED stamp strip), acknowledgements decorated (pixel-heart + series + book-in-numbers strip).
- Front matter enriched both books: licence-in-plain-words MAY/MAY NOT table + extended typesetting credits; 3-paragraph acknowledgements; grown-ups page extended with "Four ways to help" cards, "If your child asks" FAQ, "Signs of growth worth praising" strip.
- Class 6 (47 -> 49pp): per-chapter fillers — 60-second hunt, two-kinds-of-data note, tally drill, camera-speak note, bonus secret-picture round, pattern-or-coincidence drill, Guess-My-Rule round 2, data-sort drills, passphrase crack-time table + passphrase gym + strange-word generator, emotion-words drill, 7th footprint hop, survey predict-drill + recruit-your-five strip, letter to Class 7, chapter checkpoints 3+4, journals, glossary tightened + NEW "My detective's dictionary" page (10 blank cards + word-hunt + dictionary habit).
- Class 7 (56 -> 59pp): chapter summaries + opener extras added to all 5 openers; train/test drills (spot-the-memoriser, train-and-test-in-my-week), three-machines table, translator's tip + idiom rescue kit + 4th idiom, week-of-machines table, honest-chart promise, six machine parts + choose-the-question + roles strip, regression-near-home drill, passport stamping rubric, machine maintenance log, fairness pledge (signed), flip-back strip, checkpoints 1-5 + journals, hints expanded + hint log + postcard to Class 8; fixed pre-existing "(eavy" typo in T7-16 training card.
- Typst bug class handled throughout: unclosed markup brackets in text(...)[... ending with ':'] inside code blocks (fix pattern recorded), `#` invalid in code mode, missing commas between content args, @-references (Riya@123/@2015) needing escaping, strong() needing content not int.
- QA: whitespace re-audit converged (c6 worst page 69%, c7 worst 65%, all others >= 70%); qa_machiatto.py 16/16 PASS for c6 (49pp) and c7 (59pp); final visual sweep of covers, front matter, openers, checkpoints, dictionary, hints pages.
- INSTRUCTIONS.md created at repo root (linked from README): machiatto + fonts + 10% scale, MANDATORY per-page whitespace audit rule (<70% fill must be filled with purposeful content), rebuild commands, git discipline, content invariants; copies placed in both typst source folders.
- Deliverables refreshed: download/ PDFs (c6 49pp 800KB, c7 59pp 887KB) + source zips; webapp public/files synced; webapp library.ts metadata updated to 49pp/59pp; download/README.md + repo README-downloads.md page counts fixed.
- GitHub: committed and pushed to infocockroachias/AI-Schools main (38ec0dd "Page-balance audit..." + 48d7d21 "Update download README page counts").

Stage Summary:
- Both handouts are now whitespace-balanced: c6 = 49pp, c7 = 59pp, QA 16/16 each, every page visually inspected and either >= 70% filled or a justified chapter-tail page.
- Standing whitespace rule recorded in ai-schools-repo/INSTRUCTIONS.md and enforced via scripts/run_audit.py + qa_machiatto.py.
- GitHub main @ 48d7d21; all future updates keep being committed + pushed per standing rule.
---
Task ID: 6
Agent: Super Z (main agent)
Task: Build the Class 8 ("Build the AI Cycle") and Class 9 ("The Logic Under the Magic") handouts on the machiatto edition, run the mandatory per-page whitespace audit on both, extend INSTRUCTIONS.md to all classes, refresh deliverables/webapp, and commit+push everything to GitHub (per the "proceed with class 8 and 9" instruction).

Work Log:
- Environment reset recovery: reinstalled Typst 0.15.1 CLI to ~/.local/bin, re-primed machiatto 0.2.0 + suboutline 0.3.0 package cache; fixed a corrupted trailing-junk block in c7 front.typ (c7 re-verified: compiles at 59pp).
- Extracted Class 8/9 contracts from the curriculum spec: c8 = Level 3 BUILD THE CYCLE, 17 tasks T8-01..17, 10 outcomes, 16 vocab, 5 misconceptions; c9 = Level 4 REASON, 21 tasks T9-01..21, 12 outcomes, 20 vocab, 5 misconceptions; mastery language Beginning..Shining (6-8) vs Emerging..Advanced (9-10).
- Created scripts/ai_handout_c8 + ai_handout_c9 from the c7 machiatto base. New components: c8 = knn-example (dual-class dot plot with numbered query circles), cycle-diagram (4-stage loop with dashed arrows); c9 = knn-example + flowchart-trace (START → decision → YES/NO branches → END, native Typst).
- Wrote all Class 8 content: cover/licence/ack/preface/journey map, 5 chapters (project cycle + 4Ws sharpeners, Plant Doctor walk-through, data guest lists/sampling game/consent, nearest-neighbour by hand + accuracy + tool match + paper classifier lab, next-word game + hallucination hunt + responsible-use court + pledge, capstone proposal in 2 parts + peer-review gallery + optimise-it), back matter with 16-term glossary, hints, Class 9 postcard, outcome tracker, Builder's Certificate, closing "series so far" page.
- Wrote all Class 9 content: cover/licence/ack/preface/journey map (12 "I can" statements), 5 chapters (nested AI/ML/DL boxes + 4Ws canvas + stakeholder rings + system maps + rule-vs-learn showdown, data type sort + source audit + misleading graph gallery (truncated-axis pair) + privacy-vs-security + paper dashboard, average lies + likelihood lab + best-fit line by eye + neighbour vote (k=3) + pattern-to-rule, real-or-AI + build-a-next-word-table + balloon debate + Verify-It routine, SDG brief + ethics review panel + flowchart trace), back matter with 20-term glossary, hints, Class 10 postcard, closing page (series/tally/door/imprint/notes/bottle), Analyst's Certificate + badge shelf.
- Typst bug classes fixed during builds: `%` invalid modulo (use calc.rem), `#`-prefixed calls inside code blocks (repeated), raw markup lines inside block({...}) code blocks (wrap in text() or convert to block(...)[markup]), duplicate named args (radius), duplicate filler blocks from partially-applied MultiEdits (deduped via script), string has no .enumerate (barchart-blank needs real label tuple), stray placeholder line with stroke:none.
- Whitespace audits (run_audit_c8.py, per-page fill ratios): c8 went 57pp → 60 → 61 → 62 → 63pp across 6 fill iterations (worst page now 66%, all others ≥70%); c9 went 65pp with 17 flagged pages → converged at 65pp (worst 67%, chapter/closing tails justified). Every flagged page was visually identified on contact sheets and filled with purposeful content: predict-then-check strips, quick-compute drills, role strips, verdict strips, closing series/tally/badge/imprint/notes pages; c9 preface journey page tightened so its 12-line "I can" list no longer spills a 1.5% orphan page.
- QA: qa_machiatto.py extended with c8/c9 configs (page budget widened to 40-66 for the extended books): c8 16/16 PASS, c9 16/16 PASS (metadata, A4, fonts embedded, no blank pages, no margin overflow, no literal leaks, all 17/21 task codes, all 16/20 vocab terms, minitoc per chapter, all components).
- Visual sweeps: final contact sheets of covers, openers, canvas/tables, knn plot, scatter, flowchart, dashboards, back matter — both books render correctly (c8 T8-08 knn page restructured from a squeezed 2-col grid to a vertical stack after a layout bug).
- INSTRUCTIONS.md updated: now covers all four classes (Class 8/9 rebuild commands, extended vocab budgets, per-class task codes, growing Question-Habit set, mastery language split, page-balance kit placement, QA gates for every book); copies placed in both new typst source folders.
- Deliverables: download/PRATIMAI_AI_Handout_Class8_Build_the_AI_Cycle.pdf (63pp, 859KB) + Class9_The_Logic_Under_the_Magic.pdf (65pp, 852KB) + both typst source zips; public/files synced; src/lib/library.ts + repo webapp mirror updated with 4 new cards; download/README.md + repo README updated.
- GitHub: committed and pushed to infocockroachias/AI-Schools main @ 26db3c1 ("Add Class 8 ... and Class 9 ... handouts; whitespace audit rulebook extended..."; 106 files). Webapp verified: c8/c9 PDFs and zips serve HTTP 200 with correct sizes; home page shows the new cards.

Stage Summary:
- Class 8 handout: 63pp, QA 16/16, whitespace-converged — download/PRATIMAI_AI_Handout_Class8_Build_the_AI_Cycle.pdf + editable source zip.
- Class 9 handout: 65pp, QA 16/16, whitespace-converged — download/PRATIMAI_AI_Handout_Class9_The_Logic_Under_the_Magic.pdf + editable source zip.
- INSTRUCTIONS.md is now the four-class rulebook (whitespace rule applies to every book incl. 8/9 and future ones).
- GitHub main @ 26db3c1; standing rule continues: every future update is committed + pushed.
- Key lessons: this MultiEdit implementation applies edits until the first failure (always re-grep for partial application + duplicates after any failed batch); Edit/compile pairs raced twice (never combine Edit+Bash-compile of the same file in one parallel block); unbreakable big tasks (task boxes with plots/tables) strand their section intros — fill the strand, don't fight the flow; closing pages (series-so-far, badge shelf, tally, imprint) are the most reliable filler for last-page orphans.
