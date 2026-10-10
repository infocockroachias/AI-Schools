// ============================================================
//  FRONT MATTER — license · acknowledgements · preface
//  (machiatto / MoKa Reads publication specification)
//  Class 9 · "The Logic Under the Magic" · Level 4
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
    recording or any personal information. All examples use invented people and places. The Class 9
    material is built on the last official CBSE Class IX AI curriculum structure (2025-26), ICSE
    research-and-AI units and NCERT's computational-thinking direction — with programming deliberately
    kept out: every mechanism here runs on paper first.
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
    [*Title:*], [The Logic Under the Magic — Class 9 · Level 4 · REASON],
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
      SIL Open Font Licence; the template ships under the MIT licence. Every chart, grid,
      and plotted dot in this book is generated in pure Typst code — no images were
      imported, so every page prints crisply at any size.
    ]
  })
}

// ------------------------------------------------------------
//  ACKNOWLEDGEMENTS (rendered in the machiatto cream box)
// ------------------------------------------------------------
#let ack-text = [
  To the Classes 6, 7 and 8 investigators whose case files walked the whole road with us — from spotting
  learning machines to planning them on paper. Your notebooks convinced us that school students can run
  real statistics, real probability and real graph criticism when the numbers belong to problems they
  care about. This book finally hands you the engine room: the mathematics under the machine.

  To the maths teachers who read every mission and said "yes — but make the outlier crueler, make the
  dice honest, make the best-fit line earn itself": thank you. You protected the book from fake maths
  and from the greater sin, boring maths. To the reviewers who kept the unplugged promise through a
  chapter that could easily have become a software tutorial — the paper survived, and so did the rigour.
  And to the grown-ups who will be asked "is the AI's average the same as MY average?" at the dinner
  table: by the last page, your student will answer you with a worked example.

  Thanks as well to the open-source community behind Typst and the Machiatto template that gives this
  book its typesetting, and to the designers of Nunito and Baloo 2, whose friendly letterforms keep
  pages of hard reasoning feeling light. Finally, to the analyst holding this book: every dice roll
  you have not rolled yet, every line you have not drawn yet and every graph you have not yet caught
  lying is the real content of this case file. We only set the stage. You bring the evidence.
]

