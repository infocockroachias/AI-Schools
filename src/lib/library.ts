export type LibraryFile = {
  id: string;
  file: string;
  title: string;
  subtitle: string;
  description: string;
  kind: "pdf" | "zip" | "text";
  meta: string[];
  accent: "teal" | "amber";
};

export const LIBRARY: LibraryFile[] = [
  {
    id: "c6-pdf",
    file: "PRATIMAI_AI_Handout_Class6_AI_Around_Me.pdf",
    title: "AI Around Me",
    subtitle: "Class 6 · Level 1 — NOTICE · Student Handout (PDF)",
    description:
      "The complete 49-page Class 6 case file — Machiatto edition: title page, license, acknowledgements, preface, contents and chapters that open with a summary and mini contents. Inside: rule-followers vs learners, the four kinds of data, patterns and if-then trees, digital-citizen habits and the Neighbourhood AI Investigation — 20 paper missions and a detective certificate.",
    kind: "pdf",
    meta: ["49 pages · A4", "20 missions", "Machiatto edition", "Print-ready"],
    accent: "teal",
  },
  {
    id: "c7-pdf",
    file: "PRATIMAI_AI_Handout_Class7_How_Machines_Learn.pdf",
    title: "How Machines Learn",
    subtitle: "Class 7 · Level 2 — SORT & PREDICT · Student Handout (PDF)",
    description:
      "The complete 59-page Class 7 case file — Machiatto edition: title page, license, acknowledgements, preface, contents and chapters that open with a summary and mini contents. Inside: the three learning jobs (classification, regression, clustering), training vs testing, how machines see, read and recommend, charts and how they lie, bias and responsibility — 17 missions ending in the Class Survey Machine capstone.",
    kind: "pdf",
    meta: ["59 pages · A4", "17 missions", "Machiatto edition", "Print-ready"],
    accent: "amber",
  },
  {
    id: "c6-src",
    file: "PRATIMAI_AI_Handout_Class6_typst_source.zip",
    title: "AI Around Me — Source",
    subtitle: "Class 6 · Editable Typst source + fonts (ZIP)",
    description:
      "Everything needed to rebuild or adapt the Class 6 handout: the Machiatto-edition design system (template.typ + front.typ), all content modules and the embedded fonts. Rebuild with one command: typst compile --font-path fonts main.typ main.pdf (Machiatto package downloads automatically).",
    kind: "zip",
    meta: ["Typst 0.15", "8 .typ files", "Fonts included"],
    accent: "teal",
  },
  {
    id: "c7-src",
    file: "PRATIMAI_AI_Handout_Class7_typst_source.zip",
    title: "How Machines Learn — Source",
    subtitle: "Class 7 · Editable Typst source + fonts (ZIP)",
    description:
      "Everything needed to rebuild or adapt the Class 7 handout: the Machiatto-edition design system extended with scatter, line-graph and pie-chart primitives, all content modules and the embedded fonts. Rebuild with one command: typst compile --font-path fonts main.typ main.pdf.",
    kind: "zip",
    meta: ["Typst 0.15", "8 .typ files", "Charts included", "Fonts included"],
    accent: "amber",
  },
  {
    id: "c8-pdf",
    file: "PRATIMAI_AI_Handout_Class8_Build_the_AI_Cycle.pdf",
    title: "Build the AI Cycle",
    subtitle: "Class 8 · Level 3 — BUILD THE CYCLE · Student Handout (PDF)",
    description:
      "The complete 63-page Class 8 case file — Machiatto edition. Inside: the AI project cycle with 4Ws problem statements, the Plant Doctor walk-through, data guest lists and sampling, the fairness fix-it kit, a nearest-neighbour classifier run with a ruler, accuracy arithmetic, how text generators guess and hallucinate, the Responsible-Use Court — and a full AI Project Proposal capstone with peer review. 17 paper missions and a Builder's Certificate.",
    kind: "pdf",
    meta: ["63 pages · A4", "17 missions", "Machiatto edition", "Print-ready"],
    accent: "teal",
  },
  {
    id: "c9-pdf",
    file: "PRATIMAI_AI_Handout_Class9_The_Logic_Under_the_Magic.pdf",
    title: "The Logic Under the Magic",
    subtitle: "Class 9 · Level 4 — REASON · Student Handout (PDF)",
    description:
      "The complete 65-page Class 9 case file — Machiatto edition. Inside: the 4Ws canvas, stakeholder maps and system maps; data literacy with the misleading-graph gallery; the mathematics under the machine — mean/median/mode, probability dice labs, a line of best fit drawn by hand, k-nearest-neighbour votes with a ruler, pattern-to-rule algorithms; a next-word generator built on paper; deepfakes and the Verify-It routine — all closing on an SDG-linked AI brief with an ethics review panel and a flowchart trace. 21 paper missions and an Analyst's Certificate.",
    kind: "pdf",
    meta: ["65 pages · A4", "21 missions", "Machiatto edition", "Print-ready"],
    accent: "amber",
  },
  {
    id: "c8-src",
    file: "PRATIMAI_AI_Handout_Class8_typst_source.zip",
    title: "Build the AI Cycle — Source",
    subtitle: "Class 8 · Editable Typst source + fonts (ZIP)",
    description:
      "Everything needed to rebuild or adapt the Class 8 handout: the Machiatto-edition design system with the Class 8 extras (nearest-neighbour plot, project-cycle diagram), all content modules, the whitespace-audit rulebook and the embedded fonts. Rebuild with one command: typst compile --font-path fonts main.typ main.pdf.",
    kind: "zip",
    meta: ["Typst 0.15", "8 .typ files", "kNN plot included", "Fonts included"],
    accent: "teal",
  },
  {
    id: "c9-src",
    file: "PRATIMAI_AI_Handout_Class9_typst_source.zip",
    title: "The Logic Under the Magic — Source",
    subtitle: "Class 9 · Editable Typst source + fonts (ZIP)",
    description:
      "Everything needed to rebuild or adapt the Class 9 handout: the Machiatto-edition design system with the Class 9 extras (nearest-neighbour plot, decision flowchart), all content modules, the whitespace-audit rulebook and the embedded fonts. Rebuild with one command: typst compile --font-path fonts main.typ main.pdf.",
    kind: "zip",
    meta: ["Typst 0.15", "8 .typ files", "Flowchart included", "Fonts included"],
    accent: "amber",
  },
  {
    id: "spec",
    file: "PRATIMAI_Curriculum_Spec_Classes_6-10.txt",
    title: "Curriculum Spec",
    subtitle: "PRATIMAI Common AI Curriculum — Classes 6–10 (reference)",
    description:
      "The source curriculum document behind both handouts: board alignments (CBSE, NCERT/NCF-SE, ICSE, state boards), the five-level spiral, per-class chapter tables, outcome codes, task banks, misconceptions and the assessment philosophy.",
    kind: "text",
    meta: ["Classes 6–10", "Outcome codes", "Task banks"],
    accent: "teal",
  },
];
