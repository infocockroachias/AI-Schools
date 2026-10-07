#import "template.typ": *
// ============================================================
//  BACK MATTER — MY AI WORDS · ANSWER HINTS · PROGRESS · CERTIFICATE (2 pp)
// ============================================================

// ---------------- GLOSSARY + HINTS ----------------
#chap.update("My AI words")
#pagebreak()

#grid(columns: (auto, 1fr), column-gutter: 9pt, align: (center, left),
  box(fill: teal, radius: 0pt, width: 11mm, height: 11mm, align(center + horizon, text(fill: white, size: 17pt, font: f-display, weight: 800)[W])),
  { text(font: f-display, size: 21pt, weight: 800, fill: teal)[My AI words]; v(0.5pt); text(size: 9.6pt, fill: ink-soft, style: "italic")[The fourteen words on this case — each one met through an experience, never before.] },
)
#v(9pt)

#let gloss(word, num, def) = box(fill: white, stroke: 0.7pt + line-soft, radius: 0pt, inset: (x: 8.5pt, y: 6.5pt), stack(spacing: 2.5pt,
  grid(columns: (auto, auto, 1fr), align: (center, center, left), column-gutter: 5pt,
    box(fill: teal-soft, radius: 0pt, inset: (x: 5pt, y: 1.8pt), text(fill: teal, weight: 800, size: 7.6pt, str(num))),
    text(font: f-display, size: 11pt, weight: 800, fill: teal, word),
    [],
  ),
  text(size: 8.7pt, def),
  v(1.5pt),
  text(size: 7.4pt, fill: ink-soft, weight: 700, tracking: 0.05em)[USE IT IN MY OWN SENTENCE: #box(width: 72%, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))],
))

#grid(columns: (1fr, 1fr), column-gutter: 7pt, row-gutter: 5.5pt,
  gloss("classification", 1, [Putting things into groups that already have names, like fruit or vehicles.]),
  gloss("regression", 2, [Using a pattern to predict a number, like a price or a temperature.]),
  gloss("clustering", 3, [Finding groups in examples that have no labels — the machine invents the groups.]),
  gloss("training set", 4, [The practice examples a machine learns from before it meets new ones.]),
  gloss("test set", 5, [The hidden examples used to check whether the learning really worked.]),
  gloss("feature", 6, [A useful clue, stored as a number, that helps a machine decide.]),
  gloss("frequency", 7, [How many times a word appears — the number a counting machine reads.]),
  gloss("recommendation", 8, [A suggestion made by finding people whose pattern of likes matches yours.]),
  gloss("structured data", 9, [Facts arranged in rows and columns, so patterns can be found.]),
  gloss("trend", 10, [The general direction a line graph shows: rising, falling or steady.]),
  gloss("sample", 11, [The group you actually collected data from — always smaller than everyone.]),
  gloss("bias", 12, [When examples are one-sided, so the machine's results treat some people unfairly.]),
  gloss("misinformation", 13, [False or edited content that spreads — sometimes by mistake, sometimes on purpose.]),
  gloss("accountability", 14, [Being answerable for what a system does — only people can hold it.]),
)
#v(7pt)
#note("Detective's oath")[Machines *sort, count, predict* — people *choose the examples, check the sample and stay answerable*. When a machine speaks, I will ask my four questions: *How do I know? What is missing? Who made this? What is the trick here?*]
#v(6pt)

#note("Answer hints — for checking, never for copying")[
  *T7-02:* the best line is close to ₹25 plus ₹14–15 per km; a 6.5 km trip lands near ₹115–125; the 12 km guess is riskier because it stretches beyond every dot you saw. · *T7-04 exam set:* IN = 27, 36, 45; OUT = 14, 19. · *T7-07:* the counting rule flags messages 1, 3 and 5. · *T7-11:* Chart A is honest; Chart B's axis starts at 88 instead of 0; Chart C's shares add up to 110%. · *Ch 1 drill, in order:* C, N, G, C, N, G. · *Ch 2 drill:* reader, recommender, camera, recommender, camera, reader. · *Ch 3 drill:* hottest is May; rising from Jan to May, dipping in Jun.
]

