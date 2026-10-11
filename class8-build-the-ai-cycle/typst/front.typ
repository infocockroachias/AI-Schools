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
    This handbook is © #datetime.today().display("[year]") *PRATIMA AI*. All rights reserved. The title, the missions, the activities, the stories, the diagrams and the design of this series are the intellectual property of PRATIMA AI. No part of this book may be copied, reproduced, sold, redistributed or republished in any form without the written permission of PRATIMA AI. Schools and educators who would like to collaborate with the series — through adoption programmes, translations or local editions — are warmly welcome to contact PRATIMA AI and sign a collaboration agreement.
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
      ([ photocopy pages for use in your own registered classroom ], [ sell this book or any copy of it ]),
      ([ use the missions with your students, on paper ], [ remove the credit lines or the licence ]),
      ([ recommend the series to other schools and teachers ], [ claim the activities are your own invention ]),
      ([ contact PRATIMA AI to sign a collaboration agreement ], [ use the series to advertise any product or service ]),
      widths: (1fr, 1fr),
    )
  })
  v(9pt)
  table(stroke: none, columns: 2, inset: (y: 3.2pt),
    [*Series:*], [PRATIMAI · AI Handouts],
    [*Title:*], [Build the AI Cycle — Class 8 · Level 3 · BUILD THE CYCLE],
    [*Author:*], [PRATIMA AI · Research & Curriculum Team],
    [*Publish Date:*], [#datetime.today().display()],
    [*Published by:*], [PRATIMA AI],
    [*Edition:*], [First Edition · 1.0],
  )
  v(10pt)
  block(width: 100%, radius: 5pt, stroke: 0.7pt + ink-soft, fill: white, inset: (x: 11pt, y: 8pt), {
    text(size: 9.4pt, fill: ink-soft)[
      Set in *Nunito* and *Baloo 2* on warm paper stock. Both typefaces are used under the SIL Open Font Licence. The book's diagrams are printed as crisp, high-resolution figures, and every page was reviewed individually before this edition went to press.
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

  This series was built brick by brick by three teams working as one. The *AI research team* checked every explanation against how machines really learn, so nothing in this book is a myth wearing a friendly font. The *academic team* walked every chapter beside the school syllabus, so each game quietly trains a skill that examinations will ask for later. And the *child-psychology team* shaped the pace of every page: short missions for young attention, quick wins that open every chapter, confidence circles that make honesty feel safe, and space to write on every task — because an idea worked by the hand is remembered by the mind. Alongside them, curriculum reviewers guarded the "unplugged" promise: not one mission in this series asks for a phone, an account or a password.

  Thanks go as well to the designers of Nunito and Baloo 2, whose friendly letterforms keep
  pages of hard planning feeling light. And finally, to the AI Engineer holding this book:
  every blank table, empty checklist and half-drawn cycle map in here was left open on
  purpose — because on a real project, the plan is never handed to you. The next plan in
  this file is yours.
]

// ------------------------------------------------------------
//  PREFACE — how to use · note to adults · journey map
// ------------------------------------------------------------
#let preface-pages = {
  front-heading[How to Use This Handbook]

  text[Welcome back, Engineer! Two years of clues sit behind you: in Class 6 you learned to *spot* learning machines, and in Class 7 you operated one — sorting, predicting and watching machines get fooled. This year you take the next step: you *plan and build*. Every serious AI system in the world began as a plan on paper — a sharp problem statement, a list of data, a test, a fair check — exactly the artefacts you will produce in these five chapters. You will still not need a computer, a phone or an app: professional engineers plan on whiteboards and paper before they touch a keyboard, and so will you. Every chapter hands you missions (*tasks*), evidence to examine, and empty spaces to fill with your decisions. This book belongs to you: write, draw, cross out, improve.]
  v(8pt)

  note("Why this book works the way it does")[
    #text(size: 9.8pt)[This handbook is built around how teenage brains actually learn. Every chapter opens with a quick win — motivation first, theory second. You *do* before you *define*: each idea is met through an experience before it is named, because memory hooks onto action. The confidence circles train metacognition — knowing how sure you are is a skill, and honest rating makes it stronger. Tasks are time-boxed because attention works in sprints; ideas return across chapters on purpose, because a second meeting is what turns exposure into understanding; and every task leaves space to write, because producing your own answer beats re-reading every time. Nothing here can be failed: a wrong answer you go on to check is a clue found early.]
  ]


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
    chip[PAIR],   text(size: 10.3pt)[two engineers — share one book, take turns reading codes aloud],
    chip[GROUP],  text(size: 10.3pt)[three to four engineers — decide roles before you start],
    chip[CLASS],  text(size: 10.3pt)[the whole class plays together, led by your teacher],
    chip[HOME],   text(size: 10.3pt)[a mission for home — show an adult what you discovered],
  )
  v(10pt)

  note("How to read a mission")[
    #grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      text(font: f-display, weight: 800, size: 12.1pt, fill: amber-deep)[T8-01],
      text(font: f-display, weight: 800, size: 13.9pt, fill: teal)[Mission title],
      text(font: f-display, fill: ink-soft, weight: 800, size: 8.1pt, tracking: 0.12em)[PAIR · 15 MIN],
    )
    #v(3.5pt)
    #box(width: 5pt, height: 5pt, fill: amber, baseline: 28%) #h(4pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em)[QUICK WIN] marks the easier missions; #box(width: 5pt, height: 5pt, fill: amber, baseline: 28%) #h(3pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em)[HANDS-ON LAB] marks the working labs — missions where you *build, measure, play or draw*.
    #v(4.5pt)
    Every mission has a code like #text(weight: 800)[T8-01] — *T8* means this Class 8 handout, and *01* is the mission number, so your teacher can say "open Task T8-09". The #text(fill: teal, weight: 800)[PAIR] label tells you who to work with, #text(fill: teal, weight: 800)[15 MIN] is your time limit, and #text(fill: amber-deep, weight: 800)[QUICK WIN] marks an easy first success. This book's missions ask you to *decide and justify*, not just to sort — so expect to write a reason beside almost every answer. Nobody fails in this book, because every attempt teaches a clue.
  ]
  v(8pt)

  note("The Question Habit — your superpower")[
    Your three question-habit questions — *"How do I know?"*, *"What is missing?"*, *"Who made this?"* — get two powerful companions this year. For every plan you meet (including your own): *"Who is missing?"* — which group was never asked, never counted, never helped? And for every claim a machine or a company makes: *"What is the trick here?"* Engineers who ask these two questions early catch unfair machines *before* people get hurt. Use all five questions in this book, at home, and on every app that promises to be smart.
  ]
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[DRILL THE QUESTIONS — ON A REAL PLAN]
    v(3pt)
    text(size: 9.8pt)[A vendor pitches your school: "Our AI invigilation camera flags cheating with 98% accuracy." Before anyone signs anything, run the five questions and write one line each:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 5.5pt, align: (left, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "1")),
      text(size: 9.7pt)[*How do I know?* — Who measured 98%, on which students? #ruled-lines(1, lead: 7.6mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "2")),
      text(size: 9.7pt)[*What is missing?* — What does the accuracy number NOT say? #ruled-lines(1, lead: 7.6mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "3")),
      text(size: 9.7pt)[*Who made this, who is missing?* — Whose faces was it tested on? #ruled-lines(1, lead: 7.6mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "4")),
      text(size: 9.7pt)[*Who answers when it fails?* — Write the sentence you would demand in the contract. #ruled-lines(1, lead: 7.6mm)],
    )
  })


  // ---------- note for adults ----------
  front-heading[A Note for Adults]
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
        [When your engineer is stuck, ask: *"Who exactly has this problem, and what data would show it?"* A sharp question rebuilds a plan faster than a hint.],
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
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[SIGNS OF ENGINEER GROWTH WORTH PRAISING]
    v(3pt)
    text(size: 9.8pt)[Watch for these quiet changes — they matter more than any correct answer: your child *states the problem precisely* before jumping to solutions · they ask *whose data* is in a system and *whose is missing* · they test a plan before trusting it — and improve it after · they say *it depends* and then explain what it depends on · they name a trade-off — speed against fairness, cheap against accurate — and defend a side. When you spot one, name it: "That is exactly what engineers do."]
  })

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

  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[THREE PLACES I WILL SPOT DATA THIS WEEK]
    v(3pt)
    text(size: 9.8pt)[An engineer plans with data that already exists. Name three places data about YOU is produced this week — and tick whether anyone asked:]
    v(4pt)
    grid(columns: (1fr, auto, auto), column-gutter: 8pt, row-gutter: 5pt, align: (horizon, center, center),
      text(size: 9.7pt)[1. #box(width: 82%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt, fill: ink-soft)[asked?],
      text(size: 8.8pt, fill: ink-soft)[aware?],
      text(size: 9.7pt)[2. #box(width: 82%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt)[Y / N],
      text(size: 8.8pt)[Y / N],
      text(size: 9.7pt)[3. #box(width: 82%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt)[Y / N],
      text(size: 8.8pt)[Y / N],
    )
  })
  v(13pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + ink, fill: white, inset: (x: 12pt, y: 9pt), {
    grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      box(fill: amber, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, font: f-display, size: 8.4pt, weight: 800, tracking: 0.1em, "DAY 1")),
      text(font: f-display, size: 12.4pt, weight: 800, fill: teal)[My starting line — a pledge to the plan],
      text(font: f-display, size: 8.1pt, fill: ink-soft, weight: 800, tracking: 0.12em)[2 MIN],
    )
    v(4.5pt)
    text(size: 10.1pt)[Fill this in before Chapter 1. On the last page you will re-read it next to your tallies — the gap between the two is this year's proof.]
    v(5pt)
    text(size: 10.1pt)[One real problem near me I would love to scope properly this year:]; ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[The data I suspect that problem already produces, without anyone collecting it:]; ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[My honesty clause — what I will do when a plan of mine fails its own test:]; ruled-lines(1, lead: 8.6mm)
    v(6pt)
    grid(columns: 2, column-gutter: 16pt,
      text(size: 9.6pt)[Signed: #box(width: 62%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
      text(size: 9.6pt)[Date: #box(width: 55%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
    )
  })
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[FIRST IMPRESSIONS — THE ENGINEER'S FLIP TEST]
    v(3pt)
    text(size: 9.8pt)[Flip through this book for two minutes, the way an engineer first walks a site. Three things I noticed that I intend to question later:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 5pt, align: (horizon, horizon),
      text(size: 9.5pt, weight: 800, fill: teal)[1.], text(size: 9.7pt)[#box(width: 90%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 9.5pt, weight: 800, fill: teal)[2.], text(size: 9.7pt)[#box(width: 90%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 9.5pt, weight: 800, fill: teal)[3.], text(size: 9.7pt)[#box(width: 90%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
    )
  })
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + amber, fill: amber-soft, inset: (x: 11pt, y: 9pt), {
    grid(columns: (auto, 1fr), column-gutter: 8pt, align: (left, horizon),
      box(fill: amber, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, font: f-display, size: 8.4pt, weight: 800, tracking: 0.1em, "CARD")),
      text(font: f-display, size: 11.6pt, weight: 800, fill: amber-deep)[The engineer's five questions — my pocket copy],
    )
    v(5pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 4.5pt, align: (left, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "1")),
      text(size: 9.8pt)[*How do I know?* — who measured, on what data?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "2")),
      text(size: 9.8pt)[*What is missing?* — which group never got a say?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "3")),
      text(size: 9.8pt)[*Who made this?* — and who profits from my trust?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "4")),
      text(size: 9.8pt)[*Who is missing?* — whose faces were never in the training set?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "5")),
      text(size: 9.8pt)[*What is the trick here?* — what would the honest test have been?],
    )
    v(5.5pt)
    text(size: 9.6pt, style: "italic", fill: ink-soft)[The question I will use most this year, and where I first plan to use it: #box(width: 52%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)]
  })
}
