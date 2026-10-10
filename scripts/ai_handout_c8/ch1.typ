#import "template.typ": *
// ============================================================
//  CHAPTER 1 — THE AI PROJECT CYCLE   (8 pp · tasks 01–03)
// ============================================================
#chapter-opener(1, "The AI Project Cycle", "What does it take to build an AI that people can trust?",
  outcomes: ("8.U1", "8.L1"), strands: ("L", "T"),
  summary: [You are promoted: from machine-*operator* (Class 7) to machine-*builder*. But no real AI begins with a machine — it begins with a plan. In this chapter you learn the loop every serious AI team runs: *scope* a sharp problem, *collect* the right data, *build and test* a model, then *reflect and improve*. You will turn vague complaints into precise problem statements, sequence the cycle from cards, and walk a complete Plant Doctor project end to end to find exactly where it went wrong.],
  missions: "T8-01 – T8-03",
  link: "Links: Maths — percentages & data · English — precise definitions · Science — plant health case",
  extras: opener-extras(
    words: ("machine learning", "AI project cycle", "problem statement", "dataset"),
    warmup: [Your school wants "an AI that helps students eat better". Write your honest first reaction: what would you need to know BEFORE anyone builds it? Keep your answer — you will rewrite it after Task T8-01.],
    need: ("pencil", "scissors & envelope for cards", "sticky notes", "your Class 7 notebook"),
  ))

// ---------------- 1.1 ----------------
#sec(1, "From user to builder: who learns what")
Last year you trained machines with your own hands, so you already know the secret: a *learning* machine is not given rules — it is given *examples*. This year we name the big idea properly. *Artificial intelligence* is the wide field: any machine that does things we used to need human judgement for. *Machine learning* is the engine inside most modern AI: the machine improves at a task by finding patterns in *examples* (a *dataset*) instead of following rules a person typed. And every AI product you meet is really a machine that learned *one specific thing* from *one specific kind of data*. A chatbot learned from enormous amounts of human text. An image classifier learned from photos with labels attached. A recommender learned from what people like you watched, bought or liked. Different food, different learning.

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[AT A GLANCE · THE WHO-LEARNS-WHAT MAP]
  v(3pt)
  dtable(("The AI product", "What it learned from (its data)", "What it can do", "What it cannot do"),
    ([chatbot], [huge amounts of human writing], [continue a conversation, explain, draft], [know whether what it wrote is TRUE]),
    ([image classifier], [thousands of photos, each with a label], [sort new photos into its labels], [explain *why*, or see what no photo showed]),
    ([recommender], [records what similar people chose], [suggest the next video or product], [understand you, or ask you a question]),
    widths: (30mm, 1fr, 1fr, 1fr),
  )
  v(3pt)
  text(size: 9.5pt, fill: ink-soft, style: "italic")[Keep this map in mind all year. Every AI system is somewhere on it — and the last column is where builders earn their salary.]
}))

#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[TWO MACHINES, HONESTLY COMPARED]
  v(3pt)
  dtable(("Pick one from my morning list", "What it learned from", "Its honest cannot-do"),
    ([#box(width: 40mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))], [ ], [ ]),
    ([#box(width: 40mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))], [ ], [ ]),
    widths: (1fr, 1fr, 1fr),
  )
  v(3pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[The who-learns-what map in ONE sentence of mine: #ruled-lines(1, lead: 7.8mm)]
})

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · SORT THE SIX — WHO LEARNS WHAT?]
  v(3pt)
  text(size: 10.1pt)[Place each product on the map: what did it learn from, and what is its honest cannot-do? Write C (chatbot), I (image classifier) or R (recommender) — then one cannot-do of your own:]
  v(3pt)
  dtable(("The product", "C / I / R?", "Its honest cannot-do"),
    ([a video app that queues up cricket highlights for you], [ ], [ ]),
    ([a photo app that names the dog breed], [ ], [ ]),
    ([an exam-doubt solver that writes full explanations], [ ], [ ]),
    ([a shop bell that offers coupons based on your old bills], [ ], [ ]),
    ([a scanner that spots cracked railway panels], [ ], [ ]),
    ([an email filter that learns which mail you mark as junk], [ ], [ ]),
    widths: (1fr, 24mm, 1fr),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Two of these learned from the SAME kind of data — can you spot which pair? That pair is your proof that data, not the product name, decides what a machine can do.]
}))

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[QUICK POLL — THE FAMILY QUESTION]
  v(2pt)
  text(size: 10.1pt)[Of the six products above, which ONE would your family actually pay for — and which one would they refuse on principle? Two lines, one reason each:]
  ruled-lines(2, lead: 8.2mm)
})

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[PREDICT THE LEARNING] #h(4pt) #text(size: 10.1pt)[Which ONE product above do you predict learned from the FEWEST examples — and what could go wrong for it? Two lines:]]
  ruled-lines(2, lead: 8.2mm)
})

