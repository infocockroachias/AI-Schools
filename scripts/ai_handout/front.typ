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
  v(14pt)
  table(stroke: none, columns: 2, inset: (y: 3.2pt),
    [*Series:*], [PRATIMAI · AI Handouts],
    [*Title:*], [AI Around Me — Class 6 · Level 1 · NOTICE],
    [*Author:*], [PRATIMAI Curriculum Team],
    [*Publish Date:*], [#datetime.today().display()],
    [*Published by:*], [PRATIMAI | AI-Schools],
    [*Edition:*], [Machiatto Edition 1.0],
  )
  v(16pt)
  block(width: 100%, radius: 5pt, stroke: 0.7pt + ink-soft, fill: white, inset: (x: 11pt, y: 8pt), {
    text(size: 9.4pt, fill: ink-soft)[
      Set in *Nunito* and *Baloo 2* on warm paper stock, typeset with Typst using the
      *Machiatto* template — which implements the MoKa Reads publication specification:
      title page, license, acknowledgements, preface, contents, then chapters opening
      with a summary and a mini table of contents.
    ]
  })
}

// ------------------------------------------------------------
//  ACKNOWLEDGEMENTS (rendered in the machiatto cream box)
// ------------------------------------------------------------
#let ack-text = [
  To the teachers and their Classes 6 and 7 who piloted every mission with pencils, paper
  and great patience — your classroom notes shaped this book. To the curriculum reviewers
  who guarded the "unplugged" promise on every page, thank you. And to the grown-ups at
  home who will be asked "is a machine ever really smart?" at the dinner table: this book
  is for those conversations, too.
]

// ------------------------------------------------------------
//  PREFACE — how to use · note to grown-ups · journey map
// ------------------------------------------------------------
#let preface-pages = {
  front-heading[How to Use This Handbook]

  text[Welcome, Detective! This book is your *case file* for the biggest mystery of our time: machines that seem smart. You will not need a computer, a phone or an app — your tools are paper, pencils, cards and your own sharp eyes. Every chapter hands you missions (we call them *tasks*), strange clues to examine, and empty spaces to fill with what you discover. Real detectives write everything down, so this book belongs to you: write, draw, tick, cross out and try again.]
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
      text(font: f-display, weight: 800, size: 12.1pt, fill: amber-deep)[T6-01],
      text(font: f-display, weight: 800, size: 13.9pt, fill: teal)[Mission title],
      text(font: f-display, fill: ink-soft, weight: 800, size: 8.1pt, tracking: 0.12em)[PAIR · 10 MIN],
    )
    #v(3.5pt)
    #box(width: 5pt, height: 5pt, fill: amber, baseline: 28%) #h(4pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em)[QUICK WIN] sits at the right edge of the easier missions.
    #v(4.5pt)
    Every mission has a code like #text(weight: 800)[T6-01] — *T6* means this Class 6 handout, and *01* is the mission number, so your teacher can say "open Task T6-08". The #text(fill: teal, weight: 800)[PAIR] label tells you who to work with, #text(fill: teal, weight: 800)[10 MIN] is your time limit, and #text(fill: amber-deep, weight: 800)[QUICK WIN] marks an easy first success. Chapters 1 and 2 both start with a Quick Win to warm up your detective muscles — nobody fails in this book, because every attempt teaches a clue.
  ]
  v(8pt)

  note("The Question Habit — your superpower")[
    Three questions make you a sharper detective than any machine: *"How do I know?"* · *"What is missing?"* · *"Who made this?"* Use them in this book, on the internet, in the news, and when a machine gives you an answer that looks too perfect. Detectives are not people who know everything — they are people who *keep asking*.
  ]

  pagebreak()

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
  pagebreak()

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
}
