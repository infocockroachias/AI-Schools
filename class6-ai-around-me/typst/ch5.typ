#import "template.typ": *
// ============================================================
//  CHAPTER 5 — CAPSTONE: MY NEIGHBOURHOOD AI INVESTIGATION (4 pp)
// ============================================================
#chapter-opener(5, "My Neighbourhood AI Investigation", "What can I discover about AI near me — using my own data?",
  summary: [Your biggest case yet: a *real survey* of five grown-ups about the smart machines around them. You will plan and run the survey, organise and chart the data you collect, design a helper machine of your own — and then close the case by answering the big question from page one, with evidence.],
  missions: "T6-18 – T6-20",
  outcomes: ("6.U1", "6.D1", "6.W1", "6.R2"), strands: ("U", "D", "L", "W", "R"),
  link: "Links: Social Science — community survey · Maths — data & charts",
  extras: opener-extras(
    words: ("survey", "tally", "bar chart", "limit", "evidence"),
    warmup: [Practise the survey question out loud once: “Where do you meet machines that seem smart in your daily life?” Now write one answer you might expect to hear — you will check it against your real data soon.],
    need: ("pencil", "the survey page", "five kind grown-ups", "your best listening ears"),
  ))

#note("Your biggest case yet — read this first!")[
  Every skill from Chapters 1–4 comes together here. In groups, you will run a *real survey* with five grown-ups, organise the *data* you collect, draw it, and present findings — then design a helper machine of your own. It takes 2–3 class periods plus home time. Detectives work carefully: one sloppy column can spoil a whole investigation.]

