#import "template.typ": *
// ============================================================
//  BACK MATTER — MY AI WORDS · ANSWER HINTS · PROGRESS · CERTIFICATE (2 pp)
// ============================================================

// ---------------- GLOSSARY + HINTS ----------------
#heading(level: 1, numbering: none)[My AI words]
#align(center, text(size: 10.3pt, fill: ink-soft, style: "italic")[The twenty words on this case — each one met through an experience, never before.])
#v(9pt)

#let gloss(word, num, def) = box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8.5pt, y: 6pt), stack(spacing: 2pt,
  grid(columns: (auto, auto, 1fr), align: (center, center, left), column-gutter: 5pt,
    box(fill: teal-soft, radius: 5pt, inset: (x: 5pt, y: 1.8pt), text(fill: teal, weight: 800, size: 8.4pt, str(num))),
    text(font: f-display, size: 11.6pt, weight: 800, fill: teal, word),
    [],
  ),
  text(size: 9.4pt, def),
  v(2.5pt),
  text(size: 8.1pt, fill: ink-soft, weight: 700, tracking: 0.05em)[USE IT IN MY OWN SENTENCE: #box(width: 72%, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))],
))

#grid(columns: (1fr, 1fr), column-gutter: 7pt, row-gutter: 5pt,
  gloss("problem scoping", 1, [Pinning down exactly which problem to solve, for whom, and where.]),
  gloss("stakeholder", 2, [Any person or group affected by a system, helpful or harmful.]),
  gloss("system map", 3, [A diagram naming every feature that flows in, the output, and the human decision.]),
  gloss("rule-based system", 4, [A program that follows if-then rules written entirely by people.]),
  gloss("learning-based system", 5, [A program that finds its own pattern inside examples.]),
  gloss("qualitative data", 6, [Data describing qualities or categories, like names and descriptions.]),
  gloss("quantitative data", 7, [Data measured in numbers, ready to count, average and plot.]),
  gloss("unstructured data", 8, [Data not in rows and columns — photos, audio, free text.]),
  gloss("privacy", 9, [Your control over who may know what about you, and on what terms.]),
  gloss("security", 10, [The locks and rules that keep data away from people who should not have it.]),
  gloss("mean", 11, [The sum of all values divided by how many there are.]),
  gloss("median", 12, [The middle value when the data is sorted in order.]),
  gloss("mode", 13, [The value that appears most often in the data.]),
  gloss("probability", 14, [Favourable outcomes divided by all equally likely outcomes.]),
  gloss("line of best fit", 15, [The straight line that follows a data cloud most fairly, used to predict.]),
  gloss("correlation", 16, [Two measures moving together — which does not prove one causes the other.]),
  gloss("nearest neighbour", 17, [Classifying a new point by the vote of its k most similar labelled examples.]),
  gloss("generative AI", 18, [Systems that create new text, images, audio or video from patterns.]),
  gloss("deepfake", 19, [Synthetic audio or video made to look or sound like a real person.]),
  gloss("verification routine", 20, [A fixed set of checks you run on claims before you trust or share them.]),
)
#v(7pt)
#note("Analyst's oath")[Machines *count, average, fit, vote and predict* — people *scope the problem, choose the features, read the spread, defend the k and sign the verdict*. When a number speaks, I will ask my questions: *How do I know? What is missing? Compared to WHAT? Who made this? Who is missing? What is the trick here?*]
#v(6pt)

#note("Answer hints — for checking, never for copying")[
  *T9-10:* mean = 490 ÷ 9 ≈ ₹54,400 (the advertisement's number); median = ₹26,000 — the one a job-seeker deserves; no value repeats, so the honest answer for mode here is “none”. Deleting 268 drops the mean to ₹27,750 — one salary moved the “average” by twenty-seven thousand. · *Name-the-trick drill:* T1, T2, T3, OK, T2. · *Data Type Sort:* voice note = QL/U (features: keywords, length); register = QT/S; slips = QL/U; readings = QT/S; photos = U (feature: intersection type); marks = QT/S.
]

