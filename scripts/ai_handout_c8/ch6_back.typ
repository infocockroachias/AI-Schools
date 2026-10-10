#import "template.typ": *
// ============================================================
//  BACK MATTER — MY AI WORDS · ANSWER HINTS · PROGRESS · CERTIFICATE (2 pp)
// ============================================================

// ---------------- GLOSSARY + HINTS ----------------
#heading(level: 1, numbering: none)[My AI words]
#align(center, text(size: 10.3pt, fill: ink-soft, style: "italic")[The sixteen words on this case — each one met through an experience, never before.])
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
  gloss("problem statement", 1, [One precise sentence saying exactly what problem you solve, for whom, where.]),
  gloss("AI project cycle", 2, [The loop: scope the problem, collect data, build and test, reflect and improve.]),
  gloss("dataset", 3, [The collection of examples a machine learns from, or is tested on.]),
  gloss("sampling", 4, [Choosing part of a group to study, hoping it fairly represents the whole.]),
  gloss("representation", 5, [How closely a dataset's people match the real people the system will serve.]),
  gloss("fairness", 6, [A system works equally well for every group of people it affects.]),
  gloss("consent", 7, [Permission given freely by a person who understands what will be collected and why.]),
  gloss("privacy", 8, [Keeping people's personal details safe, used only for the promised purpose.]),
  gloss("nearest neighbour", 9, [Classifying a new example by its most similar labelled examples.]),
  gloss("accuracy", 10, [The share of test examples a machine gets right, written as a percentage.]),
  gloss("no-code tool", 11, [A ready-made AI tool you train or use without writing any program.]),
  gloss("classifier", 12, [A machine that sorts examples into named groups, like ripe or unripe.]),
  gloss("text generator", 13, [A machine that writes by predicting the most likely next words.]),
  gloss("hallucination", 14, [When a text generator states something false as if it were fact.]),
  gloss("misinformation", 15, [False content that spreads — by mistake or on purpose.]),
  gloss("responsible use", 16, [Choosing and using AI tools so people are helped, respected and safe.]),
)
#v(7pt)
#note("Builder's oath")[Machines *compare, predict, continue* — people *scope the problem, audit the guest list, run the honest test and sign the verdict*. When a machine speaks, I will ask my five questions: *How do I know? What is missing? Who made this? Who is missing? What is the trick here?*]
#v(6pt)

#note("Answer hints — for checking, never for copying")[
  *T8-04:* Ward-3 adults are 120 ÷ 200 = *60%* of the dataset against an 18% town share — overweighted more than three times; elderly are *missing* (0%); Kannada-only speakers are 2% against 22% — nearly missing. · *T8-05:* the hand-raised sample is biased before any number is written — quick hands, front rows and confident friends are not a random draw. · *Name the stage drill:* P, D, M, T, I, P. · *Sharpen or spoil:* S, V, S, V — the vague ones are missing all four Ws at once. · *Skewed sample drill:* S, S, F, S, S — the lunch-bag plan only hears from packers and repliers.
]

#v(4pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MORE HINTS — FOR THE STICKY MISSIONS]
  v(3pt)
  text(size: 9.9pt)[
    *T8-08:* Bird 1 and Bird 2 both fall among the teal dots — POND. Bird 3's nearest dot is the amber one at about (8.5, 6.2) — FOREST — but write down which *feature* actually did the deciding, because the vibes disagreed. · *T8-09:* timings → chatbot; rice demand and homework-help flags → predictor; cracked panels → image classifier. · *Three-move drill:* N, S, T, N, S. · *Accuracy drill:* 85%, 94%, 90% — then ask what the sunny-day-only test set hides. · *T8-17:* every four-item combination costs ₹700, so *no* plan fixes everything — that is the lesson. Strong plans include A (missing groups) and then defend what they left out.
  ]
})
#v(4pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: (paint: teal-mid, thickness: 0.9pt, dash: "dashed"), inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: teal-mid, weight: 800, tracking: 0.13em)[MY HINT LOG — WHICH MISSIONS NEEDED A PEEK?]
  v(2.5pt)
  text(size: 9.7pt, fill: ink-soft)[Hints are training data for you. Tick the mission code each time a hint unstuck you — a mission that needed three hints deserves one more retry next week, not three more hints:]
  v(1pt)
  grid(columns: (1fr, 1fr), column-gutter: 8pt, row-gutter: 5.5pt,
    ..("T8-__  needed a hint", "T8-__  needed a hint", "T8-__  needed a hint", "T8-__  needed a hint").map(s => box(stroke: 0.6pt + line-soft, radius: 4pt, inset: (x: 7pt, y: 4pt), fill: white, text(size: 9.6pt, s)))
  )
})
#v(5pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 1pt + ink, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[A POSTCARD TO THE CLASS 9 INVESTIGATOR — WHO WILL BE YOU]
  v(3pt)
  text(size: 10.1pt)[The next case asks the question every builder must face sooner or later: *“Why does AI work — and when does it fail?”* Class 9 goes under the hood: the maths of averages, probability and best-fit lines that make learning possible, and the graph tricks that make it look easier than it is. Leave three clues for your future self — the trade-off that surprised you most, the plan of yours that failed hardest, and one question you dare Class 9 to answer:]
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
    [8.U1 — define AI and machine learning in my own words; place chatbots, classifiers and recommenders on the who-learns-what map],
    [8.L1 — walk a local problem through the full AI project cycle, on paper],
    [8.L2 — hand-run a nearest-example classifier, compute its accuracy, and suggest an improvement],
    [8.D1 — audit a small dataset for missing groups and compute percentages per group],
    [8.D2 — explain why collecting data needs consent and privacy care],
  )),
  ican((
    [8.W1 — match no-code tool types to problems, stating inputs, outputs and limits],
    [8.W2 — explain why a text generator can sound right yet be wrong — and verify its claims],
    [8.R1 — apply a fairness checklist and propose fixes for an unfair dataset],
    [8.R2 — make and defend a responsible-use decision about privacy, misinformation or impact],
    [8.T1 — break a multi-variable problem into parts and find the best choice under limits],
  )),
)
#v(4pt)

