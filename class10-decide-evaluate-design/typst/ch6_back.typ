#import "template.typ": *
// ============================================================
//  BACK MATTER — MY AI WORDS · ANSWER HINTS · PROGRESS · CERTIFICATE
//  Class 10 · series finale
// ============================================================

// ---------------- GLOSSARY + HINTS ----------------
#heading(level: 1, numbering: none)[My AI words]
#align(center, text(size: 10.3pt, fill: ink-soft, style: "italic")[The twenty-four words on the final case — each one met through an experience, never before.])
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
  gloss("rule-based system", 1, [A system whose every behaviour follows rules written entirely by people.]),
  gloss("supervised learning", 2, [Learning from examples that come with correct answers attached.]),
  gloss("unsupervised learning", 3, [Finding structure in examples that carry no labels at all.]),
  gloss("reinforcement learning", 4, [Learning a strategy by acting, then adjusting to rewards and penalties.]),
  gloss("classification", 5, [A learning job whose output is a category from a fixed list.]),
  gloss("regression", 6, [A learning job whose output is a number on a scale.]),
  gloss("clustering", 7, [A learning job that finds groups nobody named in advance.]),
  gloss("association", 8, [A learning job that finds items that keep appearing together.]),
  gloss("weight", 9, [The adjustable number a neuron multiplies an input by — a connection's strength.]),
  gloss("layer", 10, [A row of neurons whose outputs feed the next row; depth comes from stacking.]),
  gloss("pixel", 11, [One position in an image grid, holding a brightness number — three for colour.]),
  gloss("grayscale", 12, [An image where each pixel holds a single brightness number from 0 to 255.]),
  gloss("kernel", 13, [The small grid of weights slid across an image — one learned pattern-detector.]),
  gloss("feature map", 14, [The grid of responses one kernel produces — where its pattern fired.]),
  gloss("normalisation", 15, [Cleaning text so machines can count it: lowercase, no punctuation, stems chopped.]),
  gloss("bag-of-words", 16, [A table of word counts per message — order lost, frequency kept.]),
  gloss("TF-IDF", 17, [A score that lifts words frequent here but rare elsewhere — the informative ones.]),
  gloss("train/test split", 18, [Holding back part of the data so the model is judged only on what it never saw.]),
  gloss("confusion matrix", 19, [The 2×2 table of what a model said versus what was true.]),
  gloss("precision", 20, [Of everything flagged, the fraction that was real — the cost of false alarms.]),
  gloss("recall", 21, [Of everything real, the fraction that was caught — the cost of misses.]),
  gloss("base rate", 22, [How common a condition is before any test — the prior that governs every positive.]),
  gloss("threshold", 23, [The score line that turns a model's number into a yes-or-no decision.]),
  gloss("accountability", 24, [A named person or body that answers for a system's decisions — in writing, in advance.]),
)
#v(7pt)
#note("The designer's oath")[Machines *classify, estimate, cluster, flag and score* — people *scope the problem, choose the data, pick the metric, own the errors and sign the gates*. When a system speaks, I will ask my questions: *How do I know? What is missing? Who made this? Who is missing? What is the trick here? Who is accountable? What would change my mind?*]
#v(6pt)

#note("Answer hints — for checking, never for copying")[
  *T10-01:* the lift is rule-based to its bones; the chess self-improver and the essay chatbot are learning-based — but only the chess program is reinforcement (it plays the world for points); the kirana rule and the lift controller are the pair most worth arguing. · *T10-03:* tuition marks = supervised; bus rider groups = unsupervised; drone = reinforcement; X-rays = supervised; singer pairs = unsupervised; vacuum = reinforcement. · *T10-04:* rice+dal appears in bills 1,2,3,7 — confidence 4/6 ≈ 67% of rice bills; the app is wrong in 2 of 6 rice cases ≈ 33% of the time; bill 4 (bread, jam) shows how fast small samples break.
]
#v(4pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MORE HINTS — FOR THE STICKY MISSIONS]
  v(3pt)
  text(size: 9.9pt)[
    *T10-05:* your two hand-computed patches must match the worked patch's arithmetic — if the class disagrees on one cell, redo the nine multiplications aloud in turn; the kernel never moves half a cell. · *T10-08:* "free" is likely your highest document-frequency word AND a weak discriminator if it appears everywhere — TF-IDF intuition: the informative words are the ones one message cannot stop using. · *T10-10:* with 12 sick in 20 slips, "always SICK" on a random 4-test scores about 60% — and a peeked test scores exactly 100% and exactly nothing. · *T10-11:* TP=44, FP=6, FN=10, TN=40; accuracy 84%, precision 44/50 = 88%, recall 44/54 ≈ 81%. · *T10-13:* of 10,000: 10 sick, 9,990 healthy; TP ≈ 10, FP ≈ 100; a positive is truly sick only 10/110 ≈ 9% — the advert survives, the meaning does not.
  ]
})
#v(4pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: (paint: teal-mid, thickness: 0.9pt, dash: "dashed"), inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: teal-mid, weight: 800, tracking: 0.13em)[MY HINT LOG — WHICH MISSIONS NEEDED A PEEK?]
  v(2.5pt)
  text(size: 9.7pt, fill: ink-soft)[Hints are training data for you. Tick the mission code each time a hint unstuck you — a mission that needed three hints deserves one more retry next week, not three more hints:]
  v(1pt)
  grid(columns: (1fr, 1fr), column-gutter: 8pt, row-gutter: 5.5pt,
    ..("T10-__  needed a hint", "T10-__  needed a hint", "T10-__  needed a hint", "T10-__  needed a hint").map(s => box(stroke: 0.6pt + line-soft, radius: 4pt, inset: (x: 7pt, y: 4pt), fill: white, text(size: 9.6pt, s)))
  )
})

