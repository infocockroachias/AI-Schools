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
    This handbook is © #datetime.today().display("[year]") *PRATIMA AI*. All rights reserved. The title, the missions, the activities, the stories, the diagrams and the design of this series are the intellectual property of PRATIMA AI. No part of this book may be copied, reproduced, sold, redistributed or republished in any form without the written permission of PRATIMA AI. Schools and educators who would like to collaborate with the series — through adoption programmes, translations or local editions — are warmly welcome to contact PRATIMA AI and sign a collaboration agreement.
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
    [*Title:*], [The Logic Under the Magic — Class 9 · Level 4 · REASON],
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
  To the Classes 6, 7 and 8 investigators whose case files walked the whole road with us — from spotting
  learning machines to planning them on paper. Your notebooks convinced us that school students can run
  real statistics, real probability and real graph criticism when the numbers belong to problems they
  care about. This book finally hands you the engine room: the mathematics under the machine.

  To the maths teachers who read every mission and said "yes — but make the outlier crueler, make the
  dice honest, make the best-fit line earn itself": thank you. You protected the book from fake maths
  and from the greater sin, boring maths. And to the adults who will be asked "is the AI's average the
  same as MY average?" at the dinner table: by the last page, your student will answer you with a
  worked example.

  This series was built brick by brick by three teams working as one. The *AI research team* checked every explanation against how machines really learn, so nothing in this book is a myth wearing a friendly font. The *academic team* walked every chapter beside the school syllabus, so each game quietly trains a skill that examinations will ask for later. And the *child-psychology team* shaped the pace of every page: short missions for young attention, quick wins that open every chapter, confidence circles that make honesty feel safe, and space to write on every task — because an idea worked by the hand is remembered by the mind. Alongside them, curriculum reviewers guarded the "unplugged" promise: not one mission in this series asks for a phone, an account or a password.

  Thanks go as well to the designers of Nunito and Baloo 2, whose friendly letterforms keep
  pages of hard reasoning feeling light. Finally, to the AI Analyst holding this book: every
  dice roll you have not rolled yet, every line you have not drawn yet and every graph you
  have not yet caught lying is the real content of this case file. We only set the stage.
  You bring the evidence.
]

