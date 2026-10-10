#import "template.typ": *
// ============================================================
//  CHAPTER 5 — CAPSTONE: RESPONSIBLE AI DESIGN BRIEF (tasks 19–21)
// ============================================================
#chapter-opener(5, "Capstone: The Responsible AI Design Brief", "Can you design AI that survives its own audit?",
  outcomes: ("10.D1", "10.C1"), strands: ("U", "D", "L", "W", "R"),
  summary: [Four books of tools converge on one document. Your team will design a complete AI system on paper — scoped problem, consented and audited data plan, chosen model family, honest evaluation with a defensible metric, deployment limits, an ethics gate that can stop the project, and a pitch that names its own doubts before the judges do. Then you will defend it to a Board of Judges made of your classmates, and finally turn the map toward yourself: where this way of thinking meets the subjects, courses and careers you are about to choose. This is the assignment the whole series was quietly rehearsing.],
  missions: "T10-19 – T10-21",
  link: "Links: all subjects — the brief is interdisciplinary by design · English — the pitch is reasoned writing · Economics — budgets and trade-offs",
  extras: opener-extras(
    words: ("design brief", "ethics gate", "deployment limits", "pitch"),
    warmup: [Write the problem your team is tempted to build for — in one messy sentence. You will sharpen it at Stage 1 until it is boring, precise and un-fakeable.],
    need: ("your Chapter 1 family map", "Chapter 3 metric choices", "Chapter 4 minimisation list", "A3 paper or two notebook pages"),
  ))

// ---------------- 5.1 ----------------
#sec(1, "The brief: seven stages, two gates")
The pipeline below is the whole series in one line. Stages 1–4 are the engineering spine; Stage 5 decides who stays in the loop; Stage 6 is the ethics review with the power to say no; Stage 7 is where you defend it. The two gates matter more than the stages: *Gate A* stops bad data before a model exists, and *Gate B* stops unaudited deployments before real people meet them. Professional teams that skip gates do not move faster — they just schedule their failure for after the launch.

#figure-visual("visuals/c10_ch5_design-pipeline.png", [Your capstone in one strip: seven stages, two gates. Stage 6 exists so that "stop" is a legal move in your own process.])

#v(4pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[HOW REAL TEAMS RUN THIS BRIEF — THE THREE-PERIOD RHYTHM]
  v(3.5pt)
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 7pt,
    box(fill: white, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 8pt, y: 6.5pt), stack(spacing: 2pt,
      text(font: f-display, size: 9.6pt, weight: 800, fill: teal)[PERIOD 1 · SCOPE + DATA],
      text(size: 9.3pt)[Stages 1–2 and Gate A. End only when the consent sentence and the missing-groups list are written — not when time is up.],
    )),
    box(fill: white, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 8pt, y: 6.5pt), stack(spacing: 2pt,
      text(font: f-display, size: 9.6pt, weight: 800, fill: teal)[PERIOD 2 · MODEL + EVALUATION],
      text(size: 9.3pt)[Stages 3–4. The metric argument out loud, in roles: one argues recall, one precision, one is the stakeholder who pays.],
    )),
    box(fill: white, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 8pt, y: 6.5pt), stack(spacing: 2pt,
      text(font: f-display, size: 9.6pt, weight: 800, fill: teal)[PERIOD 3 · DEPLOY + REVIEW + GATE B],
      text(size: 9.3pt)[Stages 5–6. Then rehearse the pitch against the five board questions — the team that rehearses its limits owns the room.],
    )),
  )
})

