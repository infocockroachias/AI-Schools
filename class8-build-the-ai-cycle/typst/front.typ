// ============================================================
//  FRONT MATTER — license · acknowledgements · preface
//  (machiatto / MoKa Reads publication specification)
//  Class 8 · "Build the AI Cycle" · Level 3
// ============================================================
#import "template.typ": *

// ------------------------------------------------------------
//  LICENSE PAGE
// ------------------------------------------------------------
#let license-page = {
  front-heading[License]
  text(size: 10.9pt)[
    This handbook is © #datetime.today().display("[year]") the PRATIMAI Curriculum Team. Student-facing
    content — missions, stories, activities and illustrations-as-diagrams — is licensed under the
    *Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International* licence (CC BY-NC-SA 4.0):
    you may share and adapt it for classroom use with attribution, for non-commercial purposes, under the
    same licence. The Typst source files are released under the MIT licence so that any school can rebuild,
    translate and localise the book for its own learners.
  ]
  v(2pt)
  text(size: 10.9pt)[
    Every activity in this book is *unplugged*: no task requires a device, an account, a photo, a voice
    recording or any personal information. All examples use invented people and places.
  ]
  v(9pt)
  block(width: 100%, radius: 5pt, stroke: 0.9pt + ink-soft, fill: white, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, weight: 800, fill: teal-deep, tracking: 0.12em)[THE LICENCE IN PLAIN WORDS]
    v(4pt)
    dtable(("You MAY", "You may NOT"),
      ([ photocopy pages for your class or study group ], [ sell this book or any copy of it ]),
      ([ adapt missions for your learners and share them ], [ remove the credit lines or the licence ]),
      ([ translate the book and keep the same licence ], [ use it to advertise any product or service ]),
      ([ point other schools to the free source files ], [ claim the activities are your own invention ]),
      widths: (1fr, 1fr),
    )
  })
  v(9pt)
  table(stroke: none, columns: 2, inset: (y: 3.2pt),
    [*Series:*], [PRATIMAI · AI Handouts],
    [*Title:*], [Build the AI Cycle — Class 8 · Level 3 · BUILD THE CYCLE],
    [*Author:*], [PRATIMAI Curriculum Team],
    [*Publish Date:*], [#datetime.today().display()],
    [*Published by:*], [PRATIMAI | AI-Schools],
    [*Edition:*], [Machiatto Edition 1.0],
  )
  v(10pt)
  block(width: 100%, radius: 5pt, stroke: 0.7pt + ink-soft, fill: white, inset: (x: 11pt, y: 8pt), {
    text(size: 9.4pt, fill: ink-soft)[
      Set in *Nunito* and *Baloo 2* on warm paper stock, typeset with Typst using the
      *Machiatto* template — which implements the MoKa Reads publication specification:
      title page, license, acknowledgements, preface, contents, then chapters opening
      with a summary and a mini table of contents. Both typefaces are used under the
      SIL Open Font Licence; the template ships under the MIT licence. Every chart, grid
      and pixel drawing in this book is generated in pure Typst code — no images were
      imported, so every page prints crisply at any size.
    ]
  })
}

// ------------------------------------------------------------
//  ACKNOWLEDGEMENTS (rendered in the machiatto cream box)
// ------------------------------------------------------------
#let ack-text = [
  To the Classes 6 and 7 investigators whose case files came back covered in pencil, arrows and
  honest confidence circles — this book is built on your evidence. Your teachers told us which
  missions turned a quiet classroom into a planning meeting, where the instructions needed one
  more worked example, and which questions made the whole class argue productively for ten
  minutes. Every note shaped a page here.

  To the curriculum reviewers who tested every mission for the "unplugged" promise: thank you.
  You caught the draft that quietly wanted a laptop for the proposal task, and you were right.
  An AI builder at this level needs paper, pencils, sticky notes, playing cards and teammates —
  the same tools professional teams use on their first planning day. And to the grown-ups who
  will be asked "who is responsible when the machine gets it wrong?" over dinner: this book
  trains the child to answer you with reasons, not slogans.

  Thanks as well to the open-source community behind Typst and the Machiatto template that gives
  this book its typesetting, and to the designers of Nunito and Baloo 2, whose friendly
  letterforms keep pages of hard planning feeling light. Finally, to the project lead holding
  this book: every blank table, empty checklist and half-drawn cycle map in here was left open
  on purpose — because on a real project, the plan is never handed to you. The next plan in this
  file is yours.
]

