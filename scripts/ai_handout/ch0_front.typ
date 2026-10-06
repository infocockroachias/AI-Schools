// ============================================================
//  FRONT MATTER — cover · how to use · journey map   (pp. 1–3)
// ============================================================
#import "template.typ": *

// ------------------------------------------------------------
//  PAGE 1 · COVER
// ------------------------------------------------------------
#set page(margin: 0pt, fill: teal-deep, header: none, footer: none)

// pixel-heart motif (top-right) — a picture really is numbers!
#let heart = (
    (0,1,1,0,0,1,1,0),
    (1,1,1,1,1,1,1,1),
    (1,1,1,1,1,1,1,1),
    (1,1,1,1,1,1,1,1),
    (0,1,1,1,1,1,1,0),
    (0,0,1,1,1,1,0,0),
    (0,0,0,1,1,0,0,0),
    (0,0,0,0,0,0,0,0),
  )
  #let cells = {
    let out = ()
    for r in range(8) { for c in range(8) {
      out.push(if heart.at(r).at(c) == 1 { rect(width: 4.4mm, height: 4.4mm, fill: rgb("#3D6E7D"), radius: 0pt, stroke: none) } else { [] })
    } }
    out
  }
  #place(top + right, dx: -14mm, dy: 13mm, grid(columns: (4.4mm,) * 8, rows: (4.4mm,) * 8, inset: 0pt, stroke: none, ..cells))
#place(top + left, dx: 15mm, dy: 13mm, {
  text(font: f-display, fill: white, size: 21pt, weight: 800, tracking: 0.04em)[PRATIMAI]
  v(0.5pt)
  text(size: 8.6pt, fill: rgb("#9FC3CC"), weight: 700, tracking: 0.16em)[AI UNDERSTANDING FOR EVERY CLASSROOM]
})
  #place(top + left, dx: 15mm, dy: 52mm, text(font: f-display, fill: amber, weight: 800, size: 9.5pt, tracking: 0.2em)[AI HANDOUTS · CLASS 6])
  #place(top + left, dx: 14mm, dy: 62mm, text(font: f-display, fill: white, size: 41pt, weight: 800)[AI Around Me])
  #place(top + left, dx: 15mm, dy: 87mm, text(size: 12.2pt, fill: rgb("#CFE3E8"), style: "italic")[My detective notebook for spotting smart machines])
  #place(top + left, dx: 15mm, dy: 99mm, {
    box(fill: amber, radius: 0pt, inset: (x: 9pt, y: 4pt), text(fill: white, weight: 800, size: 10.5pt, tracking: 0.08em)[LEVEL 1 · NOTICE])
    h(7pt)
    box(stroke: 1pt + rgb("#7FAAB4"), radius: 0pt, inset: (x: 9pt, y: 4pt), text(fill: rgb("#CFE3E8"), weight: 800, size: 10.5pt, tracking: 0.08em)[SPOT · SORT · ASK])
  })
  #place(top + left, dx: 15mm, dy: 122mm, {
    box(stroke: 0.8pt + rgb("#4E7E8C"), radius: 0pt, inset: (x: 9pt, y: 4pt), text(fill: rgb("#9FC3CC"), weight: 700, size: 9pt, tracking: 0.06em)[20 PAPER MISSIONS])
    h(6pt)
    box(stroke: 0.8pt + rgb("#4E7E8C"), radius: 0pt, inset: (x: 9pt, y: 4pt), text(fill: rgb("#9FC3CC"), weight: 700, size: 9pt, tracking: 0.06em)[5 CHAPTERS · 5 STRANDS])
    h(6pt)
    box(stroke: 0.8pt + rgb("#4E7E8C"), radius: 0pt, inset: (x: 9pt, y: 4pt), text(fill: rgb("#9FC3CC"), weight: 700, size: 9pt, tracking: 0.06em)[NO SCREEN NEEDED])
  })

  // paper panel
  #place(bottom + left, box(width: 100%, height: 108mm, fill: paper, radius: 0pt, {
    box(inset: (left: 15mm, right: 15mm, top: 9mm), {
      // pixel accent row
      for (w, c) in ((7mm, amber), (5mm, teal), (3mm, amber), (2mm, teal-mid)) { box(width: w, height: 2.2mm, fill: c, radius: 0pt); h(2mm) }
      v(3.5mm)
      text(font: f-display, size: 16.5pt, weight: 800, fill: teal)[Is a machine ever really smart?]
      v(1.4mm)
      text(size: 9.6pt, fill: ink-soft, style: "italic")[That is the big question on this case. By the last page, you will have your own answer — with reasons.]
      v(3.8mm)
      grid(columns: (1fr, 1fr), column-gutter: 10mm, row-gutter: 4.8mm,
        { text(size: 7.6pt, fill: ink-soft, weight: 800, tracking: 0.14em)[MY NAME]; v(3.8mm); line(length: 100%, stroke: 0.7pt + line-soft) },
        { text(size: 7.6pt, fill: ink-soft, weight: 800, tracking: 0.14em)[MY CLASS & SECTION]; v(3.8mm); line(length: 100%, stroke: 0.7pt + line-soft) },
        { text(size: 7.6pt, fill: ink-soft, weight: 800, tracking: 0.14em)[MY ROLL NUMBER]; v(3.8mm); line(length: 100%, stroke: 0.7pt + line-soft) },
        { text(size: 7.6pt, fill: ink-soft, weight: 800, tracking: 0.14em)[MY SCHOOL]; v(3.8mm); line(length: 100%, stroke: 0.7pt + line-soft) },
      )
      v(3.8mm)
      grid(columns: (auto, auto, auto, auto, auto), column-gutter: 11pt, align: (center, center, center, center, center),
        ..range(5).map(i => {
          let names = ("U", "D", "L", "W", "R")
          let words = ("Understand", "Data", "Learn", "World", "Responsible")
          stack(spacing: 2.5pt,
            circle(radius: 7.5pt, fill: teal, align(center + horizon, text(fill: white, weight: 800, size: 8.8pt, names.at(i)))),
            text(size: 7.2pt, fill: ink-soft, weight: 700, words.at(i)))
        })
      )
    })
  }))

