#import "template.typ": *
// ============================================================
//  CHAPTER 5 — CAPSTONE: SDG-LINKED AI BRIEF   (4+ pp · tasks 19–21)
// ============================================================
#chapter-opener(5, "Capstone: The SDG-linked AI Brief", "Can you connect an AI idea to the world's goals — and defend it before a panel?",
  outcomes: ("9.R2", "9.T1", "9.U1", "9.L1", "9.D1", "9.D2", "9.M1", "9.M2", "9.M3", "9.M4", "9.W1", "9.R1"), strands: ("U", "D", "L", "W", "R"),
  summary: [The final case lifts your eyes from the classroom to the world. The Sustainable Development Goals — the world's shared to-do list, from clean water to quality education — need exactly what you have practised: scoped problems, honest data, verified claims and ethical reasoning. Your team will write one SDG-linked AI brief, face an ethics review panel that argues from every stakeholder's chair, and close the year by tracing a full decision flowchart by hand — the analyst's proof that a procedure is only as good as its weakest step.],
  missions: "T9-19 – T9-21",
  link: "Links: Social Science — SDGs & development · Maths — your Chapter 3 mechanisms · English — the brief as argument",
  extras: opener-extras(
    words: ("SDG", "ethics review", "flowchart", "trace"),
    warmup: [Which ONE global problem would you fix first if you could? Write it — then be ready to defend why your choice beats your neighbour's.],
    need: ("your whole notebook", "the Chapter 3 mechanisms", "sticky notes", "a panel face"),
  ))

// ---------------- 5.1 ----------------
#sec(1, "The brief: one goal, one data plan, one ethics note")
The world's Sustainable Development Goals (SDGs) — clean water and sanitation, quality education, affordable clean energy, decent work, reduced inequalities — are, at bottom, *data problems*: who is missed, by how much, and what would change it. Your SDG-linked AI brief is one page of disciplined answers to six questions: WHICH goal and target, scoped with the 4Ws; WHAT data (features, sources, guest list); WHICH mechanism (your paper tools: averages, best-fit line, kNN, verification); WHAT the machine predicts; WHO decides; and the ETHICS NOTE — who could be hurt, and what the plan changes for them. One page, all evidence, no slogans.

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[SDG SHORTLIST — CHOOSE, THEN DEFEND THE CHOICE]
  v(3pt)
  dtable(("The goal on our shortlist", "The LOCAL version we could actually study", "Why it beats the other three"),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    widths: (44mm, 1fr, 1fr),
  )
  v(3pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[The analyst's test for a good goal: can you name a FEATURE, a SOURCE and a DECIDER for it in one sentence each? If not, it is a wish, not a project.]
}))

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[OUR GOAL IN ONE BREATH — THE 20-SECOND PITCH]
  v(2pt)
  text(size: 10.1pt)[Practise on each other before the panel does: *“Our goal is …, our local problem is …, and our machine will help by …”* Two lines for the pitch that survived telling it aloud:]
  ruled-lines(2, lead: 8.2mm)
  v(3pt)
  text(size: 9.7pt)[*SDG in the wild:* one place this goal already appears in the news, a government scheme, or a local poster — and the number they quote:]
  ruled-lines(1, lead: 8.2mm)
})

#task("T9-19", "SDG–AI Project Brief", mode: "group", mins: "3–4 periods")[
  One brief per team. Choose ONE SDG-linked local problem — water, education, energy, health, equality — and fill every box with evidence, not adjectives.
  #v(3pt)
  #block(width: 100%, radius: 5pt, stroke: 1pt + ink, fill: white, inset: (x: 11pt, y: 9pt))[
  #text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[SECTION A — THE GOAL AND THE SCOPED PROBLEM]
  #v(3pt)
  *The SDG we chose (number + short name):* #ruled-lines(1, lead: 8.4mm)
  *Our local version of it, scoped with the 4Ws (one sentence):* #ruled-lines(2, lead: 8.6mm)
  #v(4pt)
  #text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[SECTION B — THE DATA PLAN]
  #v(3pt)
  #dtable(("Feature (precise name + unit)", "Source (who measured, how)", "Guest-list check (who is missing?)"),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    widths: (1fr, 1fr, 1fr),
  )
  #v(4pt)
  #text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[SECTION C — THE MECHANISM AND THE PREDICTION]
  #v(3pt)
  *Our paper mechanism (average / probability / best-fit line / kNN) and why it fits:* #ruled-lines(2, lead: 8.6mm)
  *Exactly what the system outputs, and the human who decides:* #ruled-lines(1, lead: 8.6mm)
  #v(4pt)
  #text(font: f-display, size: 12.7pt, weight: 800, fill: amber-deep)[SECTION D — THE ETHICS NOTE]
  #v(3pt)
  *Who could be hurt, how — and the change we made for them:* #ruled-lines(2, lead: 8.6mm)
  *What our system will NEVER do:* #ruled-lines(1, lead: 8.6mm)
]
]

