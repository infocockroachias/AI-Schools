#import "template.typ": *
// ============================================================
//  CHAPTER 2 — DATA LITERACY   (8 pp · tasks 05–09)
// ============================================================
#chapter-opener(2, "Data Literacy", "Can I trust this number — and can I trust the picture it comes in?",
  outcomes: ("9.D1", "9.D2", "9.R1"), strands: ("D", "R"),
  summary: [Learning systems eat data; this chapter teaches you to be the food inspector. You will sort data by type and structure, audit a source for quality and motive, catch the three classic ways graphs lie — truncated axes, cherry-picked windows, and pies that add to more than 100% — and separate privacy from security, two ideas that are constantly confused. The chapter ends with a dashboard you build yourself, where every chart must survive your own cross-examination.],
  missions: "T9-05 – T9-09",
  link: "Links: Maths — statistics & graphs · Social Science — sources & media · English — critical reading",
  extras: opener-extras(
    words: ("qualitative data", "quantitative data", "unstructured data", "privacy", "security"),
    warmup: [A news app shows: “Exams easier this year — 68% agree”. Write the FIRST question you would ask before believing it. Compare with your answer on the last page of this book.],
    need: ("pencil", "ruler", "a die and a coin", "your sharpest suspicion"),
  ))

// ---------------- 2.1 ----------------
#sec(1, "Know your data: type and structure")
Before any judgement, classify what you are holding. *Qualitative data* describes qualities — names, categories, descriptions ("mango", "delayed", "angry"). *Quantitative data* counts or measures — numbers you can average, plot, and compare ("42 marks", "12 minutes"). Then a second cut: *structured data* sits in neat rows and columns a machine can read directly (your attendance register); *unstructured data* does not — photographs, voice notes, essays, chat messages — and must be converted into features before any machine can learn from it. Most of the data in the world is unstructured, which is exactly why feature-naming (Chapter 1) is a superpower.

#task("T9-05", "Data Type Sort", mode: "alone", mins: "10", win: true)[
  Sort each item twice: QL (qualitative) or QT (quantitative) — and S (structured) or U (unstructured):
  #v(4pt)
  #dtable(("The item", "QL or QT?", "S or U?", "If U — one feature that would make it learnable"),
    ([a voice note complaining about the canteen], [ ], [ ], [ ]),
    ([the class attendance register for March], [ ], [ ], [ ]),
    ([“the bus was very late today” (written feedback slips)], [ ], [ ], [ ]),
    ([blood-sugar readings from a clinic, one per patient per day], [ ], [ ], [ ]),
    ([500 photos of street intersections], [ ], [ ], [ ]),
    ([marks out of 100 for the unit test], [ ], [ ], [ ]),
    widths: (1fr, 22mm, 20mm, 1fr),
  )
  #v(5pt)
  *The pattern I notice about the U column:* #ruled-lines(1, lead: 8.6mm)
]
#wordpower(6, "qualitative data", [Data describing qualities or categories, like names and descriptions.])
#wordpower(7, "quantitative data", [Data measured in numbers, ready to count, average and plot.])
#wordpower(8, "unstructured data", [Data not in rows and columns — photos, audio, free text.])

// ---------------- 2.2 ----------------
#sec(2, "Source quality: who says so, and why do they care?")
A number is only as trustworthy as its *source* — and a source has three faces you must check: *competence* (do they actually measure this, or just repeat it?), *method* (how was it counted — and how many, over how long, leaving out whom?), and *motive* (what do they gain if you believe it?). None of the three checks requires a computer; all three require healthy suspicion. A government census and a phone-company advert may quote the same "average income" with completely different honesty.

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[SOURCE SELFIE — RATE ONE SOURCE YOU ACTUALLY MET THIS WEEK]
  v(2pt)
  text(size: 10.1pt)[The source: #box(width: 58mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) — competence 1–5: #box(width: 12mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) method 1–5: #box(width: 12mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) motive 1–5: #box(width: 12mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))]
  v(2pt)
  text(size: 10.1pt)[The one line that decided my lowest score:]
  ruled-lines(1, lead: 8.2mm)
  v(3pt)
  text(size: 9.7pt)[*Motive detector, one glance:* this source WINS if I believe it because …]
  ruled-lines(1, lead: 8.2mm)
})