// ---------------- PROGRESS + CERTIFICATE ----------------
#chap.update("My progress")
#pagebreak()

#grid(columns: (auto, 1fr), column-gutter: 9pt, align: (center, left),
  box(fill: amber, radius: 0pt, width: 11mm, height: 11mm, align(center + horizon, star(13pt, fill: white))),
  { text(font: f-display, size: 21pt, weight: 800, fill: teal)[My progress]; v(0.5pt); text(size: 9.6pt, fill: ink-soft, style: "italic")[Shade honestly — investigators never fake evidence.] },
)
#v(9pt)

#text(size: 8.4pt, weight: 800, fill: teal, tracking: 0.1em)[MY OUTCOME TRACKER — TICK WHEN YOU TRULY CAN DO IT]
#v(5pt)
#grid(columns: (1fr, 1fr), column-gutter: 12pt,
  ican((
    [7.U1 — tell classification, regression and clustering apart, with classroom examples],
    [7.L1 — explain training vs testing as “practice questions vs the real exam”],
    [7.L2 — explain why few or one-sided examples fool a learner, and how varied ones help],
    [7.D1 — collect structured data; draw and read bar, line and pie charts; spot a misleading one],
    [7.W1 — explain at idea level how a machine sees, reads and recommends],
  )),
  ican((
    [7.W2 — describe AI uses in healthcare, education, transport, agriculture, communication — a benefit and a limit each],
    [7.R1 — explain how biased examples cause unfair results, and propose a fix],
    [7.R2 — apply the three checks — source, evidence, emotion — to fake or edited content],
    [7.T1 — compare solving a task with fixed if-then rules vs learning from examples],
  )),
)
#v(8pt)

#grid(columns: (1fr, auto), align: (left, right),
  text(size: 8.4pt, weight: 800, fill: teal, tracking: 0.1em)[MY CASE FILES — SHADE A STAR PER CHAPTER FINISHED],
  text(size: 7.6pt, fill: ink-soft, style: "italic")[1 Learning Machine · 2 See & Read · 3 AI at Work · 4 Gets It Wrong · 5 Survey Machine],
)
#v(4pt)
#grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
  ..range(5).map(i => box(fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (y: 7pt), align(center + horizon, star(19pt, fill: teal-soft)) ))
)
#v(10pt)

// certificate panel
#block(width: 100%, box(width: 100%, stroke: 1.6pt + teal, radius: 0pt, inset: (x: 14pt, y: 12pt), {
  box(width: 100%, stroke: 0.5pt + teal-mid, radius: 0pt, inset: (x: 14pt, y: 14pt), {
    align(center)[
      #text(size: 8.2pt, weight: 800, fill: amber-deep, tracking: 0.22em)[PRATIMAI · AI HANDOUTS · CLASS 7]
      #v(3pt)
      #text(font: f-display, size: 19pt, weight: 800, fill: teal)[My Machine-Trainer Certificate]
      #v(5pt)
      #text(size: 9.4pt, style: "italic")[This certifies that investigator]
      #v(6pt)
      #line(length: 62%, stroke: 0.8pt + ink-soft)
      #v(2pt)
      #text(size: 7.8pt, fill: ink-soft, weight: 700, tracking: 0.12em)[INVESTIGATOR NAME]
      #v(6pt)
      #text(size: 9.2pt)[has completed the case file *“How Machines Learn”* — Level 2 · SORT & PREDICT —
        solved all seventeen missions, and promised to keep asking:
        *How do I know? · What is missing? · Who made this? · What is the trick here?*]
      #v(9pt)
      #grid(columns: (1fr, 1fr, 1fr), column-gutter: 10pt,
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 7.6pt, fill: ink-soft, weight: 700, tracking: 0.1em)[DATE] },
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 7.6pt, fill: ink-soft, weight: 700, tracking: 0.1em)[INVESTIGATOR'S SIGNATURE] },
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 7.6pt, fill: ink-soft, weight: 700, tracking: 0.1em)[GUIDE'S SIGNATURE] },
      )
    ]
  })
}))
#v(6pt)
#align(center, text(size: 8pt, fill: ink-soft)[Ready for the next case? Class 8 asks: *“What does it take to build an AI that people can trust?”* — bring your badge.])