#v(4pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MORE HINTS — FOR THE STICKY MISSIONS]
  v(3pt)
  text(size: 9.9pt)[
    *T9-11:* expect about 10 sixes and 30 odds in 60 rolls — landing within a few of that is normal, and 84 correct out of 100 for a “92%” machine is roughly three typical wobbles low: worth a second sample, not a scandal. · *Real probability drill:* 25%, 25%, 50% — and the screener: about 8 of every 26 flags are false, nearly a third, because 80 healthy people are a big pond to misfire in. Base rates rule. · *T9-12:* a fair line lands near “28 marks + 8 per hour”: 3.5 hours ≈ 56; 10 hours predicts ≈ 108 — impossible on a 100-mark test, which is extrapolation confessing in public. · *T9-13:* mango 1 and 2 vote RIPE (teal majorities); mango 3 sits in no-man's land and votes NOT YET with ambers — border cases are exactly where the choice of k matters most. · *T9-16:* “The school” → team/thanked (1–1); “The monsoon” → filled/delayed (1–1); ties are honest — the machine still must pick ONE, just like you did.
  ]
})
#v(4pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: (paint: teal-mid, thickness: 0.9pt, dash: "dashed"), inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: teal-mid, weight: 800, tracking: 0.13em)[MY HINT LOG — WHICH MISSIONS NEEDED A PEEK?]
  v(2.5pt)
  text(size: 9.7pt, fill: ink-soft)[Hints are training data for you. Tick the mission code each time a hint unstuck you — a mission that needed three hints deserves one more retry next week, not three more hints:]
  v(1pt)
  grid(columns: (1fr, 1fr), column-gutter: 8pt, row-gutter: 5.5pt,
    ..("T9-__  needed a hint", "T9-__  needed a hint", "T9-__  needed a hint", "T9-__  needed a hint").map(s => box(stroke: 0.6pt + line-soft, radius: 4pt, inset: (x: 7pt, y: 4pt), fill: white, text(size: 9.6pt, s)))
  )
})
#v(5pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 1pt + ink, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[A POSTCARD TO THE CLASS 10 ANALYST — WHO WILL BE YOU]
  v(3pt)
  text(size: 10.1pt)[The final case of the series asks: *“How do we judge, design and govern AI that affects real people?”* Class 10 measures what you now merely compute — train/test splits, confusion matrices, precision and recall, and the design of systems that deserve public trust. Leave three clues for your future self — the statistic that surprised you most, the claim you caught red-handed, and one question you dare Class 10 to answer:]
  v(2pt)
  ruled-lines(3, lead: 8.4mm)
})
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[My series so far — four cases, one analyst]
  v(4pt)
  grid(columns: (1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
    box(fill: teal-faint, radius: 5pt, inset: (x: 7pt, y: 7pt), stack(spacing: 2.2pt,
      text(font: f-display, size: 8.8pt, weight: 800, fill: amber-deep, tracking: 0.08em)[CLASS 6 · NOTICE],
      text(size: 9.2pt)[I learned to *spot* learning machines and ask: how do I know?],
    )),
    box(fill: teal-faint, radius: 5pt, inset: (x: 7pt, y: 7pt), stack(spacing: 2.2pt,
      text(font: f-display, size: 8.8pt, weight: 800, fill: amber-deep, tracking: 0.08em)[CLASS 7 · SORT & PREDICT],
      text(size: 9.2pt)[I learned to *train and test* machines — and how examples fool them.],
    )),
    box(fill: teal-faint, radius: 5pt, inset: (x: 7pt, y: 7pt), stack(spacing: 2.2pt,
      text(font: f-display, size: 8.8pt, weight: 800, fill: amber-deep, tracking: 0.08em)[CLASS 8 · BUILD THE CYCLE],
      text(size: 9.2pt)[I learned to *plan, audit and defend* an AI before it is built.],
    )),
    box(fill: teal-soft, radius: 5pt, inset: (x: 7pt, y: 7pt), stack(spacing: 2.2pt,
      text(font: f-display, size: 8.8pt, weight: 800, fill: teal-deep, tracking: 0.08em)[CLASS 9 · REASON],
      text(size: 9.2pt)[I learned to *compute the mechanisms* — and verify every claim.],
    )),
  )
  v(4pt)
  text(size: 9.9pt)[*The habit I am proudest of now:* #ruled-lines(1, lead: 7.8mm)]
})
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[Where I used my questions — the tally of a finished case]
  v(4pt)
  dtable(("My question", "Where I asked it for real (at home, in class, online)"),
    ([How do I know?], [ ]),
    ([What is missing? / Compared to WHAT?], [ ]),
    ([Who made this? / Who is missing?], [ ]),
    ([What is the trick here?], [ ]),
    widths: (64mm, 1fr),
  )
  v(3pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[Four rows is the whole method. Any row still empty is Class 10's first homework.]
})
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, stroke: 1pt + ink, inset: (x: 11pt, y: 9pt), {
  grid(columns: (auto, 1fr), column-gutter: 5pt, align: (left, horizon),
    box(width: 5.5pt, height: 5.5pt, fill: amber, baseline: 28%),
    text(font: f-display, size: 9.2pt, weight: 800, fill: amber-deep, tracking: 0.13em)[THE DOOR TO CLASS 10],
  )
  v(3pt)
  text(size: 10.3pt)[The series finale measures what you now compute: train/test splits, confusion matrices, precision, recall and the base-rate trap — and then asks you to *design and govern* a system that deserves public trust. Keep every notebook; the definitions inside are your revision notes. And keep the six questions:]
  v(2pt)
  align(center, text(font: f-display, size: 10.6pt, weight: 800, fill: teal-deep)[How do I know? · What is missing? · Compared to WHAT? · Who made this? · Who is missing? · What is the trick here?])
})
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[THIS CASE FILE BELONGS TO THE EVIDENCE]
  v(2pt)
  text(size: 9.9pt)[Analyst: #box(width: 52mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) #h(8pt) Class & division: #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) #h(8pt) School year: #box(width: 24mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))]
  v(3pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[Hand this book to next year's Class 9 analysts with your tallies inside — the best hand-me-down is an honest one.]
})
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: (paint: teal-mid, thickness: 0.9pt, dash: "dashed"), inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 9.2pt, fill: teal-mid, weight: 800, tracking: 0.13em)[ANALYST'S NOTES — anything else this case taught me that did not fit anywhere]
  v(1pt)
  ruled-lines(6, lead: 8.4mm)
})
#v(6pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[THE CLUE I WOULD PUT IN A BOTTLE — for whoever finds this book in ten years]
  v(2pt)
  text(size: 10.1pt)[If a machine from 2036 reads this page, here is what I want it to know about the analysts who trained on paper:]
  ruled-lines(2, lead: 8.4mm)
})