// restore base page settings for all following pages
#set page(paper: "a4", margin: base-margins, fill: paper, header: page-header, footer: page-footer)
#pagebreak()

// ------------------------------------------------------------
//  PAGE 2 · HOW TO USE + NOTE FOR GROWN-UPS
// ------------------------------------------------------------
#chap.update("How to use this handout")

#grid(columns: (auto, 1fr), column-gutter: 9pt, align: (center, left),
  box(fill: amber, radius: 0pt, width: 11mm, height: 11mm, align(center + horizon, text(fill: white, size: 19pt)[?])),
  { text(font: f-display, size: 21pt, weight: 800, fill: teal)[How to use this handout]; v(0.5pt); text(size: 9.6pt, fill: ink-soft, style: "italic")[Read me first, Detective.] },
)
#v(9pt)
#text[Welcome, Detective! This book is your *case file* for the biggest mystery of our time: machines that seem smart. You will not need a computer, a phone or an app — your tools are paper, pencils, cards and your own sharp eyes. Every chapter hands you missions (we call them *tasks*), strange clues to examine, and empty spaces to fill with what you discover. Real detectives write everything down, so this book belongs to you: write, draw, tick, cross out and try again.]
#v(7pt)

// three steps
#grid(columns: (1fr, 1fr, 1fr), column-gutter: 7pt,
  ..range(3).map(i => {
    let steps = ("READ", "DO", "WRITE")
    let texts = (
      [Read the mission twice. Underline anything that puzzles you — puzzles are clues.],
      [Do the task with your partner, group, class or family, exactly as the labels say.],
      [Write what you saw in the spaces, then shade your confidence circles honestly.],
    )
    box(fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (x: 8pt, y: 7pt), {
      grid(columns: (auto, 1fr), column-gutter: 6pt, align: (center, left),
        box(fill: teal, radius: 0pt, inset: (x: 5.5pt, y: 1.8pt), text(fill: white, weight: 800, size: 9.5pt, str(i + 1))),
        text(weight: 800, size: 9.6pt, fill: teal, tracking: 0.06em, steps.at(i)),
      )
      v(3pt)
      text(size: 8.9pt, texts.at(i))
    })
  })
)
#v(9pt)

#text(font: f-display, size: 13.6pt, weight: 800, fill: teal)[The work-mode labels]
#v(4pt)
#grid(columns: (auto, 1fr), column-gutter: 8pt, row-gutter: 3.6pt, align: (left, left),
  chip[ALONE],  text(size: 9.4pt)[your own case — you investigate by yourself],
  chip[PAIR],   text(size: 9.4pt)[two detectives — share one book, take turns reading codes aloud],
  chip[GROUP],  text(size: 9.4pt)[three to four detectives — decide roles before you start],
  chip[CLASS],  text(size: 9.4pt)[the whole class plays together, led by your teacher],
  chip[HOME],   text(size: 9.4pt)[a mission for home — show a grown-up what you discovered],
)
#v(9pt)

#note("How to read a mission")[
  #grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
    text(font: f-display, weight: 800, size: 11pt, fill: amber-deep)[T6-01],
    text(font: f-display, weight: 800, size: 12.4pt, fill: teal)[Mission title],
    text(font: f-display, fill: ink-soft, weight: 800, size: 7.4pt, tracking: 0.12em)[PAIR · 10 MIN],
  )
  #v(3pt)
  #box(width: 4.5pt, height: 4.5pt, fill: amber, baseline: 28%) #h(4pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 7.4pt, tracking: 0.12em)[QUICK WIN] sits at the right edge of the easier missions.
  #v(4pt)
  Every mission has a code like #text(weight: 800)[T6-01] — *T6* means this Class 6 handout, and *01* is the mission number, so your teacher can say “open Task T6-08”. The #text(fill: teal, weight: 800)[PAIR] label tells you who to work with, #text(fill: teal, weight: 800)[10 MIN] is your time limit, and #text(fill: amber-deep, weight: 800)[QUICK WIN] marks an easy first success. Chapters 1 and 2 both start with a Quick Win to warm up your detective muscles — nobody fails in this book, because every attempt teaches a clue.
]
#v(7pt)