#sec(1, "Run a real survey")
#grid(columns: (1fr, 1fr), column-gutter: 7pt,
  box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
    text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[GROUP ROLES — DECIDE BEFORE YOU GO]
    v(3pt)
    dtable(("Role", "Detective"),
      ([*Asker* — asks the questions politely], [ ]),
      ([*Recorder* — writes the answers down], [ ]),
      ([*Checker* — re-reads each row for mistakes], [ ]),
      ([*Presenter* — shares the findings with the class], [ ]),
      widths: (1fr, 30mm),
    )
  }),
  box(fill: cream, radius: 5pt, stroke: 1pt + ink, inset: (left: 11pt, right: 11pt, y: 8pt), {
    text(size: 9.2pt, weight: 800, fill: amber-deep, tracking: 0.1em)[SURVEY MANNERS — READ BEFORE YOU KNOCK]
    v(3pt)
    text(size: 9.9pt)[
      *Ask first:* “Do you have two minutes to help our class project?”
      *Listen* without interrupting — a rush recorder misses data.
      *Write initials only* — never a neighbour's full name.
      *Say thank you*, even when the answer is “no”.
      *No photos, no recordings, no personal details* — our survey is paper-only.]
  }),
)

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · PREDICT, THEN GO AND CHECK]
  v(2.5pt)
  text(size: 10.1pt)[Before real detectives collect data, they write a *prediction* — then the data gets a vote. What do you predict your five adults will name most often? Circle one, then race to see if your pattern-holding skills from Chapter 3 were right:]
  v(2.5pt)
  grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 5pt,
    ..(("Phone & video apps", "Voice assistants", "Shops & payments", "Travel & traffic", "Somewhere else")).map(p => box(fill: teal-faint, radius: 4pt, stroke: 0.6pt + line-soft, inset: (x: 5pt, y: 5.5pt), align(center, stack(spacing: 3pt, box(width: 8.5pt, height: 8.5pt, radius: 5pt, stroke: 1pt + teal-mid, fill: white, baseline: 35%), text(size: 8.3pt, weight: 700, p)))))
  )
  v(2.5pt)
  text(size: 9.5pt, fill: ink-soft, style: "italic")[A prediction that survives contact with real data earns a detective's smile. One that fails teaches you something the easy way.]
}))

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[GROUP LOGISTICS · RECRUIT YOUR FIVE]
  v(2.5pt)
  text(size: 10.1pt)[Plan like professionals: agree *who* your group will ask (roles, never full names in print) and *when*. A plan made today saves a wasted trip tomorrow:]
  v(3pt)
  dtable(("Investigator to ask (role)", "Where we will meet them", "Best day and time"),
    ([#box(width: 38mm, line(length: 100%, stroke: 0.55pt + line-soft))], [#box(width: 40mm, line(length: 100%, stroke: 0.55pt + line-soft))], [#box(width: 30mm, line(length: 100%, stroke: 0.55pt + line-soft))]),
    ([#box(width: 38mm, line(length: 100%, stroke: 0.55pt + line-soft))], [#box(width: 40mm, line(length: 100%, stroke: 0.55pt + line-soft))], [#box(width: 30mm, line(length: 100%, stroke: 0.55pt + line-soft))]),
    ([#box(width: 38mm, line(length: 100%, stroke: 0.55pt + line-soft))], [#box(width: 40mm, line(length: 100%, stroke: 0.55pt + line-soft))], [#box(width: 30mm, line(length: 100%, stroke: 0.55pt + line-soft))]),
    widths: (1fr, 1fr, 44mm),
  )
}))

#task("T6-18", "AI in My Neighbourhood — the survey", mode: "group", mins: "2–3 periods", win: false)[
  *Step 1 · Plan.* As a group, agree whom you will ask: five adults — a family member, a neighbour, a shopkeeper, a teacher, anyone safe and willing. The question: *“Where do you meet machines that seem smart in your daily life?”* Write your plan before you collect:
  #v(2pt)
  *We will ask (roles, not names):* #ruled-lines(1, lead: 8.8mm)
  *We will collect our data on (day/place), so the survey is safe and polite because…* #ruled-lines(1, lead: 8.8mm)
  *Step 2 · Collect.* Record one line per person. Ask the follow-up: *“What does it probably learn from?”* — that is its data.
  #v(4pt)
  #dtable(("Who (initials only)", "The smart machine they named", "What data might it use?", "Rule-follower or learner?"),
    ([ ], [ ], [ ], [ ]),
    ([ ], [ ], [ ], [ ]),
    ([ ], [ ], [ ], [ ]),
    ([ ], [ ], [ ], [ ]),
    ([ ], [ ], [ ], [ ]),
    widths: (30mm, 1fr, 1fr, 34mm),
  )
  #v(5pt)
  *Step 3 · Organise.* Tally your group's five answers into the families below, then draw the bars.
  #v(4pt)
  #grid(columns: (44mm, 1fr), column-gutter: 8pt,
    dtable(("Family", "Tally"),
      ([Phone & video apps], [ ]),
      ([Voice assistants], [ ]),
      ([Shops, banks & payments], [ ]),
      ([Travel & traffic], [ ]),
      ([Somewhere else], [ ]),
      widths: (30mm, 12mm),
    ),
    barchart-blank(("Apps", "Voice", "Shops", "Travel", "Else"), ymax: 5, pw: 100mm, ph: 38mm),
  )
  #v(5pt)
  *Step 4 · Findings — finish the sentences like a real analyst:*
  #ruled-lines(1, lead: 9mm)
  #ruled-lines(1, lead: 9mm)
  #ruled-lines(1, lead: 9mm)
  #ruled-lines(1, lead: 9mm)
  #text(size: 9.5pt, fill: ink-soft, style: "italic")[Starters: “The most common answer was …” · “The data most of these machines use is probably …” · “One thing that surprised our group …” · “If we asked five more adults, we might find …”]
]

#sec(2, "Design a helper machine")