// ---------------- 5.2 ----------------
#sec(2, "The ethics review panel")
Class 8's court judged a single machine; the panel judges *briefs* — and it argues in chairs. Every reviewer takes a stakeholder's seat (the served community, the data's source, the operator, the one who bears the risk) and interrogates the brief FROM that chair. The standard is the course standard: evidence for every box, a named mechanism, a filled guest list, and an ethics note that names someone specific.

#task("T9-20", "Ethics Review Panel", mode: "class", mins: "25")[
  Each brief gets 5 minutes: 2 to present, 3 of questions from the chairs. Panelists: fill one line per chair for each brief you hear (except your own):
  #v(4pt)
  #block(width: 100%, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt))[
    #text(size: 9.4pt, weight: 800, fill: teal, tracking: 0.1em)[PANEL CARD — FOR BRIEF № #box(width: 14mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))]
    #v(3pt)
    *From the SERVED chair, the question that must be answered:* #ruled-lines(1, lead: 8.2mm)
    *From the DATA-SOURCE chair:* #ruled-lines(1, lead: 8.2mm)
    *From the OPERATOR chair:* #ruled-lines(1, lead: 8.2mm)
    *From the BEARS-THE-RISK chair:* #ruled-lines(1, lead: 8.2mm)
    #v(3pt)
    *Panel shade —* Emerging / Developing / Proficient / Advanced *(shade one)* #conf(n: 4)
  ]
  #v(5pt)
  *The reverse mirror:* the chair question that shook YOUR brief — and the fix version 2 adopts: #ruled-lines(2, lead: 8.6mm)
]

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[THE FOUR LEVELS — CLASS 9 EDITION]
  v(3pt)
  dtable(("Level", "What it looks like in a brief"),
    ([Emerging], [A goal is named; the rest is enthusiasm. The mechanism and the guest list are missing.]),
    ([Developing], [Real scoping and data, but the mechanism is decorative or the ethics note is a promise.]),
    ([Proficient], [All sections answer with evidence; the mechanism genuinely fits; the bears-ring is populated.]),
    ([Advanced], [Proficient, PLUS the team caught a trade-off nobody raised and defended their choice with numbers.]),
    widths: (30mm, 1fr),
  )
  v(3pt)
  text(size: 9.3pt, fill: ink-soft, style: "italic")[The bar rose with you: Class 8 rewarded honest reasoning; Class 9 rewards evidence that a sceptic can re-run.]
}))

// ---------------- 5.3 ----------------
#sec(3, "The flowchart trace: end the year with precision")
An AI system's decisions, its verify-routines, its escalation paths — all of them are *procedures*, and a procedure written well is a *flowchart*: boxes for steps, diamonds for decisions, arrows for the flow. The analyst's final skill is the *trace*: run the procedure by hand, exactly, marking the path taken and the value carried at each step. Tracing is how programmers debug, how auditors check, and how you will catch every “the machine decided” that nobody can explain.

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[TRACE WARM-UP — PREDICT BEFORE YOU TRACE]
  v(2pt)
  text(size: 10.1pt)[A “score 40 or more” rule sends students two ways. Which score in a class list would you check TWICE before trusting the outcome — and why that exact number?]
  ruled-lines(2, lead: 8.2mm)
  v(3pt)
  text(size: 9.7pt)[*My own procedure:* a morning routine, a bus-board decision, a cricket shot selection — write one decision you make by rules, ready to flowchart it:]
  ruled-lines(1, lead: 8.2mm)
})