#task("T9-06", "Source Quality Audit", mode: "pair", mins: "15")[
  Your school's notice board shows three claims about the same thing — students' travel time to school. Audit each source on the three faces (rate each 1–5, with a one-line reason), then give your verdict:
  #v(4pt)
  #block(width: 100%, radius: 5pt, fill: teal-faint, stroke: 0.6pt + line-soft, inset: (x: 10pt, y: 8pt), {
    text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[THE THREE CLAIMS]
    v(3pt)
    text(size: 10.2pt)[
      *Claim A (school notice board):* “Average travel time is 34 minutes” — measured by Class 9-B from a survey of 40 students, one morning, during exam week.
      *Claim B (a bus company's flyer):* “Most students reach school in under 20 minutes by bus!” — no method stated, next to the price list.
      *Claim C (the district education report):* “Median travel time across 12 schools: 41 minutes” — full method in appendix, surveyed across a full term.
    ]
  })
  #v(4pt)
  #dtable(("Face of the source", "Claim A (Class 9-B)", "Claim B (bus company)", "Claim C (district report)"),
    ([Competence 1–5], [ ], [ ], [ ]),
    ([Method 1–5], [ ], [ ], [ ]),
    ([Motive 1–5], [ ], [ ], [ ]),
    widths: (44mm, 1fr, 1fr, 1fr),
  )
  #v(4pt)
  *The verdict — which number would you quote in a class debate, and in what words?* #ruled-lines(2, lead: 8.6mm)
  *Claim A is honest work but weak method. Write the ONE extra line its collectors should have added:* #ruled-lines(1, lead: 8.6mm)
]

// ---------------- 2.3 ----------------
#sec(3, "The misleading graph gallery: three classic tricks")
Charts feel like evidence, but a chart is an *argument drawn by someone*. Three tricks do most of the lying. *Truncated axes*: the bar chart's y-axis starts at 88, so a 2% difference looks like a cliff. *Cherry-picked windows*: the line chart shows exactly the weeks that prove the point, hiding the weeks that don't. *Pie arithmetic*: the "shares" add to more than 100%, which is impossible — or the categories overlap. None of these tricks requires a dishonest machine; the machine will happily draw whatever it is told. Your defence is the same three questions every time: *where does the axis start? what is NOT shown? do the parts add up?*

#task("T9-07", "Misleading Graph Gallery", mode: "group", mins: "20")[
  The gallery shows two charts from the same school canteen data. Chart A (honest) and Chart B (same data, "improved" by the vendor's design team). Study them, then complete the charge sheet.
  #v(6pt)
  #grid(columns: (1fr, 1fr), column-gutter: 10pt,
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[CHART A — AS THE CLERK DREW IT]
      barchart-example(("Mon", "Tue", "Wed", "Thu", "Fri"), (210, 240, 185, 260, 320), ymax: 350, ystep: 50, pw: 62mm, ph: 40mm, ylabel: "PLATES SERVED", labsize: 7.6pt)
      v(2pt)
    }),
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[CHART B — AS THE VENDOR DREW IT]
      barchart-example(("Mon", "Tue", "Wed", "Thu", "Fri"), (210, 240, 185, 260, 320), ymax: 330, ymin: 180, ystep: 30, pw: 62mm, ph: 40mm, ylabel: "PLATES SERVED", labsize: 7.6pt)
      v(2pt)
    }),
  )
  #v(4pt)
  #dtable(("The charge", "Chart A or B?", "The exact evidence (read the axis!)"),
    ([The y-axis starts above zero, exaggerating every change], [ ], [ ]),
    ([Tuesday looks like a disaster; on honest axes it is a mild dip], [ ], [ ]),
    ([Same data, completely different story], [ ], [ ]),
    widths: (1fr, 28mm, 1fr),
  )
  #v(4pt)
  *Second exhibit — the pie that broke arithmetic:* a "share of canteen spending" pie shows snacks 45%, drinks 35%, lunch 55%. *What is impossible here, and what did the drawer probably do wrong?* #ruled-lines(2, lead: 8.6mm)
  #v(2pt)
  *Your three-question defence, in order:* #ruled-lines(2, lead: 8.6mm)
]

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · NAME THE TRICK]
  v(3pt)
  text(size: 10.1pt)[Each description hides one of the three classic tricks — or none. Write T1 (truncated axis), T2 (cherry-picked window), T3 (broken pie arithmetic) or OK:]
  v(3pt)
  dtable(("The chart", "Trick?"),
    ([A rainfall chart whose axis starts at 200mm, so a “drought” year looks like none], [ ]),
    ([An attendance line that shows only exam weeks], [ ]),
    ([A “how students spend their day” pie: sleep 40%, school 30%, study 20%, screens 25%], [ ]),
    ([A bar chart of marks with the axis starting at zero and equal steps], [ ]),
    ([A price-rise chart comparing only the two months before an election], [ ]),
    widths: (1fr, 26mm),
  )
}))