#task("T6-19", "My Helper Machine — the poster", mode: "group", mins: "2 periods")[
  Design (on paper!) one machine that would genuinely help people you know. Fill the case sheet, then make a poster your class can judge.
  #v(5pt)
  #grid(columns: (1fr, 1fr), column-gutter: 7pt, row-gutter: 6pt,
    box(fill: teal-faint, radius: 5pt, inset: 7pt, stack(spacing: 2.5pt, text(weight: 800, size: 9.5pt, fill: teal, "MACHINE NAME"), writebox(11mm))),
    box(fill: teal-faint, radius: 5pt, inset: 7pt, stack(spacing: 2.5pt, text(weight: 800, size: 9.5pt, fill: teal, "THE PROBLEM IT SOLVES (who struggles, with what?)"), writebox(11mm))),
    box(fill: teal-faint, radius: 5pt, inset: 7pt, stack(spacing: 2.5pt, text(weight: 800, size: 9.5pt, fill: teal, "WHO WILL USE IT"), writebox(11mm))),
    box(fill: teal-faint, radius: 5pt, inset: 7pt, stack(spacing: 2.5pt, text(weight: 800, size: 9.5pt, fill: teal, "ONE HONEST LIMIT — “it cannot … because …”"), writebox(11mm))),
  )
  #v(5pt)
  #grid(columns: (1fr, 1fr), column-gutter: 7pt,
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: 8pt, stack(spacing: 3pt,
      grid(columns: (auto, 1fr), column-gutter: 5pt, align: (center, left), cbox, text(size: 10.1pt, weight: 800)[*RULE-FOLLOWER* — it runs an *algorithm* we write: exact if-then steps, same every time.]),
      grid(columns: (auto, 1fr), column-gutter: 5pt, align: (center, left), cbox, text(size: 10.1pt, weight: 800)[*LEARNER* — it studies *training examples* and finds its own *pattern*.]),
      text(size: 9.2pt, fill: ink-soft, style: "italic")[Tick one. Every helper machine is one of these two — choosing well is the designer's first job.],
    )),
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: 8pt, stack(spacing: 3pt,
      text(size: 9.5pt, weight: 800, fill: teal, tracking: 0.06em)[WHAT DATA DOES IT EAT? TICK ALL THAT APPLY],
      grid(columns: (auto, 1fr), column-gutter: 5pt, align: (center, left), cbox, text(size: 9.9pt)[Numbers — prices, times, counts]),
      grid(columns: (auto, 1fr), column-gutter: 5pt, align: (center, left), cbox, text(size: 9.9pt)[Words — names, questions, messages]),
      grid(columns: (auto, 1fr), column-gutter: 5pt, align: (center, left), cbox, text(size: 9.9pt)[Pictures — photos, drawings, maps]),
      grid(columns: (auto, 1fr), column-gutter: 5pt, align: (center, left), cbox, text(size: 9.9pt)[Sounds — voice, music, alarms]),
    )),
  )
  #v(5pt)
  #drawbox(44mm, label: "sketch your helper machine — label the data going IN and the help coming OUT")
]
#text(size: 9.5pt, weight: 800, fill: teal, tracking: 0.08em)[HOW YOUR POSTER WILL BE JUDGED — REASONING EARNS MORE THAN ART]
#v(3pt)
#dtable(("Level", "What it looks like"),
  ([*Beginning*], [A machine is named, but the problem, data or limit is missing.]),
  ([*Growing*], [The problem and data are clear, but the limit is missing — every real machine has one!]),
  ([*Secure*], [Problem, users, data and an honest limit all make sense together.]),
  ([*Shining*], [Everything in Secure, plus the group defended their choices with evidence from their survey — and said where the machine could fail.]),
  widths: (24mm, 1fr),
)

#sec(3, "Close the case")

#task("T6-20", "I used to think… Now I think…", mode: "alone", mins: "10")[
  The last mission of the case: look back at page 1's big question and at everything your pencil went through.
  #v(3pt)
  #grid(columns: (1fr, 1fr), column-gutter: 7pt,
    box(fill: amber-soft, radius: 5pt, inset: 8pt, stack(spacing: 2pt, text(weight: 800, size: 10.3pt, fill: amber-deep, "I USED TO THINK"), writebox(32mm))),
    box(fill: teal-faint, radius: 5pt, inset: 8pt, stack(spacing: 2pt, text(weight: 800, size: 10.3pt, fill: teal, "NOW I THINK"), writebox(32mm))),
  )
  #v(3pt)
  *Three questions I still have for my next case (Class 7):*
  #ruled-lines(4, lead: 8.8mm)
  #v(3pt)
  #grid(columns: (auto, 1fr, auto), align: (center, left, center), column-gutter: 6pt,
    star(12pt),
    text(size: 10.3pt, weight: 700)[Detective badge earned: LEVEL 1 · NOTICE — you can now see where AI is, and tell it from ordinary machines.],
    text(font: f-display, fill: teal-deep, weight: 800, size: 9.5pt, tracking: 0.14em)[CASE CLOSED],
  )
]

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), [
  #text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[A LETTER TO THE CLASS 7 DETECTIVE — WHO WILL BE YOU]
  #v(3pt)
  #text(size: 10.1pt)[Next year a new case opens: *“How can a machine learn without being told the rules?”* Leave three clues here for your future self — one thing you want to remember, one thing you want to understand better, and one question you dare Class 7 to answer:]
  #v(2pt)
  #ruled-lines(3, lead: 8.8mm)
]))