#task("T10-19", "Responsible AI Design Brief", mode: "group", mins: "3–4 periods", hands: true)[[
  One problem your team genuinely cares about — school, neighbourhood, town. Build the brief in two parts.
  #v(4pt)
  #grid(columns: (1fr, 1fr), column-gutter: 8pt, row-gutter: 7pt,
    box(fill: white, stroke: 1pt + ink, radius: 5pt, inset: (x: 10pt, y: 8pt), {
      text(size: 9.4pt, weight: 800, fill: teal, tracking: 0.1em)[PART A · STAGES 1–4 + GATE A]
      v(3pt)
      text(size: 10.1pt)[*1 · Scope* — the boring, precise statement: who, what, where, why now. #ruled-lines(2, lead: 7.8mm)]
      text(size: 10.1pt)[*2 · Data* — sources, consent sentence, guest-list audit, named missing groups, minimisation list. #ruled-lines(3, lead: 7.8mm)]
      text(size: 10.1pt)[*3 · Model* — family + branch + job, chosen from your map, with the reason. #ruled-lines(2, lead: 7.8mm)]
      text(size: 10.1pt)[*4 · Evaluate* — split, metric chosen FOR THE STAKES, expected confusion-matrix shape. #ruled-lines(3, lead: 7.8mm)]
      v(2pt)
      text(size: 9.6pt, fill: amber-deep, weight: 800)[GATE A — WOULD THE PEOPLE IN THIS DATA CONSENT? IF NO, STOP AND REWRITE THE DATA PLAN.]
    }),
    box(fill: white, stroke: 1pt + ink, radius: 5pt, inset: (x: 10pt, y: 8pt), {
      text(size: 9.4pt, weight: 800, fill: teal, tracking: 0.1em)[PART B · STAGES 5–7 + GATE B]
      v(3pt)
      text(size: 10.1pt)[*5 · Deploy* — who uses it, where it fails first, which humans stay in the loop. #ruled-lines(3, lead: 7.8mm)]
      text(size: 10.1pt)[*6 · Ethics review* — four principles, one line each; your audit verdict: ship / fix-first / stop. #ruled-lines(3, lead: 7.8mm)]
      text(size: 10.1pt)[*7 · Pitch* — the claim, the evidence, the limits, and what would change your mind. #ruled-lines(3, lead: 7.8mm)]
      v(2pt)
      text(size: 9.6pt, fill: amber-deep, weight: 800)[GATE B — WOULD YOU EXPLAIN EVERY FAILURE TO THE PEOPLE IT AFFECTS? IF NOT, BACK TO STAGE 2, IN WRITING.]
    }),
  )
  #v(5pt)
  *Budget line (every real brief has one):* what does maintaining this cost — data refreshes, audits, appeals? Name the cheapest thing you would cut FIRST when money runs out, and what that cut does to your metric. #ruled-lines(2, lead: 8.2mm)
]]

// ---------------- 5.2 ----------------
#sec(2, "The Board of Judges")
The pitch is reasoned writing under pressure. Five minutes per team: the claim, the evidence, the limits — and the board's job is not to be nice; it is to find the assumption the team has not tested. Every question lands on one of the seven stages, which is why you drew them.

#task("T10-20", "Board of Judges Pitch", mode: "class", mins: "25")[[
  *For the pitching team (5 minutes):* the problem in one sentence · the metric you chose and the error you accept · the gate you almost failed, and what you changed · the limit you discovered yourself.
  #v(3pt)
  #ruled-lines(4, lead: 8.2mm)
  #v(3pt)
  *For each judge — one question from a different stage:*
  #v(2pt)
  #dtable(("Judge", "Stage attacked", "The question (write it before they present)"),
    ([Judge 1], [Stage 1 · Scope], []),
    ([Judge 2], [Stage 2 · Data], []),
    ([Judge 3], [Stage 4 · Metric], []),
    ([Judge 4], [Stage 6 · Ethics], []),
    widths: (0.5fr, 0.9fr, 1.8fr),
  )
  #v(4pt)
  *The verdict rule:* the board may send a team back through a gate, but every "back" must name the stage and the reason. Write the board's verdict here — including the assumption the team had NOT tested: #ruled-lines(2, lead: 8.2mm)
]]

// ---------------- 5.3 ----------------
#sec(3, "Where next: your subject and career map")
The series ends by turning the map toward you. The AI-literate Class 10 student does not have to become an engineer; they have to become the person in the room who can ask the seven questions and read the four numbers. Every board subject you are choosing feeds that person: mathematics feeds the metrics, biology feeds the screening cases, civics feeds the governance debates, languages feed the text systems, economics feeds the budgets.

#task("T10-21", "Where Next? Subject & Career Map", mode: "alone", mins: "15", win: true)[[
  *a)* From your 10 "I can" statements (front of this book), star the TWO you are already *Proficient* at. Evidence, not feeling — name the task that proves each. #writebox(20mm)
  *b)* Circle the ONE you most want at *Advanced* by year-end. What would you design or audit to get there? #ruled-lines(2, lead: 8.2mm)
  *c)* Your subject choices for the next two years — and the ONE chapter of this series each subject will inherit from you. #writebox(20mm)
  *d)* One line to the designer you are becoming: what will you refuse to build, whatever the salary? #ruled-lines(2, lead: 8.2mm)
]]