// ---------------- PROGRESS + CERTIFICATE ----------------
#heading(level: 1, numbering: none)[My progress]
#align(center, text(size: 10.3pt, fill: ink-soft, style: "italic")[Shade honestly — analysts never fake evidence.])
#v(9pt)

#text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MY OUTCOME TRACKER — TICK WHEN YOU TRULY CAN DO IT]
#v(5pt)
#grid(columns: (1fr, 1fr), column-gutter: 12pt,
  ican((
    [9.U1 — tell AI, ML and DL apart; classify products as rule-based or learning-based],
    [9.L1 — run the project cycle with 4Ws, stakeholders and a system map],
    [9.D1 — classify data by type and structure; judge quality, sources, privacy vs security],
    [9.D2 — read and critique graphs: truncated axes, cherry-picking, broken pies],
    [9.M1 — compute and interpret mean, median, mode and spread; say when an average misleads],
    [9.M2 — compute simple probabilities and connect them to a machine's confidence],
  )),
  ican((
    [9.M3 — fit a line by eye, predict, and explain why correlation is not causation],
    [9.M4 — classify by nearest neighbours with distances as evidence],
    [9.W1 — explain generative AI conceptually and apply a verification routine],
    [9.R1 — analyse an AI case from several stakeholders' views with an ethics checklist],
    [9.R2 — link an AI idea to an SDG with a data plan and an ethics note],
    [9.T1 — express a decision procedure as a flowchart and trace it by hand],
  )),
)
#v(4pt)

#grid(columns: (1fr, auto), align: (left, right),
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MY CASE FILES — SHADE A STAR PER CHAPTER FINISHED],
  text(size: 8.4pt, fill: ink-soft, style: "italic")[1 Scope & Plan · 2 Data Literacy · 3 Maths Behind AI · 4 Generative AI & Ethics · 5 SDG Brief],
)
#v(3pt)
#grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
  ..range(5).map(i => box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (y: 5pt), align(center + horizon, star(19pt, fill: teal-soft)) ))
)
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[MY OUTCOME REFLECTION — read your own ticks before you sign]
  v(2pt)
  text(size: 10.1pt)[The tick I am proudest of: #box(width: 66mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) — the tick that still needs work: #box(width: 56mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))]
  v(2pt)
  text(size: 10.1pt)[My plan for the one that needs work (which mission I will re-run, and when):]
  ruled-lines(1, lead: 8.2mm)
})
#v(7pt)