#note("The Question Habit — your superpower")[
  Three questions make you a sharper detective than any machine: *“How do I know?”* · *“What is missing?”* · *“Who made this?”* Use them in this book, on the internet, in the news, and when a machine gives you an answer that looks too perfect. Detectives are not people who know everything — they are people who *keep asking*.
]
#v(7pt)

// grown-ups panel
#block(width: 100%, box(width: 100%, fill: cream, radius: 0pt, stroke: (left: 3pt + teal), inset: (left: 11pt, right: 11pt, y: 8pt), {
  text(font: f-display, size: 12pt, weight: 800, fill: teal)[A note for grown-ups]
  v(2.5pt)
  text(size: 9.3pt)[This handout builds *AI understanding* — how machines learn from data and how humans should judge them — through 20 paper-and-pencil missions. It is fully *unplugged*: no task requires a device, an account, a photo, a voice recording or any personal information. The best help you can give is to ask the three Question-Habit questions, praise careful *reasoning* more than quick right answers, and treat the confidence circles as honest thinking, not scores. A separate teacher pack carries answer notes and rubrics; this book deliberately never prints solutions beside a task.]
}))

// ------------------------------------------------------------
//  PAGE 3 · JOURNEY MAP
// ------------------------------------------------------------
#chap.update("My AI journey map")
#pagebreak()

#grid(columns: (auto, 1fr), column-gutter: 9pt, align: (center, left),
  box(fill: teal, radius: 0pt, width: 11mm, height: 11mm, align(center + horizon, text(fill: white, size: 19pt, font: f-display, weight: 800)[→])),
  { text(font: f-display, size: 21pt, weight: 800, fill: teal)[My AI journey map]; v(0.5pt); text(size: 9.6pt, fill: ink-soft, style: "italic")[Five strands, five stops, one big question.] },
)
#v(10pt)

#text(size: 8.2pt, fill: ink-soft, weight: 800, tracking: 0.12em)[THE FIVE STRANDS YOU WILL MEET AT EVERY STOP]
#v(5pt)
#grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 5.5pt,
  ..range(5).map(i => {
    let letters = ("U", "D", "L", "W", "R")
    let names = ("Understand AI", "Data", "Learn", "World", "Responsibility")
    let qs = ("What is AI — and what is it NOT?", "What do machines learn from?", "How do machines get better?", "Where is AI hiding near me?", "How do I stay safe and fair?")
    box(fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (x: 6pt, y: 6.5pt), stack(spacing: 3.5pt,
      grid(columns: (auto, 1fr), column-gutter: 4pt, align: (center, left),
        circle(radius: 7pt, fill: teal, align(center + horizon, text(fill: white, weight: 800, size: 8.6pt, letters.at(i)))),
        text(weight: 800, size: 9.2pt, fill: teal, names.at(i))),
      text(size: 7.9pt, fill: ink-soft, qs.at(i)),
    ))
  })
)
#v(6pt)
#block(width: 100%, box(width: 100%, fill: amber-soft, radius: 0pt, inset: (x: 9pt, y: 6pt), {
  text(font: f-display, size: 8.4pt, weight: 800, fill: amber-deep, tracking: 0.12em)[THINKING-TOOLS THREAD]
  h(6pt)
  text(size: 8.8pt)[runs through every stop: *exact steps* · *patterns* · *if-then rules* · *how sure am I?*]
}))

#v(12pt)
#text(size: 8.2pt, fill: ink-soft, weight: 800, tracking: 0.12em)[THE FIVE STOPS ON YOUR CASE]
#v(6pt)
// stepper
#box(width: 100%, height: 34mm, {
  place(horizon, dx: 0mm, dy: 4.5mm, line(length: 92%, stroke: (paint: line-soft, thickness: 1.2pt, dash: "dashed")))
  place(horizon, grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
    ..range(5).map(i => {
      let titles = ("Machines That Seem Smart", "Data: The Food of AI", "Patterns & Decisions", "Be a Smart Digital Citizen", "My Neighbourhood AI Investigation")
      let subs = ("rule-followers vs learners", "numbers, words, pictures, sounds", "if-then trees · how sure am I?", "privacy · passwords · fakes", "your own investigation")
      stack(spacing: 4pt,
        align(center, circle(radius: 9.5pt, fill: if i == 4 { amber } else { teal }, stroke: 2.5pt + paper, align(center + horizon, text(fill: white, weight: 800, size: 10.5pt, str(i + 1))))),
        align(center, text(size: 8.7pt, weight: 800, fill: teal, titles.at(i))),
        align(center, text(size: 7.4pt, fill: ink-soft, style: "italic", subs.at(i))),
      )
    })
  ))
})
#v(10pt)
#text(size: 8.2pt, fill: ink-soft, weight: 800, tracking: 0.12em)[BY THE END OF THIS BOOK, I CAN…]
#v(6pt)
#ican((
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