#selfcheck(
  [I can run the seven-stage brief from scope to pitch without skipping a gate],
  [I can defend a metric choice against a board that disagrees with me],
  [I can name the assumption my own design rests on — and what evidence would move it],
  [I can map my starred skills to subjects and careers honestly, with evidence],
  [I can state what I will refuse to build, and why that is a design decision, not a slogan],
)
#thinkink([Five books, one road: the thing I can DO now that I could not do in Class 6 is …, and the thing I still want to own by Class 12 is …], lines: 2)

#note("Case notes — what changed in my thinking?")[
  Before the series I thought AI was products. Now I know it is decisions wearing products — and the decision I feel most ready to make is … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 5 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Seven stages, two gates* — the gates are where honest projects stop, fix, and restart in writing.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*A pitch names its own limits* before the judges find them — credibility is a design material.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*The verdict must name the stage and the reason* — "back to Stage 2" is a sentence, not a feeling.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Your map forward* is starred evidence, not hopes — two Proficient claims with proof, one Advanced target with a plan.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#chapter-checkpoint(5,
  [A rival team's brief has brilliant metrics and no consent sentence. Which gate stops it — and in one line, what the team must produce to pass?],
  [The board cannot agree on your verdict. Write the ONE piece of evidence that would settle it — and which stage it belongs to.],
  [Why is "what would change my mind" a Stage 7 requirement and not a Stage 4 one? Answer with the words 'claim' and 'stakeholder'.],
)
#v(6pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 1pt + ink, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[WHAT EVERY BOARD ASKS — THE FIVE QUESTIONS OF EVERY REVIEW ROOM YOU WILL EVER ENTER]
  v(4pt)
  grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: amber, baseline: 28%), text(size: 10.1pt)[*"What exactly is the problem — and who chose it?"* (Stage 1)],
    box(width: 4.5pt, height: 4.5pt, fill: amber, baseline: 28%), text(size: 10.1pt)[*"Where did this data come from, and who consented?"* (Stage 2)],
    box(width: 4.5pt, height: 4.5pt, fill: amber, baseline: 28%), text(size: 10.1pt)[*"Which error does your metric accept, and who pays it?"* (Stage 4)],
    box(width: 4.5pt, height: 4.5pt, fill: amber, baseline: 28%), text(size: 10.1pt)[*"Show me the failure you found yourself — not the one we found."* (any stage)],
    box(width: 4.5pt, height: 4.5pt, fill: amber, baseline: 28%), text(size: 10.1pt)[*"What would make you stop your own project?"* (Gate B)],
  )
  v(3pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[Tick the ones your pitch survived today. The unticked ones are not failures — they are your revision list, and every professional review room in the country runs on exactly these five.]
})
#case-journal(lines: 3, label: "MY CASE JOURNAL — the last entry of the series: what I will design, and what I will refuse")