// ---------------- SERIES CLOSING ----------------
#heading(level: 1, numbering: none)[The series complete]
#align(center, text(size: 10.3pt, fill: ink-soft, style: "italic")[Five cases, five levels, one habit of mind. This page is the whole journey in your own handwriting.])
#v(9pt)

#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[My series so far — five cases, one designer]
  v(4pt)
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 6pt,
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
  )
  v(3pt)
  grid(columns: (1fr, 1fr), column-gutter: 6pt,
    box(fill: teal-soft, radius: 5pt, inset: (x: 7pt, y: 7pt), stack(spacing: 2.2pt,
      text(font: f-display, size: 8.8pt, weight: 800, fill: teal-deep, tracking: 0.08em)[CLASS 9 · REASON],
      text(size: 9.2pt)[I learned to *compute the mechanisms* — and verify every claim.],
    )),
    box(fill: amber-soft, radius: 5pt, inset: (x: 7pt, y: 7pt), stack(spacing: 2.2pt,
      text(font: f-display, size: 8.8pt, weight: 800, fill: amber-deep, tracking: 0.08em)[CLASS 10 · EVALUATE & DESIGN],
      text(size: 9.2pt)[I learned to *judge with evidence* and *design with a conscience*.],
    )),
  )
  v(4pt)
  text(size: 9.9pt)[*The habit I am proudest of now:* #ruled-lines(1, lead: 7.8mm)]
})
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[Where I used my questions — the tally of five finished cases]
  v(4pt)
  dtable(("My question", "Where I asked it for real (at home, in class, online)"),
    ([How do I know?], [ ]),
    ([What is missing? / Compared to WHAT?], [ ]),
    ([Who made this? / Who is missing? / Who is accountable?], [ ]),
    ([What is the trick here? / What would change my mind?], [ ]),
    widths: (72mm, 1fr),
  )
  v(3pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[Seven questions is the whole method. The two newest ones are the ones adults get paid to ask.]
})
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, stroke: 1pt + ink, inset: (x: 11pt, y: 9pt), {
  grid(columns: (auto, 1fr), column-gutter: 5pt, align: (left, horizon),
    box(width: 5.5pt, height: 5.5pt, fill: amber, baseline: 28%),
    text(font: f-display, size: 9.2pt, weight: 800, fill: amber-deep, tracking: 0.13em)[THE ROAD AFTER THIS SERIES],
  )
  v(3pt)
  text(size: 10.3pt)[There is no Class 11 handout — by design. What comes next is *using* the method where you sit: board subjects, first projects, first jobs. The seven questions travel; the confusion matrix travels; the gates travel. Wherever you meet a system that ranks people, you are now the one in the room who can ask what it hides and who answers for it. Keep every notebook; they are your evidence — of the systems you will one day be trusted to build.]
  v(2pt)
  align(center, text(font: f-display, size: 10.6pt, weight: 800, fill: teal-deep)[How do I know? · What is missing? · Who made this? · Who is missing? · What is the trick here? · Who is accountable? · What would change my mind?])
})
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[THIS CASE FILE BELONGS TO THE EVIDENCE]
  v(2pt)
  text(size: 9.9pt)[Designer: #box(width: 52mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) #h(8pt) Class & division: #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) #h(8pt) School year: #box(width: 24mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))]
  v(3pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[Keep this book — of all five, this is the one to show at your first interview.]
})
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: (paint: teal-mid, thickness: 0.9pt, dash: "dashed"), inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 9.2pt, fill: teal-mid, weight: 800, tracking: 0.13em)[DESIGNER'S NOTES — anything else this final case taught me that did not fit anywhere]
  v(1pt)
  ruled-lines(6, lead: 8.4mm)
})
#v(6pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[THE CLUE I WOULD PUT IN A BOTTLE — for whoever finds this series in ten years]
  v(2pt)
  text(size: 10.1pt)[If a machine from 2036 reads these pages, here is what I want it to know about the students who learned to judge it on paper:]
  ruled-lines(2, lead: 8.4mm)
})

// ---------------- PROGRESS + CERTIFICATE ----------------
#heading(level: 1, numbering: none)[My progress]
#align(center, text(size: 10.3pt, fill: ink-soft, style: "italic")[Shade honestly — designers never fake evidence.])
#v(9pt)