// ------------------------------------------------------------
//  PREFACE — how to use · note to grown-ups · journey map
// ------------------------------------------------------------
#let preface-pages = {
  front-heading[How to Use This Handbook]

  text[Welcome back, Analyst. Three years of evidence sit behind you: in Class 6 you *spotted* learning machines, in Class 7 you *trained and tested* them, in Class 8 you *planned and defended* them. Now comes the question every honest builder eventually faces: *why does any of it work?* This year you go under the hood — and the hood opens with mathematics, not code. Averages that mislead, probability you can roll on a desk, lines you draw through real dots, neighbours you classify with a ruler: every mechanism that makes AI possible, run by hand. And every place the same mathematics lets machines — and their marketing — fail. You will still need no computer. A pencil, a ruler, a pair of dice and a suspicious mind are the complete toolkit.]
  v(8pt)

  // three steps
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 7pt,
    ..range(3).map(i => {
      let steps = ("READ", "DO", "WRITE")
      let texts = (
        [Read the mission twice. Underline anything that puzzles you — puzzles are clues.],
        [Do the task with your partner, group, class or family, exactly as the labels say.],
        [Write what you computed, then shade your confidence circles honestly.],
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
    chip[PAIR],   text(size: 10.3pt)[two analysts — share one book, take turns reading codes aloud],
    chip[GROUP],  text(size: 10.3pt)[three to four analysts — decide roles before you start],
    chip[CLASS],  text(size: 10.3pt)[the whole class plays together, led by your teacher],
    chip[HOME],   text(size: 10.3pt)[a mission for home — show a grown-up what you discovered],
  )
  v(10pt)

  note("How to read a mission")[
    #grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      text(font: f-display, weight: 800, size: 12.1pt, fill: amber-deep)[T9-10],
      text(font: f-display, weight: 800, size: 13.9pt, fill: teal)[Mission title],
      text(font: f-display, fill: ink-soft, weight: 800, size: 8.1pt, tracking: 0.12em)[ALONE · 15 MIN],
    )
    #v(3.5pt)
    #box(width: 5pt, height: 5pt, fill: amber, baseline: 28%) #h(4pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em)[QUICK WIN] sits at the right edge of the easier missions.
    #v(4.5pt)
    Every mission has a code like #text(weight: 800)[T9-10] — *T9* means this Class 9 handout, and *10* is the mission number, so your teacher can say "open Task T9-13". The #text(fill: teal, weight: 800)[ALONE] label tells you who to work with, #text(fill: teal, weight: 800)[15 MIN] is your time limit, and #text(fill: amber-deep, weight: 800)[QUICK WIN] marks an easy first success. This book's missions ask for *working, not just answers* — show the division, draw the line, mark the outlier. In mathematics, the working IS the reasoning.
  ]
  v(8pt)

  note("The Question Habit — your superpower")[
    Your five questions — *"How do I know?"*, *"What is missing?"*, *"Who made this?"*, *"Who is missing?"*, *"What is the trick here?"* — meet their sharpest field of play yet: numbers themselves. This year add the analyst's suffix to every statistic you meet: *"compared to WHAT, over WHICH period, leaving out WHOM?"* An average without its context is a magic trick. Your job, from page one, is to be the person who asks how the trick is done.
  ]

  pagebreak()

  // ---------- note for grown-ups ----------
  front-heading[A Note for Grown-Ups]
  block(width: 100%, radius: 5pt, stroke: 1pt + ink, fill: cream, inset: (x: 12pt, y: 9pt), {
    text(size: 10.3pt)[
      This handout builds *AI understanding* — how machines learn from data and how humans should judge
      them — through 21 paper-and-pencil missions. It is fully *unplugged*: no task requires a device, an
      account, a photo, a voice recording or any personal information. This year the big ideas are the
      project cycle with 4Ws problem scoping, stakeholders and system maps; data literacy and graph
      criticism; the statistics and probability that power learning (mean, median, mode, spread,
      likelihood, line of best fit, nearest neighbours); generative AI at concept level — how text
      generators guess and why they invent; and ethical reasoning with SDG-linked project briefs. The
      mathematics stays inside the Class 9 syllabus — statistics, probability, coordinate geometry —
      but every formula is earned through an experience first. The best help you can give is to ask for
      the *working*, not just the answer, and to treat confidence circles as honest thinking, not scores.
      A separate teacher pack carries answer notes and rubrics; this book deliberately never prints
      solutions beside a task — only short hints at the very back.
    ]
  })
  v(9pt)
  text(font: f-display, size: 13pt, weight: 800, fill: teal)[Four ways to help — without giving answers]
  v(4.5pt)
  grid(columns: (1fr, 1fr), column-gutter: 7pt, row-gutter: 6pt,
    ..range(4).map(i => {
      let titles = ("Ask for the working", "Praise the scepticism", "Let the dice be rolled", "Connect to the news")
      let bodies = (
        [When your analyst is stuck, ask: *"show me the calculation you trust least"* — the weakest step is where the real lesson lives.],
        [Swap "correct!" for *"you asked what the average was hiding"* or *"you checked a second source before believing."* Scepticism is a skill; name it when you see it.],
        [Probability becomes real the first time a prediction fails. Let the coins be flipped, the tally be messy, the surprise be genuine.],
        [When a headline quotes a number, ask *"what would YOU need to know before trusting it?"* This book trains exactly that reflex.],
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
    #text(size: 10.1pt)[*"Is the maths in this book the REAL maths AI uses?"* — Say: yes, at its foundation. Averages, spread, probability, best-fit lines and nearest-neighbour distance are genuinely how learning systems reason; the classroom versions are run by hand instead of by silicon. #h(8pt) *"Why does the chatbot invent things?"* — Say: it predicts likely next words from patterns; likely is not the same as true. This book builds a next-word table by hand so your child can see the invention happen. #h(8pt) *"Will this help in exams?"* — Say: the statistics, probability and graph-reading are syllabus mathematics — but the habit of asking what a number hides is worth more than any single mark.]
  ]
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 1pt + ink, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[SIGNS OF ANALYST GROWTH WORTH PRAISING]
    v(3pt)
    text(size: 9.8pt)[Watch for these quiet changes — they matter more than any correct answer: your child *shows the working* without being asked · they say *"one number can't tell the whole story"* and mean it · they *roll the dice twice* when a result surprises them · they ask *"compared to what?"* at advertisements and headlines · they defend a claim with *evidence and its limit* in the same sentence. When you spot one, name it: "That is exactly what analysts do."]
  })
  pagebreak()

  // ---------- journey map ----------
  front-heading[My AI Journey Map]
  text(size: 8.8pt, fill: ink-soft, weight: 800, tracking: 0.13em)[THE FIVE STRANDS YOU WILL MEET AT EVERY STOP]
  v(5pt)
  grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
    ..range(5).map(i => {
      let letters = ("U", "D", "L", "W", "R")
      let names = ("Understand AI", "Data", "Learn", "World", "Responsibility")
      let qs = ("How do rule-based and learning systems differ — and where do AI, ML and DL sit?", "Can I judge a dataset's quality — and catch a graph that lies?", "Which mathematics makes learning possible: averages, probability, best-fit lines?", "How does generative AI really work — and how do I verify it?", "Who gains, who loses, who decides — and how do I reason about it?")
      block(width: 100%, breakable: false, radius: 5pt, stroke: 0.9pt + ink-soft, fill: white, inset: (x: 6.5pt, y: 7pt), stack(spacing: 3.4pt,
        grid(columns: (auto, 1fr), column-gutter: 4.5pt, align: (center, left),
          circle(radius: 7.7pt, fill: teal, align(center + horizon, text(fill: white, weight: 800, size: 9.5pt, letters.at(i)))),
          text(weight: 800, size: 10pt, fill: teal, names.at(i))),
        text(size: 8.5pt, fill: ink-soft, qs.at(i)),
      ))
    })
  )
  v(6pt)
  block(width: 100%, radius: 5pt, fill: amber-soft, inset: (x: 10pt, y: 6.5pt), {
    text(font: f-display, size: 9.2pt, weight: 800, fill: amber-deep, tracking: 0.13em)[THINKING-TOOLS THREAD]
    v(2pt)
    text(size: 9.7pt)[runs through every stop: *decompose* the problem · *compute before you claim* · *compare competing explanations* · *trace the procedure, step by step*]
  })
  v(10pt)
  text(size: 8.8pt, fill: ink-soft, weight: 800, tracking: 0.13em)[THE FIVE STOPS ON YOUR CASE]
  v(6pt)
  // stepper
  box(width: 100%, height: 33mm, {
    place(horizon, dx: 0mm, dy: 4mm, line(length: 92%, stroke: (paint: line-soft, thickness: 1.2pt, dash: "dashed")))
    place(horizon, grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
      ..range(5).map(i => {
        let titles = ("Reflect, Scope, Plan", "Data Literacy", "The Maths Behind AI", "Generative AI & Ethics", "SDG-linked AI Brief")
        let subs = ("4Ws · stakeholders · system maps", "types · quality · misleading graphs", "averages · probability · best fit · kNN", "next-word guessing · deepfakes · verify", "brief · ethics panel · flowchart trace")
        stack(spacing: 4pt,
          align(center, circle(radius: 10.5pt, fill: if i == 4 { amber } else { teal }, stroke: 2.5pt + paper, align(center + horizon, text(fill: white, weight: 800, size: 11.6pt, str(i + 1))))),
          align(center, text(size: 9.4pt, weight: 800, fill: teal, titles.at(i))),
          align(center, text(size: 8pt, fill: ink-soft, style: "italic", subs.at(i))),
        )
      })
    ))
  })
  v(8pt)
  text(size: 8.8pt, fill: ink-soft, weight: 800, tracking: 0.13em)[BY THE END OF THIS BOOK, I CAN…]
  v(5pt)
  ican((
    [tell AI, machine learning and deep learning apart — and rule-based from learning-based systems],
    [run the project cycle with 4Ws problem scoping, stakeholders and a system map of data features],
    [classify data as qualitative or quantitative, structured or unstructured — and judge its quality and sources],
    [read a graph critically and name its trick: truncated axes, cherry-picking, misleading pie shares],
    [compute and interpret mean, median, mode and spread — and explain when an average misleads],
    [compute simple probabilities and connect them to a machine's "confidence"],
    [fit a line by eye through real data, predict with it, and explain why correlation is not causation],
    [classify a new point by nearest labelled neighbours, with distances as evidence],
    [explain generative AI conceptually — and run a verification routine on anything it produces],
    [argue an AI case from several stakeholders' views, with an ethics checklist],
    [link an AI idea to an SDG with a data plan and an ethics note],
    [express a decision procedure as a flowchart and trace it by hand, step by step],
  ))
}
