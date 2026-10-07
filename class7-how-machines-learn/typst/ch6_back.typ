#import "template.typ": *
// ============================================================
//  BACK MATTER — MY AI WORDS · ANSWER HINTS · PROGRESS · CERTIFICATE (2 pp)
// ============================================================

// ---------------- GLOSSARY + HINTS ----------------
#heading(level: 1, numbering: none)[My AI words]
#align(center, text(size: 10.3pt, fill: ink-soft, style: "italic")[The fourteen words on this case — each one met through an experience, never before.])
#v(10pt)

#let gloss(word, num, def) = box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8.5pt, y: 6.5pt), stack(spacing: 2.5pt,
  grid(columns: (auto, auto, 1fr), align: (center, center, left), column-gutter: 5pt,
    box(fill: teal-soft, radius: 5pt, inset: (x: 5pt, y: 1.8pt), text(fill: teal, weight: 800, size: 8.4pt, str(num))),
    text(font: f-display, size: 12.1pt, weight: 800, fill: teal, word),
    [],
  ),
  text(size: 9.6pt, def),
  v(3pt),
  text(size: 8.1pt, fill: ink-soft, weight: 700, tracking: 0.05em)[USE IT IN MY OWN SENTENCE: #box(width: 72%, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))],
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

#v(4pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MORE HINTS — FOR THE STICKY MISSIONS]
  v(3pt)
  text(size: 9.9pt)[
    *T7-03:* a group of fliers, a group of swimmers and a group of walkers are all honest groupings — remember, clustering has no single right answer. · *T7-06:* watch-words for the camera: corners, edges, brightness patches. · *T7-08:* “people like you” usually means the two or three rows with the most matches in the LIKE column, not your best friend. · *T7-10:* every helper is *data in → prediction out → human decides* — if your report card misses the human, it is not finished. · *T7-13:* look at what the Uniform Suggester was shown, never at what you wish it had been shown. · *T7-16 Step 6:* the honest answer is almost never “no bias” — name *which* class or street is missing.
  ]
})
#v(4pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: (paint: teal-mid, thickness: 0.9pt, dash: "dashed"), inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: teal-mid, weight: 800, tracking: 0.13em)[MY HINT LOG — WHICH MISSIONS NEEDED A PEEK?]
  v(2.5pt)
  text(size: 9.7pt, fill: ink-soft)[Hints are training data for you. Tick the mission code each time a hint unstuck you — a mission that needed three hints deserves one more retry next week, not three more hints:]
  v(1pt)
  grid(columns: (1fr, 1fr), column-gutter: 8pt, row-gutter: 5.5pt,
    ..("T7-__  needed a hint", "T7-__  needed a hint", "T7-__  needed a hint", "T7-__  needed a hint").map(s => box(stroke: 0.6pt + line-soft, radius: 4pt, inset: (x: 7pt, y: 4pt), fill: white, text(size: 9.6pt, s)))
  )
})
#v(5pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 1pt + ink, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[A POSTCARD TO THE CLASS 8 INVESTIGATOR — WHO WILL BE YOU]
  v(3pt)
  text(size: 10.1pt)[The next case asks: *“What does it take to build an AI that people can trust?”* Leave three clues for your future self — the machine that impressed you most, the mistake that taught you most, and one question you dare Class 8 to answer:]
  v(2pt)
  ruled-lines(3, lead: 8.4mm)
})

// ---------------- PROGRESS + CERTIFICATE ----------------
#heading(level: 1, numbering: none)[My progress]
#align(center, text(size: 10.3pt, fill: ink-soft, style: "italic")[Shade honestly — investigators never fake evidence.])
#v(10pt)

#text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MY OUTCOME TRACKER — TICK WHEN YOU TRULY CAN DO IT]
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
#v(4pt)

#grid(columns: (1fr, auto), align: (left, right),
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MY CASE FILES — SHADE A STAR PER CHAPTER FINISHED],
  text(size: 8.4pt, fill: ink-soft, style: "italic")[1 Learning Machine · 2 See & Read · 3 AI at Work · 4 Gets It Wrong · 5 Survey Machine],
)
#v(3pt)
#grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
  ..range(5).map(i => box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (y: 5pt), align(center + horizon, star(19pt, fill: teal-soft)) ))
)
#v(7pt)

// certificate panel
#block(width: 100%, box(width: 100%, stroke: 1.6pt + teal, radius: 5pt, inset: (x: 14pt, y: 8pt), {
  box(width: 100%, stroke: 0.5pt + teal-mid, radius: 5pt, inset: (x: 14pt, y: 11pt), {
    align(center)[
      #text(size: 9pt, weight: 800, fill: amber-deep, tracking: 0.22em)[PRATIMAI · AI HANDOUTS · CLASS 7]
      #v(3pt)
      #text(font: f-display, size: 20.9pt, weight: 800, fill: teal)[My Machine-Trainer Certificate]
      #v(5pt)
      #text(size: 10.3pt, style: "italic")[This certifies that investigator]
      #v(5pt)
      #line(length: 62%, stroke: 0.8pt + ink-soft)
      #v(2pt)
      #text(size: 8.6pt, fill: ink-soft, weight: 700, tracking: 0.12em)[INVESTIGATOR NAME]
      #v(5pt)
      #text(size: 10.1pt)[has completed the case file *“How Machines Learn”* — Level 2 · SORT & PREDICT —
        solved all seventeen missions, and promised to keep asking:
        *How do I know? · What is missing? · Who made this? · What is the trick here?*]
      #v(6pt)
      #grid(columns: (1fr, 1fr, 1fr), column-gutter: 10pt,
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 8.4pt, fill: ink-soft, weight: 700, tracking: 0.1em)[DATE] },
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 8.4pt, fill: ink-soft, weight: 700, tracking: 0.1em)[INVESTIGATOR'S SIGNATURE] },
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 8.4pt, fill: ink-soft, weight: 700, tracking: 0.1em)[GUIDE'S SIGNATURE] },
      )
    ]
  })
}))
#v(2pt)
#align(center, text(size: 8.8pt, fill: ink-soft)[Ready for the next case? Class 8 asks: *“What does it take to build an AI that people can trust?”* — bring your badge.])