#task("T8-01", "Problem Statement Sharpener", mode: "pair", mins: "15", win: true)[
  Real projects die from *vague problems*. "Our village has a water problem" cannot be built; "detect which public taps run dry for more than two days, so the ward office can dispatch repairs" can. The sharpening tool is the *4W test* — *Who* exactly has the problem? *What* exactly goes wrong? *Where* does it happen? *Why* does it matter? Take these three blunt complaints and sharpen each one into a problem statement a builder could actually plan around:
  #v(4pt)
  #dtable(("The blunt complaint", "Your sharpened problem statement (use all four Ws)"),
    (["Students lose their notebooks."], ruled-lines(2, lead: 8.6mm)),
    (["The bus is always late."], ruled-lines(2, lead: 8.6mm)),
    (["People waste water."], ruled-lines(2, lead: 8.6mm)),
    widths: (52mm, 1fr),
  )
  #v(5pt)
  *Now the hardest step:* cross out one W in your bus statement and watch it wobble. Which W was load-bearing — remove it and the plan collapses? #ruled-lines(2, lead: 8.6mm)
]
#wordpower(1, "problem statement", [One precise sentence saying exactly what problem you solve, for whom, where.])

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[MY MORNING MACHINES — name three “smart” helpers you met before school:] #h(4pt)]
  v(2.5pt)
  text(size: 10.1pt)[1 · #box(width: 52mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) #h(8pt) 2 · #box(width: 52mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) #h(8pt) 3 · #box(width: 52mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))]
  v(2.5pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[By page 20 you will be able to say which of the three learned from examples — and what its data was. Watch your list change.]
})

#note("Detective's note")[A good problem statement sounds boring — and that is a feature. "Reduce" and "improve" are dreams; "detect", "count", "predict X for group Y in place Z" are plans. In the capstone of this book you will write one of these for a real problem you choose, and your classmates will pressure-test it. Sharpen now; shine later.]

// ---------------- 1.2 ----------------
#sec(2, "The loop every AI project runs")
Here is the whole subject of this book in four boxes. First, *problem scoping*: turn a vague worry into a sharp statement (you just did this). Second, *data*: find or collect examples the machine can learn from — and check who is inside them. Third, *model building and testing*: train on some examples, test on hidden ones, and measure honestly. Fourth — the step beginners skip — *reflection and improvement*: the first version is always wrong somewhere; the team reads the failures, fixes the data or the design, and loops back. Notice the arrows: this is a *cycle*, not a straight road. Professional teams go around it many times before anything ships.

#align(center, block(width: 92%, cycle-diagram()))
#v(4pt)

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[THE LOOP IN ONE MINUTE] #h(4pt) #text(size: 10.1pt)[Explain the diagram to a Class 6 student in exactly two sentences — one for the boxes, one for the arrows:]]
  ruled-lines(2, lead: 8.2mm)
})

#task("T8-02", "Cycle Cards", mode: "group", mins: "15")[
  Your teacher has an envelope with five cards: *PROBLEM*, *DATA*, *MODEL*, *TEST*, *IMPROVE*. (No envelope? Copy the five cards onto paper slips.) As a team, lay them out in the order a real project runs, then defend your order — one line per card:
  #v(4pt)
  #dtable(("Card", "Position we chose (1st, 2nd…)", "Why it sits there — one line"),
    ([PROBLEM], [ ], [ ]),
    ([DATA], [ ], [ ]),
    ([MODEL], [ ], [ ]),
    ([TEST], [ ], [ ]),
    ([IMPROVE], [ ], [ ]),
    widths: (26mm, 38mm, 1fr),
  )
  #v(5pt)
  *The twist question:* after IMPROVE, which card does the team return to? Draw the loop arrow on your table — and explain in one line why the cycle never really "ends" for a machine that keeps meeting new people:
  #ruled-lines(2, lead: 8.6mm)
]
#wordpower(2, "AI project cycle", [The loop: scope the problem, collect data, build and test, reflect and improve.])
#wordpower(3, "dataset", [The collection of examples a machine learns from, or is tested on.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · NAME THE STAGE]
  v(3pt)
  text(size: 10.1pt)[Each sentence below comes from some AI project. Write which stage it belongs to: P (problem), D (data), M (model), T (test) or I (improve):]
  v(3pt)
  dtable(("What the team did or said", "Stage?"),
    ([“We spent two days deciding: are we predicting *late buses* or *crowded buses*? Pick one.”], [ ]),
    ([“We asked 60 commuters to log their wait times for two weeks.”], [ ]),
    ([“We taught the machine on 40 logged trips, keeping 20 trips hidden.”], [ ]),
    ([“On the hidden trips it was right 13 times out of 20 — let's look at the 7 misses.”], [ ]),
    ([“The misses were all rainy-day trips. Version 2 gets a weather column.”], [ ]),
    ([“Wait — before any of this: WHO exactly suffers from late buses, and where?”], [ ]),
    widths: (1fr, 22mm),
  )
}))

#myth("AI = ChatGPT.")[
  A chatbot is one famous resident of the AI city, not the city itself. The spam filter in your mail, the crop-disease scanner in a field office, the queue predictor at a clinic — all AI, none of them chat. And most of them learned their skill from a carefully chosen *dataset* through the very cycle you just sequenced. When someone says "AI", train yourself to ask: *which machine, learned from what data, tested how?* That question is the whole of this book.]