#text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MY OUTCOME TRACKER — RATE YOURSELF: E EMERGING · D DEVELOPING · P PROFICIENT · A ADVANCED]
#v(5pt)
#grid(columns: (1fr, 1fr), column-gutter: 12pt,
  ican((
    [10.U1 — place products on the model-family map: rule-based, supervised, unsupervised, reinforcement],
    [10.L1 — run a neural network by hand and explain what weights and layers do],
    [10.E1 — split data honestly; build a confusion matrix; compute precision, recall; choose the metric for the stakes],
    [10.V1 — apply a 3×3 kernel by hand and sketch what convolution layers do],
    [10.N1 — normalise text, build a bag-of-words, and tell script bots from smart bots],
  )),
  ican((
    [10.S1 — explore a small dataset's summary values, patterns and limits, and state all three],
    [10.R1 — run the four principles and an audit over a real AI case, with a verdict and a fix],
    [10.R2 — state my privacy rights and design with minimisation; use generative AI with integrity],
    [10.D1 — design an AI project end-to-end on paper, gates included, and pitch it],
    [10.C1 — map my own interests to AI-related study paths and careers, with evidence],
  )),
)
#v(4pt)

#grid(columns: (1fr, auto), align: (left, right),
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MY CASE FILES — SHADE A STAR PER CHAPTER FINISHED],
  text(size: 8.4pt, fill: ink-soft, style: "italic")[1 Models Explained · 2 See & Read · 3 Judging a Model · 4 Ethics & Society · 5 Design Brief],
)
#v(3pt)
#grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
  ..range(5).map(i => box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (y: 5pt), align(center + horizon, star(19pt, fill: teal-soft)) ))
)
#v(7pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[MY OUTCOME REFLECTION — read your own ratings before you sign]
  v(2pt)
  text(size: 10.1pt)[The rating I can defend with evidence: #box(width: 66mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) — the one that still needs work: #box(width: 56mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))]
  v(2pt)
  text(size: 10.1pt)[My plan for the one that needs work (which mission I will re-run, and when):]
  ruled-lines(1, lead: 8.2mm)
})
#v(7pt)

// certificate panel
#block(width: 100%, box(width: 100%, stroke: 1.6pt + teal, radius: 5pt, inset: (x: 14pt, y: 8pt), {
  box(width: 100%, stroke: 0.5pt + teal-mid, radius: 5pt, inset: (x: 14pt, y: 11pt), {
    align(center)[
      #text(size: 9pt, weight: 800, fill: amber-deep, tracking: 0.22em)[PRATIMAI · AI HANDOUTS · CLASS 10]
      #v(3pt)
      #text(font: f-display, size: 20.9pt, weight: 800, fill: teal)[My Designer's Certificate]
      #v(5pt)
      #text(size: 10.3pt, style: "italic")[This certifies that designer]
      #v(5pt)
      #line(length: 62%, stroke: 0.8pt + ink-soft)
      #v(2pt)
      #text(size: 8.6pt, fill: ink-soft, weight: 700, tracking: 0.12em)[DESIGNER NAME]
      #v(5pt)
      #text(size: 10.1pt)[has completed the five-case series — from *“AI Around Me”* to *“Decide, Evaluate, Design”* —
        judged models with evidence, audited systems with principles, designed with both gates shut,
        and promised to keep asking:
        *How do I know? · What is missing? · Who made this? · Who is missing? · What is the trick here? · Who is accountable? · What would change my mind?*]
      #v(6pt)
      #grid(columns: (1fr, 1fr, 1fr), column-gutter: 10pt,
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 8.4pt, fill: ink-soft, weight: 700, tracking: 0.1em)[DATE] },
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 8.4pt, fill: ink-soft, weight: 700, tracking: 0.1em)[DESIGNER'S SIGNATURE] },
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 8.4pt, fill: ink-soft, weight: 700, tracking: 0.1em)[GUIDE'S SIGNATURE] },
      )
    ]
  })
}))
#v(2pt)
#align(center, text(size: 8.8pt, fill: ink-soft)[The series is complete: five levels, five badges. Wherever you meet a system that ranks people, the questions travel with you.])
#v(9pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[My badge shelf — five years, five levels]
  v(5pt)
  grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 7pt,
    ..range(5).map(i => {
      let lvls = ("NOTICE", "SORT & PREDICT", "BUILD THE CYCLE", "REASON", "EVALUATE & DESIGN")
      let yrs = ("CLASS 6", "CLASS 7", "CLASS 8", "CLASS 9", "CLASS 10")
      box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (y: 7pt), align(center + horizon, stack(spacing: 3pt,
        circle(radius: 9.5pt, fill: if i == 4 { amber } else { teal-soft }, stroke: 1.1pt + teal-mid, align(center + horizon, text(fill: if i == 4 { white } else { teal }, weight: 800, size: 9.2pt, str(i + 1)))),
        text(font: f-display, size: 8.2pt, weight: 800, fill: teal, lvls.at(i)),
        text(size: 7.8pt, fill: ink-soft, weight: 700, yrs.at(i)),
        text(size: 8.2pt, fill: ink-soft, style: "italic")[badge earned ✓],
      )))
    })
  )
  v(4pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[One line per badge — what each year changed in how I think:]
  ruled-lines(5, lead: 7.9mm)
})