#task("T9-21", "Flowchart Trace", mode: "alone", mins: "15")[
  The flowchart below is the exam cell's re-test rule. Trace it for THREE students by writing the path and the final state in the table. Then improve it.
  #v(6pt)
  #align(center, flowchart-trace())
  #v(6pt)
  #dtable(("The student", "Score", "Path taken (boxes in order)", "Final state"),
    ([Meera], [72], [ ], [ ]),
    ([Arun], [38], [ ], [ ]),
    ([Divya], [40], [ ], [ ]),
    widths: (28mm, 18mm, 1fr, 34mm),
  )
  #v(5pt)
  *The boundary case:* Divya's score is exactly 40. Trace what your reading of “40 or more?” decides — and what the flowchart's writer should do to remove the doubt: #ruled-lines(2, lead: 8.6mm)
  *Improve it:* ONE extra decision you would add (e.g., attendance below 60% → counselling first) — draw it as a box + diamond on the margin of the flowchart, and write the new rule in words: #ruled-lines(2, lead: 8.6mm)
]
#wordpower(21, "flowchart", [A diagram of a procedure: steps, decisions, and the arrows between them.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[AT A GLANCE · FOUR YEARS, ONE TOOLKIT]
  v(3pt)
  dtable(("Class", "You could…", "The tool you trusted"),
    ([6 · NOTICE], [spot learning machines and ask your first questions], [your senses + five questions]),
    ([7 · SORT & PREDICT], [train, test and watch machines get fooled], [examples, hidden tests, charts]),
    ([8 · BUILD THE CYCLE], [plan, audit and defend an AI before it exists], [the proposal + peer review]),
    ([9 · REASON], [compute the mechanisms and verify the claims], [averages, probability, lines, kNN, Verify-It]),
    widths: (30mm, 1fr, 1fr),
  )
  v(3pt)
  text(size: 9.5pt, fill: ink-soft, style: "italic")[Class 10 will ask the hardest question yet: how do we MEASURE, JUDGE and GOVERN these systems — with evidence you now know how to gather. Bring every notebook.]
}))

#myth("A procedure followed is a decision justified.")[
  The flowchart was followed perfectly — every arrow, every box. But who wrote “40 or more”? Whose scores does the rule silently punish? A trace proves the procedure ran; it says nothing about whether the procedure is fair, current, or even sane. Machines are magnificent tracers and terrible questioners: they will follow a broken rule exactly, at scale, forever. That is why the analyst's job is never finished at “it ran correctly” — the questions *who wrote this, for whom, and who bears it* stand above every flowchart ever drawn.]

#selfcheck(
  [I can connect a local problem to an SDG and scope it with the 4Ws],
  [I can write a brief whose data plan, mechanism and ethics note all carry evidence],
  [I can interrogate a brief from four stakeholder chairs — and score reasoning, not polish],
  [I can trace a flowchart exactly, spot its boundary cases, and propose a precise improvement],
  [I can say what my four years of AI study have equipped me to do — and what I still cannot],
)
#thinkink([After four case files, my honest answer to “why does AI work — and when does it fail?” is …], lines: 3)

#note("Case notes — what changed in my thinking?")[
  Before this year, “AI” was a product I used. After this year, it is a set of mechanisms I can compute, question and govern. The single most useful thing I take forward is … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 5 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[An SDG brief is *one page of evidence*: scoped goal, data plan, mechanism, decision, ethics note.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Panel questions come *from chairs* — the bears-the-risk chair is the one that saves the brief.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[A *flowchart trace* proves a procedure ran — never that it was fair. Boundary cases expose the writer.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Four years, one toolkit: *notice, train, build, reason* — next stop, measure and govern.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[MY FOUR YEARS — the mission I would teach to a Class 6 student first:] #h(4pt)]
  v(2.5pt)
  text(size: 10.1pt)[I would teach … #box(width: 58mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) because it needs nothing but …]
  ruled-lines(1, lead: 8.2mm)
})

#chapter-checkpoint(5,
  [Name the six boxes of the SDG brief — no peeking.],
  [From which chair would you question a brief that has no guest-list check? What is the first question?],
  [Divya scores exactly 40 and the rule says “40 or more”. Why is this the flowchart's most dangerous line?],
)
#case-journal(lines: 3, label: "MY CASE JOURNAL — the last clue of Case 4, for the road to Class 10")