// ---------------- 1.3 ----------------
#sec(3, "The Plant Doctor case: a complete walk-through")
Time to watch the whole cycle run — and fail. Read this true-to-life case from the fictional village of Amravati. A team built an AI to diagnose plant disease from leaf photos. Every stage was done with enthusiasm. Your mission is to find where it *actually* went wrong, because the report card said only: "accuracy 82%."

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[PREDICT THE FAILURE — BEFORE YOU READ THE DIARY]
  v(2pt)
  text(size: 10.1pt)[An AI project done "with enthusiasm" by one person in one week usually fails at the same stage. Which stage do YOU predict, and what is your evidence from the sentence above?]
  ruled-lines(2, lead: 8.2mm)
})

#task("T8-03", "Plant Doctor Walk-through", mode: "group", mins: "25")[
  Read the project diary, then answer as a team.
  #v(4pt)
  #block(width: 100%, radius: 5pt, fill: teal-faint, stroke: 0.6pt + line-soft, inset: (x: 10pt, y: 8pt), {
    text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[PROJECT DIARY — PLANT DOCTOR v1]
    v(3pt)
    text(size: 10.2pt)[
      *Stage 1 — Problem:* "Help farmers know if a plant is sick." (The team liked this slogan so much they kept it.)
      *Stage 2 — Data:* A member collected 2,000 leaf photos in one week — all from *his own farm's hybrid tomato field*, taken at *noon in full sun*, all labelled by *one nephew* who "knows plants".
      *Stage 3 — Model & Test:* They trained on 1,600 photos and tested on 400 hidden ones. Accuracy: 82%.
      *Stage 4 — Deploy:* The app was announced at the market. Two weeks later the complaints arrived: it called every diseased leaf "healthy" on the small farms near the river, and it knew nothing about the local desi (native) varieties that look completely different from hybrid tomatoes.
    ]
  })
  #v(5pt)
  #dtable(("Diary stage", "One thing that was done too fast or too narrowly", "What the team should have done instead"),
    ([1 · Problem], [ ], [ ]),
    ([2 · Data], [ ], [ ]),
    ([3 · Model & test], [ ], [ ]),
    ([4 · Reflection], [ ], [ ]),
    widths: (24mm, 1fr, 1fr),
  )
  #v(5pt)
  *The accuracy trap:* 82% sounds like a good score. Write two reasons why that single number hid the failure completely: #ruled-lines(2, lead: 8.6mm)
  *Whose problem statement would you write instead? One sharpened sentence for the REAL users:* #ruled-lines(2, lead: 8.6mm)
]

#selfcheck(
  [I can turn a vague complaint into a problem statement with Who, What, Where and Why],
  [I can name the four stages of the AI project cycle and explain why it loops],
  [I can place a chatbot, an image classifier and a recommender on the who-learns-what map],
  [I can point at the Plant Doctor diary and name the stage that failed first],
)
#thinkink([A "smart" app or service my family uses was really built for someone else. Its problem statement was probably written for …, because …], lines: 2)

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · SHARPEN OR SPOIL?]
  v(3pt)
  text(size: 10.1pt)[Two problem statements enter the workshop. Mark each S (sharp enough to plan with) or V (still vague), then fix the vague one:]
  v(3pt)
  dtable(("Problem statement", "S or V?", "If V — the missing W"),
    ([“Predict which water pumps in Ward 12 will fail this monsoon, so repairs happen before the rains.”], [ ], [ ]),
    ([“Make education better with AI.”], [ ], [ ]),
    ([“Flag Class 8 homework sheets that arrive blank, so the teacher can check 3 instead of 40.”], [ ], [ ]),
    ([“Help people.”], [ ], [ ]),
    widths: (1fr, 18mm, 40mm),
  )
}))

#note("Case notes — what changed in my thinking?")[
  Before this chapter I believed building AI starts with the machine. Now I know it starts with … #ruled-lines(2, lead: 8.4mm)
]

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[WHERE WOULD YOU ENTER THE LOOP?] #h(4pt) #text(size: 10.1pt)[A friend's school already has “students forget things”. Which cycle stage would YOU enter the loop at — and what would you build your version on?]]
  ruled-lines(2, lead: 8.2mm)
})

#note("Chapter 1 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*AI* is the field; *machine learning* is the engine that learns patterns from a *dataset*.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[A *problem statement* passes the 4W test: Who, What, Where, Why — all four, or it wobbles.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[The project cycle loops: *problem → data → model & test → reflect & improve → back again*.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[One accuracy number can hide *who* the machine fails — the Plant Doctor proved it.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#chapter-checkpoint(1,
  [A complaint says “fix the school toilets.” Write its sharpest one-line upgrade using at least three of the four Ws.],
  [The Plant Doctor team tested on 400 hidden photos and scored 82%. Name the TWO diary stages that deserved the blame anyway.],
  [A chatbot and an image classifier — which one learned from human writing, and what is the other one's honest cannot-do?],
)
#case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue about the project cycle")