// ------------------------------------------------------------
//  PREFACE — how to use · note to grown-ups · journey map
// ------------------------------------------------------------
#let preface-pages = {
  front-heading[How to Use This Handbook]

  text[Welcome back, Detective! Two years of clues sit behind you: in Class 6 you learned to *spot* learning machines, and in Class 7 you operated one — sorting, predicting and watching machines get fooled. This year you take the next step: you *plan and build*. Every serious AI system in the world began as a plan on paper — a sharp problem statement, a list of data, a test, a fair check — exactly the artefacts you will produce in these five chapters. You will still not need a computer, a phone or an app: professional builders plan on whiteboards and paper before they touch a keyboard, and so will you. Every chapter hands you missions (*tasks*), evidence to examine, and empty spaces to fill with your decisions. This book belongs to you: write, draw, cross out, improve.]
  v(8pt)

  // three steps
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 7pt,
    ..range(3).map(i => {
      let steps = ("READ", "DO", "WRITE")
      let texts = (
        [Read the mission twice. Underline anything that puzzles you — puzzles are clues.],
        [Do the task with your partner, group, class or family, exactly as the labels say.],
        [Write what you decided in the spaces, then shade your confidence circles honestly.],
      )
      block(width: 100%, breakable: false, radius: 5pt, stroke: 0.9pt + ink-soft, fill: white, inset: (x: 9pt, y: 8pt), {
        grid(columns: (auto, 1fr), column-gutter: 6.5pt, align: (center, left),
          box(fill: teal, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt, str(i + 1))),
          text(weight: 800, size: 10.6pt, fill: teal, tracking: 0.06em, steps.at(i)),
        )
        v(3pt)
        text(size: 9.8pt, texts.at(i))
      })
    })
  )
  v(10pt)

  text(font: f-display, size: 15pt, weight: 800, fill: teal)[The work-mode labels]
  v(4.5pt)
  grid(columns: (auto, 1fr), column-gutter: 9pt, row-gutter: 4pt, align: (left, left),
    chip[ALONE],  text(size: 10.3pt)[your own case — you investigate by yourself],
    chip[PAIR],   text(size: 10.3pt)[two detectives — share one book, take turns reading codes aloud],
    chip[GROUP],  text(size: 10.3pt)[three to four detectives — decide roles before you start],
    chip[CLASS],  text(size: 10.3pt)[the whole class plays together, led by your teacher],
    chip[HOME],   text(size: 10.3pt)[a mission for home — show a grown-up what you discovered],
  )
  v(10pt)

  note("How to read a mission")[
    #grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      text(font: f-display, weight: 800, size: 12.1pt, fill: amber-deep)[T8-01],
      text(font: f-display, weight: 800, size: 13.9pt, fill: teal)[Mission title],
      text(font: f-display, fill: ink-soft, weight: 800, size: 8.1pt, tracking: 0.12em)[PAIR · 15 MIN],
    )
    #v(3.5pt)
    #box(width: 5pt, height: 5pt, fill: amber, baseline: 28%) #h(4pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em)[QUICK WIN] sits at the right edge of the easier missions.
    #v(4.5pt)
    Every mission has a code like #text(weight: 800)[T8-01] — *T8* means this Class 8 handout, and *01* is the mission number, so your teacher can say "open Task T8-09". The #text(fill: teal, weight: 800)[PAIR] label tells you who to work with, #text(fill: teal, weight: 800)[15 MIN] is your time limit, and #text(fill: amber-deep, weight: 800)[QUICK WIN] marks an easy first success. This book's missions ask you to *decide and justify*, not just to sort — so expect to write a reason beside almost every answer. Nobody fails in this book, because every attempt teaches a clue.
  ]
  v(8pt)

  note("The Question Habit — your superpower")[
    Your three detective questions — *"How do I know?"*, *"What is missing?"*, *"Who made this?"* — get two powerful companions this year. For every plan you meet (including your own): *"Who is missing?"* — which group was never asked, never counted, never helped? And for every claim a machine or a company makes: *"What is the trick here?"* Builders who ask these two questions early catch unfair machines *before* people get hurt. Use all five questions in this book, at home, and on every app that promises to be smart.
  ]

  pagebreak()

  // ---------- note for grown-ups ----------
  front-heading[A Note for Grown-Ups]
  block(width: 100%, radius: 5pt, stroke: 1pt + ink, fill: cream, inset: (x: 12pt, y: 9pt), {
    text(size: 10.3pt)[
      This handout builds *AI understanding* — how machines learn from data and how humans should judge
      them — through 17 paper-and-pencil missions. It is fully *unplugged*: no task requires a device, an
      account, a photo, a voice recording or any personal information. This year the big ideas are the AI
      project cycle (scope, data, build and test, reflect and improve), data representation and sampling,
      consent, a nearest-example classifier run by hand, accuracy, no-code tool types and their limits,
      how text generators predict next words and why they invent, and responsible-use decisions. The best
      help you can give is to ask the Question-Habit questions, praise careful *reasoning* more than quick
      right answers, and treat the confidence circles as honest thinking, not scores. A separate teacher
      pack carries answer notes and rubrics; this book deliberately never prints solutions beside a task —
      only short hints at the very back.
    ]
  })
  v(9pt)
  text(font: f-display, size: 13pt, weight: 800, fill: teal)[Four ways to help — without giving answers]
  v(4.5pt)
  grid(columns: (1fr, 1fr), column-gutter: 7pt, row-gutter: 6pt,
    ..range(4).map(i => {
      let titles = ("Ask about the plan", "Praise the trade-off thinking", "Let the plan fail", "Connect to real decisions")
      let bodies = (
        [When your builder is stuck, ask: *"Who exactly has this problem, and what data would show it?"* A sharp question rebuilds a plan faster than a hint.],
        [Swap "correct!" for *"you noticed the plan helps one group and misses another"* or *"you chose the slower option for a fair reason — that is engineering."*],
        [A plan that fails its test is the most valuable page in the book. Ask *"what will you change in version 2?"* — that loop is the whole subject.],
        [Point at systems around you — the bus route app, the exam result predictor, the clinic's queue machine — and ask *who is missing* from each one's data.],
      )
      block(width: 100%, breakable: false, radius: 5pt, stroke: 0.9pt + ink-soft, fill: white, inset: (x: 9pt, y: 8pt), {
        grid(columns: (auto, 1fr), column-gutter: 6.5pt, align: (center, left),
          box(fill: teal, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt, str(i + 1))),
          text(weight: 800, size: 10.4pt, fill: teal, titles.at(i)),
        )
        v(3pt)
        text(size: 9.7pt, bodies.at(i))
      })
    })
  )
  v(9pt)
  note("If your child asks…")[
    #text(size: 10.1pt)[*"Can I build real AI after this book?"* — Say: you will have built the *plan* the way professionals start — problem, data, test, fairness check. The coding comes years later, and it is the easy-looking part. #h(8pt) *"Why does the chatbot make things up?"* — Say: it writes by guessing likely next words, not by checking facts, so a confident lie and a confident truth are built the same way. That is why this book trains verify-first habits. #h(8pt) *"Is no-code cheating?"* — Say: no. Choosing the right tool, the right data and the right test *is* the thinking; the tool is just the last step.]
  ]
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 1pt + ink, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[SIGNS OF BUILDER GROWTH WORTH PRAISING]
    v(3pt)
    text(size: 9.8pt)[Watch for these quiet changes — they matter more than any correct answer: your child *states the problem precisely* before jumping to solutions · they ask *whose data* is in a system and *whose is missing* · they test a plan before trusting it — and improve it after · they say *it depends* and then explain what it depends on · they name a trade-off — speed against fairness, cheap against accurate — and defend a side. When you spot one, name it: "That is exactly what builders do."]
  })
  pagebreak()

  // ---------- journey map ----------
  front-heading[My AI Journey Map]
  text(size: 8.8pt, fill: ink-soft, weight: 800, tracking: 0.13em)[THE FIVE STRANDS YOU WILL MEET AT EVERY STOP]
  v(5.5pt)
  grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
    ..range(5).map(i => {
      let letters = ("U", "D", "L", "W", "R")
      let names = ("Understand AI", "Data", "Learn", "World", "Responsibility")
      let qs = ("What is the difference between AI, machine learning and a chatbot?", "Who is inside my dataset — and who is missing from it?", "How does a nearest-example learner work — and how do we measure it?", "Which no-code tool fits which problem — and what are its limits?", "Who decides what a machine may do — and who answers for it?")
      block(width: 100%, breakable: false, radius: 5pt, stroke: 0.9pt + ink-soft, fill: white, inset: (x: 6.5pt, y: 7pt), stack(spacing: 3.8pt,
        grid(columns: (auto, 1fr), column-gutter: 4.5pt, align: (center, left),
          circle(radius: 7.7pt, fill: teal, align(center + horizon, text(fill: white, weight: 800, size: 9.5pt, letters.at(i)))),
          text(weight: 800, size: 10.1pt, fill: teal, names.at(i))),
        text(size: 8.7pt, fill: ink-soft, qs.at(i)),
      ))
    })
  )
  v(7pt)
  block(width: 100%, radius: 5pt, fill: amber-soft, inset: (x: 10pt, y: 7pt), {
    text(font: f-display, size: 9.2pt, weight: 800, fill: amber-deep, tracking: 0.13em)[THINKING-TOOLS THREAD]
    v(2pt)
    text(size: 9.7pt)[runs through every stop: *decompose* the problem · *test before trusting* · *improve in loops* · *optimise under limits*]
  })

  v(14pt)
  text(size: 8.8pt, fill: ink-soft, weight: 800, tracking: 0.13em)[THE FIVE STOPS ON YOUR CASE]
  v(7pt)
  // stepper
  box(width: 100%, height: 38mm, {
    place(horizon, dx: 0mm, dy: 4.5mm, line(length: 92%, stroke: (paint: line-soft, thickness: 1.2pt, dash: "dashed")))
    place(horizon, grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
      ..range(5).map(i => {
        let titles = ("The AI Project Cycle", "Data & Fairness", "How Models Learn", "Ethics & Responsible AI", "AI Project Proposal")
        let subs = ("scope · data · build · improve", "sampling · consent · missing groups", "nearest neighbour · accuracy · tools", "next-word guessing · misuse · court", "plan it · peer review · optimise")
        stack(spacing: 4.5pt,
          align(center, circle(radius: 10.5pt, fill: if i == 4 { amber } else { teal }, stroke: 2.5pt + paper, align(center + horizon, text(fill: white, weight: 800, size: 11.6pt, str(i + 1))))),
          align(center, text(size: 9.6pt, weight: 800, fill: teal, titles.at(i))),
          align(center, text(size: 8.1pt, fill: ink-soft, style: "italic", subs.at(i))),
        )
      })
    ))
  })
  v(11pt)
  text(size: 8.8pt, fill: ink-soft, weight: 800, tracking: 0.13em)[BY THE END OF THIS BOOK, I CAN…]
  v(7pt)
  ican((
    [define *AI* and *machine learning* in my own words and place chatbots, image classifiers and recommenders on a who-learns-what map],
    [walk a local problem through the full AI project cycle — on paper],
    [hand-run a nearest-example classifier, compute its accuracy on a test set, and suggest one improvement],
    [audit a small dataset for missing groups and compute percentages per group],
    [explain why collecting data needs *consent* and privacy care],
    [match no-code tool types — classifier, chatbot, predictor — to problems, with inputs, outputs and limits],
    [explain why a text generator can sound right and still be wrong — and verify its claims],
    [apply a fairness checklist and propose fixes for an unfair dataset],
    [make and defend a responsible-use decision about privacy, misinformation or social impact],
    [break a multi-variable problem into parts and find the best choice under limits],
  ))
}