// certificate panel
#block(width: 100%, box(width: 100%, stroke: 1.6pt + teal, radius: 5pt, inset: (x: 14pt, y: 8pt), {
  box(width: 100%, stroke: 0.5pt + teal-mid, radius: 5pt, inset: (x: 14pt, y: 11pt), {
    align(center)[
      #text(size: 9pt, weight: 800, fill: amber-deep, tracking: 0.22em)[PRATIMAI · AI HANDOUTS · CLASS 9]
      #v(3pt)
      #text(font: f-display, size: 20.9pt, weight: 800, fill: teal)[My Analyst's Certificate]
      #v(5pt)
      #text(size: 10.3pt, style: "italic")[This certifies that analyst]
      #v(5pt)
      #line(length: 62%, stroke: 0.8pt + ink-soft)
      #v(2pt)
      #text(size: 8.6pt, fill: ink-soft, weight: 700, tracking: 0.12em)[INVESTIGATOR NAME]
      #v(5pt)
      #text(size: 10.1pt)[has completed the case file *“The Logic Under the Magic”* — Level 4 · REASON —
        computed the mathematics under the machine, briefed the SDGs, and promised to keep asking:
        *How do I know? · What is missing? · Compared to WHAT? · Who made this? · Who is missing? · What is the trick here?*]
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
#align(center, text(size: 8.8pt, fill: ink-soft)[The series concludes: Class 10 asks *“How do we judge, design and govern AI that affects real people?”* — bring every notebook you own.])
#v(9pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[My badge shelf — four years, four levels]
  v(5pt)
  grid(columns: (1fr, 1fr, 1fr, 1fr), column-gutter: 7pt,
    ..range(4).map(i => {
      let lvls = ("NOTICE", "SORT & PREDICT", "BUILD THE CYCLE", "REASON")
      let yrs = ("CLASS 6", "CLASS 7", "CLASS 8", "CLASS 9")
      box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (y: 7pt), align(center + horizon, stack(spacing: 3pt,
        circle(radius: 9.5pt, fill: if i == 3 { amber } else { teal-soft }, stroke: 1.1pt + teal-mid, align(center + horizon, text(fill: if i == 3 { white } else { teal }, weight: 800, size: 9.2pt, str(i + 1)))),
        text(font: f-display, size: 8.6pt, weight: 800, fill: teal, lvls.at(i)),
        text(size: 7.8pt, fill: ink-soft, weight: 700, yrs.at(i)),
        text(size: 8.2pt, fill: ink-soft, style: "italic")[badge earned ✓],
      )))
    })
  )
  v(4pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[One line per badge — what each year changed in how I think:]
  ruled-lines(4, lead: 7.9mm)
})