// ---------------- 2.4 ----------------
#sec(4, "Privacy vs security: the constant confusion")
Two words, one wall between them, and most people — including many adults — use them as if they were the same. *Privacy* is your *control*: who may know what about you, and on what terms. *Security* is the *protection*: the locks, backups and rules that keep data away from people who should never have it. You can have security without privacy — a perfectly guarded file nobody consented to — and privacy without security — a promise nobody enforced. Learning systems touch both: they need *features* (which may be personal), and they run on *infrastructure* (which may leak).

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[SORT FIRST — P OR S?]
  v(3pt)
  dtable(("The situation", "P or S?", "The wall between them"),
    ([A hospital's records are encrypted but shared with an insurer without asking], [ ], [ ]),
    ([A family photo album sits on an unlocked family laptop], [ ], [ ]),
    ([A learning app stores marks safely — and reads chat logs it never needed], [ ], [ ]),
    widths: (1fr, 22mm, 1fr),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[The habit: security is judged by LOCKS, privacy by PERMISSIONS — a system needs both, separately audited.]
}))

#task("T9-08", "Privacy vs Security Scenarios", mode: "pair", mins: "15")[
  For each scenario: does it fail PRIVACY (P), fail SECURITY (S), or both (B)? Then write the one fix:
  #v(4pt)
  #dtable(("The scenario", "P / S / B?", "The one fix"),
    ([The school's mark database sits on an unlocked, shared laptop], [ ], [ ]),
    ([The canteen app quietly sells order histories to a snack company], [ ], [ ]),
    ([A "free" photo-print kiosk keeps every photo on a drive anyone can open], [ ], [ ]),
    ([The exam cell emails full mark sheets, names visible, to the wrong list], [ ], [ ]),
    ([A learning app reads students' locations at all hours for "service quality"], [ ], [ ]),
    widths: (1fr, 22mm, 1fr),
  )
  #v(5pt)
  *The two-sentence rule I will use from now on — privacy is …, security is …* #ruled-lines(2, lead: 8.6mm)
]
#wordpower(9, "privacy", [Your control over who may know what about you, and on what terms.])
#wordpower(10, "security", [The locks and rules that keep data away from people who should not have it.])

// ---------------- 2.5 ----------------
#sec(5, "The paper dashboard: three charts, one story")
Analysts communicate with *dashboards*: small groups of charts chosen so that together they tell one honest story. The craft is in the choices — which chart for which job (bars to compare, lines to show change over time, pies only for parts of a whole that truly add to 100%), which time window, which axis start. You will build one on paper about your own class's week, and then do the step most dashboards skip: *write the story the charts tell, including the part they cannot show*.

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[CHART-CHOICE WARM-UP — RIGHT CHART FOR RIGHT JOB]
  v(3pt)
  dtable(("The message to show", "Bar / Line / Pie?", "The one-line reason"),
    ([“How the five houses' collection totals compare”], [ ], [ ]),
    ([“How the temperature moved across the fortnight”], [ ], [ ]),
    ([“What share of waste is food, plastic, paper”], [ ], [ ]),
    ([“Attendance on each day of the week”], [ ], [ ]),
    widths: (1fr, 32mm, 1fr),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[A pie is the most abused chart in the world: it may only ever show parts of ONE whole that sum to 100%. When in doubt, choose the bar.]
}))

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[AXIS START SCAN — THE FIRST GLANCE AT ANY BAR CHART]
  v(3pt)
  dtable(("The chart says…", "Where does its y-axis start?", "Honest or truncated?"),
    ([“Marks jumped this year!” — bars look like a cliff], [ ], [ ]),
    ([“Attendance dipped slightly” — bars look almost equal], [ ], [ ]),
    widths: (1fr, 46mm, 34mm),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Rule of thumb: bar charts start at zero; line charts may zoom — but must SAY so on the axis.]
}))