// ------------------------------------------------------------
//  PREFACE — how to use · note to adults · journey map
// ------------------------------------------------------------
#let preface-pages = {
  front-heading[How to Use This Handbook]

  text[Welcome back, Analyst. Three years of evidence sit behind you: in Class 6 you *spotted* learning machines, in Class 7 you *trained and tested* them, in Class 8 you *planned and defended* them. Now comes the question every honest engineer eventually faces: *why does any of it work?* This year you go under the hood — and the hood opens with mathematics, not code. Averages that mislead, probability you can roll on a desk, lines you draw through real dots, neighbours you classify with a ruler: every mechanism that makes AI possible, run by hand. And every place the same mathematics lets machines — and their marketing — fail. You will still need no computer. A pencil, a ruler, a pair of dice and a suspicious mind are the complete toolkit.]
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
    chip[HOME],   text(size: 10.3pt)[a mission for home — show an adult what you discovered],
  )
  v(10pt)

  note("How to read a mission")[
    #grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      text(font: f-display, weight: 800, size: 12.1pt, fill: amber-deep)[T9-10],
      text(font: f-display, weight: 800, size: 13.9pt, fill: teal)[Mission title],
      text(font: f-display, fill: ink-soft, weight: 800, size: 8.1pt, tracking: 0.12em)[ALONE · 15 MIN],
    )
    #v(3.5pt)
    #box(width: 5pt, height: 5pt, fill: amber, baseline: 28%) #h(4pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em)[QUICK WIN] marks the easier missions; #box(width: 5pt, height: 5pt, fill: amber, baseline: 28%) #h(3pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em)[HANDS-ON LAB] marks the working labs — missions where you *build, measure, play or draw*.
    #v(4.5pt)
    Every mission has a code like #text(weight: 800)[T9-10] — *T9* means this Class 9 handout, and *10* is the mission number, so your teacher can say "open Task T9-13". The #text(fill: teal, weight: 800)[ALONE] label tells you who to work with, #text(fill: teal, weight: 800)[15 MIN] is your time limit, and #text(fill: amber-deep, weight: 800)[QUICK WIN] marks an easy first success. This book's missions ask for *working, not just answers* — show the division, draw the line, mark the outlier. In mathematics, the working IS the reasoning.
  ]
  v(8pt)

  note("The Question Habit — your superpower")[
    Your five questions — *"How do I know?"*, *"What is missing?"*, *"Who made this?"*, *"Who is missing?"*, *"What is the trick here?"* — meet their sharpest field of play yet: numbers themselves. This year add the analyst's suffix to every statistic you meet: *"compared to WHAT, over WHICH period, leaving out WHOM?"* An average without its context is a magic trick. Your job, from page one, is to be the person who asks how the trick is done.
  ]
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[DRILL THE QUESTIONS — ON A CLAIM WITH NUMBERS]
    v(3pt)
    text(size: 9.8pt)[A news graphic says: "Students who use AI tutors score 20% higher." Run the analyst's questions and write one honest line each:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 5.5pt, align: (left, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "1")),
      text(size: 9.7pt)[*How do I know?* — 20% of what, compared with whom, over how long? #ruled-lines(1, lead: 7.6mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "2")),
      text(size: 9.7pt)[*What is missing?* — Which average, and what could an outlier be doing here? #ruled-lines(1, lead: 7.6mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "3")),
      text(size: 9.7pt)[*Who made this?* — Who sells the tutor? Re-weight the claim. #ruled-lines(1, lead: 7.6mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "4")),
      text(size: 9.7pt)[*Correlation or cause?* — Name the hidden factor a careful analyst would check. #ruled-lines(1, lead: 7.6mm)],
    )
  })


  // ---------- note for adults ----------
  front-heading[A Note for Adults]
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

  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[THREE NUMBERS I WILL DISTRUST THIS WEEK]
    v(3pt)
    text(size: 9.8pt)[An analyst's year starts with suspicion, not cynicism. List three numbers the world will show you this week — a fee, a claim, a score — and name the question you will ask each:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 8pt, row-gutter: 5pt, align: (horizon, horizon),
      text(size: 9.5pt, weight: 800, fill: teal)[1.],
      text(size: 9.7pt)[#box(width: 88%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt, fill: ink-soft)[my question →],
      text(size: 9.7pt)[#box(width: 88%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 9.5pt, weight: 800, fill: teal)[2.],
      text(size: 9.7pt)[#box(width: 88%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt, fill: ink-soft)[my question →],
      text(size: 9.7pt)[#box(width: 88%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 9.5pt, weight: 800, fill: teal)[3.],
      text(size: 9.7pt)[#box(width: 88%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt, fill: ink-soft)[my question →],
      text(size: 9.7pt)[#box(width: 88%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
    )
  })
  v(13pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + ink, fill: white, inset: (x: 12pt, y: 9pt), {
    grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      box(fill: amber, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, font: f-display, size: 8.4pt, weight: 800, tracking: 0.1em, "DAY 1")),
      text(font: f-display, size: 12.4pt, weight: 800, fill: teal)[My starting line — a pledge to the evidence],
      text(font: f-display, size: 8.1pt, fill: ink-soft, weight: 800, tracking: 0.12em)[2 MIN],
    )
    v(4.5pt)
    text(size: 10.1pt)[Fill this in before Chapter 1. The last page will ask for the year's evidence next to these lines — vague pledges fail audits.]
    v(5pt)
    text(size: 10.1pt)[One number in daily life whose average I now intend to distrust on sight:]; ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[One claim about AI I want to be able to *prove or refute* by June:]; ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[My honesty clause — how I will record results that contradict what I hoped for:]; ruled-lines(1, lead: 8.6mm)
    v(6pt)
    grid(columns: 2, column-gutter: 16pt,
      text(size: 9.6pt)[Signed: #box(width: 62%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
      text(size: 9.6pt)[Date: #box(width: 55%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
    )
  })
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[FIRST IMPRESSIONS — THE ANALYST'S FLIP TEST]
    v(3pt)
    text(size: 9.8pt)[Flip through this book for two minutes, like an auditor meeting a new client. Three things I noticed that I intend to question later:]
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
      text(font: f-display, size: 11.6pt, weight: 800, fill: amber-deep)[The analyst's five questions — my pocket copy],
    )
    v(5pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 4.5pt, align: (left, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "1")),
      text(size: 9.8pt)[*How do I know?* — what was measured, how, on whom?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "2")),
      text(size: 9.8pt)[*What is missing?* — which average, and what does it throw away?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "3")),
      text(size: 9.8pt)[*Who made this?* — who gains if I share it without checking?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "4")),
      text(size: 9.8pt)[*Who is missing?* — whose outcome was never counted?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "5")),
      text(size: 9.8pt)[*Correlation or cause?* — what else could explain the pattern?],
    )
    v(5.5pt)
    text(size: 9.6pt, style: "italic", fill: ink-soft)[The claim I intend to check first — and the question that will crack it: #box(width: 46%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)]
  })
}
