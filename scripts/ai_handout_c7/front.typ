// ============================================================
//  FRONT MATTER — license · acknowledgements · preface
//  (machiatto / MoKa Reads publication specification)
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
    [*Title:*], [How Machines Learn — Class 7 · Level 2 · SORT & PREDICT],
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
  To the teachers and their Classes 6 and 7 who piloted every mission with pencils, paper
  and great patience — your classroom notes shaped this book. You told us which tasks made
  the room go quiet with thinking, which ones made it erupt in argument, and where the
  instructions needed one more example. Every one of those notes made a page here better.

  To the curriculum reviewers who guarded the "unplugged" promise on every page, thank you.
  You caught the three places where a task quietly expected a phone, and you were right:
  an investigator's tools are paper, pencils, patience and other people. And to the grown-ups at
  home who will be asked "how does the machine know THAT?" at the dinner table — this book
  is for those conversations, too. The best missions end with a child teaching an adult.

  Thanks as well to the open-source community behind Typst and the Machiatto template
  that gives this book its typesetting, and to the type designers of Nunito and Baloo 2,
  whose friendly letterforms keep pages of hard thinking feeling light. Finally, to
  the investigator holding this book: the reviewers never got to meet you, but every
  confidence circle, empty line and blank chart in here was left empty on purpose —
  because the last author of this case file is you.
]

