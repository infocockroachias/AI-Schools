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
    [*Title:*], [AI Around Me — Class 6 · Level 1 · NOTICE],
    [*Author:*], [PRATIMA AI · Research & Curriculum Team],
    [*Publish Date:*], [#datetime.today().display()],
    [*Published by:*], [PRATIMA AI],
    [*Edition:*], [First Edition · 1.0],
  )
  v(10pt)
  block(width: 100%, radius: 5pt, stroke: 0.7pt + ink-soft, fill: white, inset: (x: 11pt, y: 8pt), {
    text(size: 9.4pt, fill: ink-soft)[
      Set in *Nunito* and *Baloo 2* on warm paper stock. Both typefaces are used under the SIL Open Font Licence. Every chart, grid, diagram and pixel drawing in this book is drawn as crisp vector art, so each page prints cleanly at any size.
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

  This series was built brick by brick by three teams working as one. The *AI research team* checked every explanation against how machines really learn, so nothing in this book is a myth wearing a friendly font. The *academic team* walked every chapter beside the school syllabus, so each game quietly trains a skill that examinations will ask for later. And the *child-psychology team* shaped the pace of every page: short missions for young attention, quick wins that open every chapter, confidence circles that make honesty feel safe, and space to write on every task — because an idea worked by the hand is remembered by the mind. Alongside them, curriculum reviewers guarded the "unplugged" promise: not one mission in this series asks for a phone, an account or a password.

  Thanks go as well to the designers of Nunito and Baloo 2, whose friendly letterforms keep
  pages of hard thinking feeling light. And finally, to the detective holding this book:
  every confidence circle, empty line and doodle box in here was left blank on purpose —
  because the last author of this case file is you.
]

// ------------------------------------------------------------
//  PREFACE — how to use · note to grown-ups · journey map
// ------------------------------------------------------------
#let preface-pages = {
  front-heading[How to Use This Handbook]

  text[Welcome, Detective! This book is your *case file* for the biggest mystery of our time: machines that seem smart. You will not need a computer, a phone or an app — your tools are paper, pencils, cards and your own sharp eyes. Every chapter hands you missions (we call them *tasks*), strange clues to examine, and empty spaces to fill with what you discover. Real detectives write everything down, so this book belongs to you: write, draw, tick, cross out and try again.]
  v(8pt)

  note("Why this book works the way it does")[
    #text(size: 9.8pt)[Your brain learns by *doing*, not by reading about doing. That is why every chapter opens with a quick win, explains only after you have tried, and asks you to *write* — writing pulls an idea from half-known to known. The confidence circles are not decoration: asking *how sure am I?* is a real thinking skill (psychologists call it metacognition), and it is the same habit scientists use. Missions are short because attention works in sprints. Ideas return in later chapters on purpose — like meeting a stranger twice, until they feel like a friend. And nothing here can be failed: a wrong answer you go on to check is just a clue you found early.]
  ]


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
    { ico("user", size: 9pt, fill: teal); h(4.5pt); chip[ALONE] },  text(size: 10.3pt)[your own case — you investigate by yourself],
    { ico("pair", size: 9pt, fill: teal); h(4.5pt); chip[PAIR] },   text(size: 10.3pt)[two detectives — share one book, take turns reading codes aloud],
    { ico("group", size: 9pt, fill: teal); h(4.5pt); chip[GROUP] },  text(size: 10.3pt)[three to four detectives — decide roles before you start],
    { ico("class", size: 9pt, fill: teal); h(4.5pt); chip[CLASS] },  text(size: 10.3pt)[the whole class plays together, led by your teacher],
    { ico("home", size: 9pt, fill: teal); h(4.5pt); chip[HOME] },   text(size: 10.3pt)[a mission for home — show a grown-up what you discovered],
  )
  v(10pt)

  note("How to read a mission")[
    #grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      text(font: f-display, weight: 800, size: 12.1pt, fill: amber-deep)[T6-01],
      text(font: f-display, weight: 800, size: 13.9pt, fill: teal)[Mission title],
      text(font: f-display, fill: ink-soft, weight: 800, size: 8.1pt, tracking: 0.12em)[PAIR · 10 MIN],
    )
    #v(3.5pt)
    #ico("star", size: 8.4pt) #h(4pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em)[QUICK WIN] sits at the right edge of the easier missions.
    #v(4.5pt)
    Every mission has a code like #text(weight: 800)[T6-01] — *T6* means this Class 6 handout, and *01* is the mission number, so your teacher can say "open Task T6-08". The #text(fill: teal, weight: 800)[PAIR] label tells you who to work with, #text(fill: teal, weight: 800)[10 MIN] is your time limit, and #text(fill: amber-deep, weight: 800)[QUICK WIN] marks an easy first success. Chapters 1 and 2 both start with a Quick Win to warm up your detective muscles — nobody fails in this book, because every attempt teaches a clue.
  ]
  v(8pt)

  note("The Question Habit — your superpower")[
    Three questions make you a sharper detective than any machine: *"How do I know?"* · *"What is missing?"* · *"Who made this?"* Use them in this book, on the internet, in the news, and when a machine gives you an answer that looks too perfect. Detectives are not people who know everything — they are people who *keep asking*.
  ]
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[PRACTISE THE THREE QUESTIONS — RIGHT NOW]
    v(3pt)
    text(size: 9.8pt)[Your friend shows you a video: "A robot in Bengaluru wrote a poem all by itself!" Hold each question up to the claim, one at a time:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 5.5pt, align: (left, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "1")),
      text(size: 9.7pt)[*How do I know?* — What would prove the robot wrote it alone? #ruled-lines(1, lead: 7.8mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "2")),
      text(size: 9.7pt)[*What is missing?* — What does the video NOT show? #ruled-lines(1, lead: 7.8mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "3")),
      text(size: 9.7pt)[*Who made this?* — Who built the robot, and who posted the video? #ruled-lines(1, lead: 7.8mm)],
    )
  })


  // ---------- note for grown-ups ----------
  front-heading[A Note for Grown-Ups]
  block(width: 100%, radius: 5pt, stroke: 1pt + ink, fill: cream, inset: (x: 12pt, y: 9pt), {
    text(size: 10.3pt)[
      This handout builds *AI understanding* — how machines learn from data and how humans should judge
      them — through 20 paper-and-pencil missions. It is fully *unplugged*: no task requires a device, an
      account, a photo, a voice recording or any personal information. The best help you can give is to ask
      the three Question-Habit questions, praise careful *reasoning* more than quick right answers, and
      treat the confidence circles as honest thinking, not scores. A separate teacher pack carries answer
      notes and rubrics; this book deliberately never prints solutions beside a task.
    ]
  })
  v(9pt)
  text(font: f-display, size: 13pt, weight: 800, fill: teal)[Four ways to help — without giving answers]
  v(4.5pt)
  grid(columns: (1fr, 1fr), column-gutter: 7pt, row-gutter: 6pt,
    ..range(4).map(i => {
      let titles = ("Ask, don't tell", "Praise the reasoning", "Let it be wrong", "Connect to real life")
      let bodies = (
        [When your detective is stuck, ask: *“What have you tried? What does the machine know — and how would it know that?”* A good question unblocks; a quick answer un-trains.],
        [Swap “correct!” for *“I like how you checked that”* or *“you changed your mind when the evidence changed — that is real detective work.”*],
        [A confident wrong answer is useful material. Ask *“how sure are you — and what would change your mind?”* Changing a belief is the skill this book teaches.],
        [Point at the machines around you — the washing machine, the map app, the shop's barcode — and ask which ones *follow steps* and which ones *learned from examples*.],
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
    #text(size: 10.1pt)[*“Is the machine actually thinking?”* — Say: it is finding patterns in examples, the way you learned what a mango is. It does the pattern part fast; *you* do the judging part better. #h(8pt) *“Can it be wrong?”* — Say: always possibly. That is why every mission here ends with *how sure am I?* — the same question scientists, judges and pilots use. #h(8pt) *“Is AI dangerous?”* — Say: tools take after their makers. That is why this book keeps asking *who made this, and who is responsible?* — the question that keeps people in charge.]
  ]
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 1pt + ink, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[SIGNS OF DETECTIVE GROWTH WORTH PRAISING]
    v(3pt)
    text(size: 9.8pt)[Watch for these quiet changes — they matter more than any correct answer: your child *asks how sure* they are before answering · they *check a second source* without being told · they *change their mind* when the evidence changes — and say why · they explain a machine's *limit*, not just its magic · they teach the three questions to a younger sibling. When you spot one, name it: “That is exactly what detectives do.”]
  })

  // ---------- journey map ----------
  front-heading[My AI Journey Map]
  text(size: 8.8pt, fill: ink-soft, weight: 800, tracking: 0.13em)[THE FIVE STRANDS YOU WILL MEET AT EVERY STOP]
  v(5.5pt)
  grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
    ..range(5).map(i => {
      let letters = ("U", "D", "L", "W", "R")
      let names = ("Understand AI", "Data", "Learn", "World", "Responsibility")
      let qs = ("What is AI — and what is it NOT?", "What do machines learn from?", "How do machines get better?", "Where is AI hiding near me?", "How do I stay safe and fair?")
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
    text(size: 9.7pt)[runs through every stop: *exact steps* · *patterns* · *if-then rules* · *how sure am I?*]
  })

  v(14pt)
  text(size: 8.8pt, fill: ink-soft, weight: 800, tracking: 0.13em)[THE FIVE STOPS ON YOUR CASE]
  v(7pt)
  // stepper
  box(width: 100%, height: 38mm, {
    place(horizon, dx: 0mm, dy: 4.5mm, line(length: 92%, stroke: (paint: line-soft, thickness: 1.2pt, dash: "dashed")))
    place(horizon, grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
      ..range(5).map(i => {
        let titles = ("Machines That Seem Smart", "Data: The Food of AI", "Patterns & Decisions", "Be a Smart Digital Citizen", "My Neighbourhood AI Investigation")
        let subs = ("rule-followers vs learners", "numbers, words, pictures, sounds", "if-then trees · how sure am I?", "privacy · passwords · fakes", "your own investigation")
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
    [say what AI is — and what it is not — using examples from my own day],
    [name two things people do better than machines and two things machines do better],
    [name the four kinds of data and sort them into a tidy table],
    [turn a simple picture into numbers on a grid, like a real camera does],
    [find a pattern, predict what comes next, and say *how sure* I am],
    [describe three ways machines learn: labelled examples, grouping, trial and reward],
    [point to AI at home, at school and in my neighbourhood, and name the data it uses],
    [use my five safety habits: keep private things private, strong passphrases, think before posting, be kind, check before believing],
    [explain why an AI answer can be wrong — and how I would check it],
    [break a task into exact steps that another person can follow],
  ))
  v(13pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + ink, fill: white, inset: (x: 12pt, y: 9pt), {
    grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      ico("seed", size: 10.5pt, fill: amber-deep),
      text(font: f-display, size: 12.4pt, weight: 800, fill: teal)[MY STARTING LINE — a pledge to myself],
      text(font: f-display, size: 8.1pt, fill: ink-soft, weight: 800, tracking: 0.12em)[2 MIN],
    )
    v(4.5pt)
    text(size: 10.1pt)[Fill this in *before* Mission 1 — you will read it again on the last page, and see how far the evidence took you.]
    v(5pt)
    text(size: 10.1pt)[One thing I already know about smart machines:]; ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[One question I want this book to answer for me:]; ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[One skill I promise to practise honestly — no copying, no skipping the write-ins:]; ruled-lines(1, lead: 8.6mm)
    v(6pt)
    grid(columns: 2, column-gutter: 16pt,
      text(size: 9.6pt)[Signed: #box(width: 62%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
      text(size: 9.6pt)[Date: #box(width: 55%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
    )
  })
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + amber, fill: amber-soft, inset: (x: 11pt, y: 9pt), {
    grid(columns: (auto, 1fr), column-gutter: 8pt, align: (left, horizon),
      ico("search", size: 10.5pt, fill: amber-deep),
      text(font: f-display, size: 11.6pt, weight: 800, fill: amber-deep)[MY QUESTION CARD — cut it out, keep it in your pencil box],
    )
    v(5pt)
    text(size: 10.2pt)[*1. How do I know?* #h(10pt) *2. What is missing?* #h(10pt) *3. Who made this?* #h(10pt) *4. What is the trick here?*]
    v(5.5pt)
    text(size: 9.7pt, style: "italic", fill: ink-soft)[Any time a machine — or an advertisement, or a forward — sounds too smart, the card comes out. Detectives are not people who know everything; they are people who keep asking.]
  })
}
