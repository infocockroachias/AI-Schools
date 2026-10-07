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
      "The complete 34-page Class 6 case file: rule-followers vs learners, the four kinds of data, patterns and if-then trees, digital-citizen habits and the Neighbourhood AI Investigation — 20 paper missions, word-power cards, myth busters and a detective certificate.",
    kind: "pdf",
    meta: ["34 pages · A4", "20 missions", "Fully unplugged", "Print-ready"],
    accent: "teal",
  },
  {
    id: "c7-pdf",
    file: "PRATIMAI_AI_Handout_Class7_How_Machines_Learn.pdf",
    title: "How Machines Learn",
    subtitle: "Class 7 · Level 2 — SORT & PREDICT · Student Handout (PDF)",
    description:
      "The complete 40-page Class 7 case file: the three learning jobs (classification, regression, clustering), training vs testing, how machines see, read and recommend, charts and how they lie, bias and responsibility — 17 paper missions ending in the Class Survey Machine capstone.",
    kind: "pdf",
    meta: ["40 pages · A4", "17 missions", "Fully unplugged", "Print-ready"],
    accent: "amber",
  },
  {
    id: "c6-src",
    file: "PRATIMAI_AI_Handout_Class6_typst_source.zip",
    title: "AI Around Me — Source",
    subtitle: "Class 6 · Editable Typst source + fonts (ZIP)",
    description:
      "Everything needed to rebuild or adapt the Class 6 handout: the Scholar Teal design system (template.typ), all seven content modules and the embedded fonts. Rebuild with one command: typst compile --font-path fonts main.typ main.pdf.",
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
      "Everything needed to rebuild or adapt the Class 7 handout: the Scholar Teal design system extended with scatter, line-graph and pie-chart primitives, all seven content modules and the embedded fonts. Rebuild with one command: typst compile --font-path fonts main.typ main.pdf.",
    kind: "zip",
    meta: ["Typst 0.15", "8 .typ files", "Charts included", "Fonts included"],
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