// ------------------------------------------------------------
//  PREFACE — how to use · note to grown-ups · journey map
// ------------------------------------------------------------
#let preface-pages = {
  front-heading[How to Use This Handbook]

  text[Welcome back, Detective! Last year you learned to *spot* smart machines. This year you go inside their workshop: you will find out how a machine learns *without being told the rules* — and you will train a few learners yourself. You will still not need a computer, a phone or an app. Your tools are the same as ever: paper, pencils, cards, your classmates, and your three questions. Every chapter hands you missions (we call them *tasks*), evidence to examine, and empty spaces to fill with what you discover. Good investigators write everything down, so this book belongs to you: write, draw, tick, cross out and try again.]
  v(8pt)

  // three steps
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 7pt,
    ..range(3).map(i => {
      let steps = ("READ", "DO", "WRITE")
      let texts = (
        [Read the mission twice. Underline anything that puzzles you — puzzles are clues.],
        [Do the task with your partner, group, class or family, exactly as the labels say.],
        [Write what you saw in the spaces, then shade your confidence circles honestly.],
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
      text(font: f-display, weight: 800, size: 12.1pt, fill: amber-deep)[T7-01],
      text(font: f-display, weight: 800, size: 13.9pt, fill: teal)[Mission title],
      text(font: f-display, fill: ink-soft, weight: 800, size: 8.1pt, tracking: 0.12em)[GROUP · 15 MIN],
    )
    #v(3.5pt)
    #box(width: 5pt, height: 5pt, fill: amber, baseline: 28%) #h(4pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em)[QUICK WIN] sits at the right edge of the easier missions.
    #v(4.5pt)
    Every mission has a code like #text(weight: 800)[T7-01] — *T7* means this Class 7 handout, and *01* is the mission number, so your teacher can say "open Task T7-11". The #text(fill: teal, weight: 800)[GROUP] label tells you who to work with, #text(fill: teal, weight: 800)[15 MIN] is your time limit, and #text(fill: amber-deep, weight: 800)[QUICK WIN] marks an easy first success. Chapters 1 and 2 both open with a Quick Win to warm up your investigator muscles — nobody fails in this book, because every attempt teaches a clue.
  ]
  v(8pt)

  note("The Question Habit — your superpower")[
    Three questions make you a sharper investigator than any machine: *"How do I know?"* · *"What is missing?"* · *"Who made this?"* This year they get a fourth companion you will use on every chart and every claim: *"What is the trick here?"* Use all four in this book, on the internet, in the news — and whenever a machine gives you an answer that looks too perfect.
  ]

  pagebreak()

  // ---------- note for grown-ups ----------
  front-heading[A Note for Grown-Ups]
  block(width: 100%, radius: 5pt, stroke: 1pt + ink, fill: cream, inset: (x: 12pt, y: 9pt), {
    text(size: 10.3pt)[
      This handout builds *AI understanding* — how machines learn from data and how humans should judge
      them — through 17 paper-and-pencil missions. It is fully *unplugged*: no task requires a device, an
      account, a photo, a voice recording or any personal information. This year the big ideas are training
      and testing, the three learning jobs (classification, regression, clustering), how machines see, read
      and recommend, charts and how they mislead, bias, fake content, and responsibility. The best help you
      can give is to ask the Question-Habit questions, praise careful *reasoning* more than quick right
      answers, and treat the confidence circles as honest thinking, not scores. A separate teacher pack
      carries answer notes and rubrics; this book deliberately never prints solutions beside a task — only
      short hints at the very back.
    ]
  })
  v(9pt)
  text(font: f-display, size: 13pt, weight: 800, fill: teal)[Four ways to help — without giving answers]
  v(4.5pt)
  grid(columns: (1fr, 1fr), column-gutter: 7pt, row-gutter: 6pt,
    ..range(4).map(i => {
      let titles = ("Ask, don't tell", "Praise the reasoning", "Let it be wrong", "Connect to real life")
      let bodies = (
        [When your investigator is stuck, ask: *“What have you tried? What data does the machine need — and where would it get that?”* A good question unblocks; a quick answer un-trains.],
        [Swap “correct!” for *“I like how you checked that”* or *“you changed your mind when the evidence changed — that is real investigation.”*],
        [A confident wrong answer is useful material. Ask *“how sure are you — and what would change your mind?”* Updating a belief is the skill this book teaches.],
        [Point at the helpers around you — the map app, the shop scanner, the video suggestions — and ask which *three learning jobs* each one is doing.],
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
    #text(size: 10.1pt)[*“How does the machine learn without being told?”* — Say: it is like practising questions with answers, then facing a hidden exam. Patterns it found — not rules we wrote. #h(8pt) *“Is it always fair?”* — Say: not always. If its examples were one-sided, its answers will lean too. That is why this book trains *what is missing?* thinking. #h(8pt) *“Who is to blame when it goes wrong?”* — Say: responsibility follows control, and machines control nothing — so the answer is always *people*: the makers, the choosers of data, the deployers.]
  ]
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 1pt + ink, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[SIGNS OF INVESTIGATOR GROWTH WORTH PRAISING]
    v(3pt)
    text(size: 9.8pt)[Watch for these quiet changes — they matter more than any correct answer: your child *asks how sure* they are before answering · they *check a second source* without being told · they *change their mind* when the evidence changes — and say why · they name a chart's *trick*, not just its picture · they explain a machine's *benefit AND limit* in one sentence. When you spot one, name it: “That is exactly what investigators do.”]
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
      let qs = ("What are the three jobs of a learning machine?", "What data does a machine need — and how do I read it?", "How does training work — and when does it fail?", "Where is AI working in India right now?", "Who is harmed when AI goes wrong — and who answers?")
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
    text(size: 9.7pt)[runs through every stop: *patterns* · *if-then rules* · *elimination* · *how sure am I?*]
  })

  v(14pt)
  text(size: 8.8pt, fill: ink-soft, weight: 800, tracking: 0.13em)[THE FIVE STOPS ON YOUR CASE]
  v(7pt)
  // stepper
  box(width: 100%, height: 38mm, {
    place(horizon, dx: 0mm, dy: 4.5mm, line(length: 92%, stroke: (paint: line-soft, thickness: 1.2pt, dash: "dashed")))
    place(horizon, grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
      ..range(5).map(i => {
        let titles = ("The Learning Machine", "Machines That See, Read and Recommend", "AI at Work in India", "When AI Gets It Wrong", "Class Survey Machine")
        let subs = ("classification · prediction · clustering", "pixels · word counts · people like you", "five sectors · reading charts", "bias · fakes · responsibility", "our own prediction machine")
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
    [tell *classification*, *regression* (predicting a number) and *clustering* apart, with examples from my classroom],
    [explain training vs testing as "practice questions vs the real exam"],
    [explain why a few one-sided examples fool a learner — and why many varied examples help],
    [collect structured data with a survey, and draw and read bar, line and pie charts],
    [spot a misleading chart — and name the trick it uses],
    [explain at idea level how a machine *sees*, *reads* and *recommends*],
    [describe one AI helper in healthcare, education, transport, agriculture or communication — with one benefit and one limit],
    [explain how one-sided examples cause unfair results — and propose a fix],
    [apply three checks — *source*, *evidence*, *emotion* — to catch fake or edited content],
    [compare solving a task with fixed if-then rules vs learning from examples],
  ))
}
  ))
}