#task("T9-09", "Paper Dashboard", mode: "group", mins: "25")[
  Your team surveys the class on three questions: *minutes of screen time yesterday*, *marks on the last unit test*, and *mode of travel to school*. Collect quick tallies (your teacher will run the vote), then draw all three charts below — right chart for right job — and finish with the story.
  #v(3pt)
  #barchart-blank(("0–30", "31–60", "61–90", "90+"), ymax: 12, pw: 60mm, ph: 40mm)
  #v(2pt)
  #linechart-blank(("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"), ymax: 12, pw: 60mm, ph: 40mm, ylabel: "")
  #v(2pt)
  #pie-blank(divisions: 10, pw: 40mm)
  #v(5pt)
  *Chart 1 (bar):* screen minutes — I chose a bar chart because … #ruled-lines(1, lead: 7.8mm)
  *Chart 2 (line):* marks across the week's revisions? State what the line shows: #ruled-lines(1, lead: 7.8mm)
  *Chart 3 (pie):* travel modes — my shares add up to exactly … %
  #v(3pt)
  *The story in three sentences — including one thing all three charts CANNOT show:* #ruled-lines(3, lead: 8.6mm)
]

#myth("Average = typical.")[
  The average is one summary number, and every summary throws something away. In the town where the district report claimed a 41-minute median travel time, one village bus ride of 150 minutes sits next to a five-minute walk — the *mean* would say "about 45 minutes", which describes nobody. When the distribution is lopsided — incomes, travel times, hospital waits — the *median* (the middle person) tells you about the typical person and the *mean* tells you about the total. Neither is "the truth"; each answers a different question. Analysts name which one they used — and so will you, from the next chapter onward.]

#selfcheck(
  [I can sort any dataset by type (QL/QT) and structure (S/U) — and name features for the U column],
  [I can audit a source on competence, method and motive — and defend my ratings],
  [I can catch truncated axes, cherry-picked windows and broken pie arithmetic on sight],
  [I can explain privacy and security as two different failures — with one fix for each],
  [I can build a three-chart dashboard and write the story it tells, including its blind spot],
)
#thinkink([A chart or claim I believed before this chapter. The trick it used (or the check it failed) was …], lines: 2)

#homelink[
  #task("AT HOME", "Headline Autopsy", mode: "home", mins: "15")[
    With a grown-up, take ONE number from this week's news (TV, paper, or a forwarded message — do not open links). Run the source audit: competence, method, motive. Then ask the three chart questions if a picture came with it. #v(3pt)
    *The number and its headline:* #ruled-lines(1, lead: 8.1mm)
    *The three faces checked (C / M / M), with one line each:* #ruled-lines(3, lead: 8.1mm)
    *The one question we would send to whoever published it:* #ruled-lines(1, lead: 8.1mm)
  ]
]

#note("Case notes — what changed in my thinking?")[
  Before this chapter I believed a chart or a number was neutral. Now my first three questions are … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 2 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Classify first: *QL/QT*, then *S/U* — unstructured data needs features before it can teach.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Audit every source three ways: *competence, method, motive* — motive never sleeps.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Graph tricks: *truncated axis, cherry-picked window, broken pie arithmetic* — three questions catch all three.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Privacy* is control, *security* is protection — a system can fail either one alone.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[MY WEEK OF NUMBERS — where I will audit first:] #h(4pt) #text(size: 10.1pt)[One number I will re-examine this week, the source it came from, and the face I now doubt most:]]
  ruled-lines(2, lead: 8.2mm)
})

#chapter-checkpoint(2,
  [Why can a survey of 40 students in exam week be honest work with weak method? Name the missing line.],
  [A pie chart's shares are snacks 45%, drinks 35%, lunch 55%. What is impossible — and what probably went wrong?],
  [“The database is perfectly guarded, so privacy is fine.” Where exactly does this argument break?],
)
#case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue about data that can and cannot be trusted")