#grid(columns: (1fr, auto), align: (left, right),
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MY CASE FILES — SHADE A STAR PER CHAPTER FINISHED],
  text(size: 8.4pt, fill: ink-soft, style: "italic")[1 Project Cycle · 2 Data & Fairness · 3 How Models Learn · 4 Responsible AI · 5 Proposal],
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
      #text(size: 9pt, weight: 800, fill: amber-deep, tracking: 0.22em)[PRATIMAI · AI HANDOUTS · CLASS 8]
      #v(3pt)
      #text(font: f-display, size: 20.9pt, weight: 800, fill: teal)[My Builder's Certificate]
      #v(5pt)
      #text(size: 10.3pt, style: "italic")[This certifies that project lead]
      #v(5pt)
      #line(length: 62%, stroke: 0.8pt + ink-soft)
      #v(2pt)
      #text(size: 8.6pt, fill: ink-soft, weight: 700, tracking: 0.12em)[INVESTIGATOR NAME]
      #v(5pt)
      #text(size: 10.1pt)[has completed the case file *“Build the AI Cycle”* — Level 3 · BUILD THE CYCLE —
        planned and peer-reviewed a full AI project proposal, and promised to keep asking:
        *How do I know? · What is missing? · Who made this? · Who is missing? · What is the trick here?*]
      #v(6pt)
      #grid(columns: (1fr, 1fr, 1fr), column-gutter: 10pt,
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 8.4pt, fill: ink-soft, weight: 700, tracking: 0.1em)[DATE] },
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 8.4pt, fill: ink-soft, weight: 700, tracking: 0.1em)[INVESTIGATOR'S SIGNATURE] },
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 8.4pt, fill: ink-soft, weight: 700, tracking: 0.1em)[GUIDE'S SIGNATURE] },
      )
    ]
  })
}))
#v(12pt)

// closing page: the series so far + the door to Class 9
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[My series so far — three cases, one investigator]
  v(4pt)
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 7pt,
    box(fill: teal-faint, radius: 5pt, inset: (x: 8pt, y: 7pt), stack(spacing: 2.5pt,
      text(font: f-display, size: 9.2pt, weight: 800, fill: amber-deep, tracking: 0.1em)[CLASS 6 · NOTICE],
      text(size: 9.6pt)[I learned to *spot* learning machines and to ask: how do I know?],
    )),
    box(fill: teal-faint, radius: 5pt, inset: (x: 8pt, y: 7pt), stack(spacing: 2.5pt,
      text(font: f-display, size: 9.2pt, weight: 800, fill: amber-deep, tracking: 0.1em)[CLASS 7 · SORT & PREDICT],
      text(size: 9.6pt)[I learned to *train and test* machines — and how examples fool them.],
    )),
    box(fill: teal-soft, radius: 5pt, inset: (x: 8pt, y: 7pt), stack(spacing: 2.5pt,
      text(font: f-display, size: 9.2pt, weight: 800, fill: teal-deep, tracking: 0.1em)[CLASS 8 · BUILD THE CYCLE],
      text(size: 9.6pt)[I learned to *plan, audit and defend* an AI before it is built.],
    )),
  )
  v(4pt)
  text(size: 9.9pt)[*The habit I am proudest of now:* #ruled-lines(1, lead: 7.8mm)]
})
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[Where I used my five questions — the tally of a finished case]
  v(4pt)
  dtable(("My question", "Where I asked it for real (at home, in class, online)"),
    ([How do I know?], [ ]),
    ([What is missing?], [ ]),
    ([Who made this?], [ ]),
    ([Who is missing?], [ ]),
    ([What is the trick here?], [ ]),
    widths: (56mm, 1fr),
  )
  v(3pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[Five rows is the whole method. If a row is still empty, the next case (Class 9) is where you will catch up.]
})
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[THIS CASE FILE BELONGS TO THE EVIDENCE]
  v(2pt)
  text(size: 9.9pt)[Investigator: #box(width: 52mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) #h(8pt) Class & division: #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) #h(8pt) School year: #box(width: 24mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))]
  v(3pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[Hand this book to next year's Class 8 detectives with your tallies inside — the best hand-me-down is an honest one.]
})
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, stroke: 1pt + ink, inset: (x: 11pt, y: 9pt), {
  grid(columns: (auto, 1fr), column-gutter: 5pt, align: (left, horizon),
    box(width: 5.5pt, height: 5.5pt, fill: amber, baseline: 28%),
    text(font: f-display, size: 9.2pt, weight: 800, fill: amber-deep, tracking: 0.13em)[THE DOOR TO CLASS 9],
  )
  v(3pt)
  text(size: 10.3pt)[Next year the case goes *under the hood*: the averages, probability and best-fit lines that make machine learning possible — and the graph tricks that make it look easier than it is. Keep this book; its checkpoints are your revision notes. And whatever machine you meet next, keep asking your five questions:]
  v(2pt)
  align(center, text(font: f-display, size: 10.8pt, weight: 800, fill: teal-deep)[How do I know? · What is missing? · Who made this? · Who is missing? · What is the trick here?])
})
#v(2pt)
#align(center, text(size: 8.8pt, fill: ink-soft)[Ready for the next case? Class 9 asks: *“Why does AI work — and when does it fail?”* — bring your blueprint.])
