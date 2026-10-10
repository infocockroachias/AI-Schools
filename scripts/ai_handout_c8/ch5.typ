#import "template.typ": *
// ============================================================
//  CHAPTER 5 — CAPSTONE: AI PROJECT PROPOSAL   (5+ pp · tasks 15–17)
// ============================================================
#chapter-opener(5, "Capstone: The AI Project Proposal", "Can you plan an AI that people can trust — and defend the plan to a live audience?",
  outcomes: ("8.U1", "8.L1", "8.L2", "8.D1", "8.D2", "8.W1", "8.W2", "8.R1", "8.R2", "8.T1"), strands: ("U", "D", "L", "W", "R"),
  summary: [The final case brings every clue together. Your team will write a complete AI project proposal on paper — sharp problem, audited data plan, chosen tool, honest test, fairness check and known limits — exactly the document a professional team brings to its first review. Then your classmates will pressure-test it in a peer review gallery, and you will sharpen your budget choices with a real optimisation problem. This is not an exam; it is the moment the detective becomes the builder.],
  missions: "T8-15 – T8-17",
  link: "Links: all five strands · English — persuasive writing · Maths — budgeting & optimisation",
  extras: opener-extras(
    words: ("peer review", "trade-off", "optimise", "stakeholder"),
    warmup: [You have one page and one minute to convince your class to build your AI. What is the FIRST thing you would say — the problem, the data, or the dream? Write it, then check if your answer survives Task T8-15.],
    need: ("your whole notebook", "pencil AND eraser", "the fairness checklist from Chapter 2", "courage to share"),
  ))

// ---------------- 5.1 ----------------
#sec(1, "The proposal: your plan on paper")
Every serious AI project begins as a document nobody coded: a proposal. Its job is to answer six questions *before* anyone builds — What problem, exactly? What data, from whom, with what consent? Which tool, and why that one? How will we test it honestly? Who could it hurt, and what did we change for them? What can it NOT do? A proposal that answers all six can still fail — but a project without one fails *surprised*, which is worse. Your proposal lives in Tasks T8-15 over the next pages. Choose a real, local, small problem: your classroom, your street, your school's morning chaos. Small and real beats grand and imaginary every time.

#task("T8-15 · Part 1", "AI Project Proposal — the plan", mode: "group", mins: "3 periods")[Part 1 of 2. Work as a project team of three or four. Choose your problem, then scope it with the discipline of Chapter 1.]
#v(2pt)
#block(width: 100%, radius: 5pt, stroke: 1pt + ink, fill: white, inset: (x: 11pt, y: 9pt))[
  #text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[PROPOSAL · SECTION A — THE SHARP PROBLEM]
  #v(4pt)
  *Our problem statement (passes the 4W test):* #ruled-lines(2, lead: 8.6mm)
  *The stakeholders — everyone this machine would touch, helped or harmed (name at least three groups):* #ruled-lines(2, lead: 8.6mm)
  *Why existing solutions are not enough:* #ruled-lines(2, lead: 8.6mm)
  #v(4pt)
  #text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[SECTION B — THE TOOL]
  #v(4pt)
  *Which no-code tool type fits — classifier, chatbot or predictor — and why that one:* #ruled-lines(2, lead: 8.6mm)
  *Its input, its output, and one hard limit we accept:* #ruled-lines(2, lead: 8.6mm)
]

#task("T8-15 · Part 2", "AI Project Proposal — data, test & fairness", mode: "group", mins: "3 periods")[Part 2 of 2. This is where the Plant Doctor failed. Do not skip a box.]
#v(2pt)
#block(width: 100%, radius: 5pt, stroke: 1pt + ink, fill: white, inset: (x: 11pt, y: 9pt))[
  #text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[SECTION C — THE DATA PLAN]
  #v(4pt)
  #dtable(("What we collect", "From whom (all the groups!)", "How we get consent", "How we protect privacy"),
    ([ ], [ ], [ ], [ ]),
    ([ ], [ ], [ ], [ ]),
    widths: (1fr, 1fr, 1fr, 1fr),
  )
  #v(4pt)
  *Our guest-list check (from Chapter 2): which groups must be INSIDE the data for this to be fair — and how many from each?*
  #ruled-lines(2, lead: 8.6mm)
  #v(4pt)
  #text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[SECTION D — THE HONEST TEST]
  #v(4pt)
  *Our hidden test set: how many cases, and why that number:* #ruled-lines(1, lead: 8.6mm)
  *The accuracy we would accept before shipping (and the accuracy that would send us back to the drawing board):* #ruled-lines(1, lead: 8.6mm)
  #v(4pt)
  #text(font: f-display, size: 12.7pt, weight: 800, fill: teal)[SECTION E — FAIRNESS & LIMITS]
  #v(4pt)
  *The group most likely to be failed by version 1 (be specific):* #ruled-lines(1, lead: 8.6mm)
  *What we changed in the plan because of that group:* #ruled-lines(1, lead: 8.6mm)
  *What our machine will NEVER do (write it down before someone assumes otherwise):* #ruled-lines(1, lead: 8.6mm)
]

// ---------------- 5.2 ----------------
#sec(2, "The Peer Review Gallery")
Real proposals are never shipped on the builder's word alone — they face review. In professional teams, reviewers hunt for the *weakest box*, not the prettiest sentence, and the proposal gets better because of it. Today your classmates are your reviewers: every plan is pinned up (or read aloud), every team walks the gallery with a clipboard, and every review ends with one strength, one gap, and one question the builders cannot dodge.

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[GALLERY MARSHAL — HOUSE RULES:] #h(4pt) #text(weight: 700)[review the PLAN, never the people · one strength before any gap · every gap must come with the question that would close it · builders may only reply with evidence, not feelings.]]
})

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[THE WEAKEST BOX IN AI HISTORY — a 30-second recall:] #h(4pt) #text(size: 10.1pt)[The Plant Doctor proposal would have scored well on THREE of the six boxes. Which box would you have graded Beginning — and what ONE line would have saved it?]]
  ruled-lines(2, lead: 8.2mm)
})

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[MY GALLERY CLIPBOARD — plan the walk before you walk it]
  v(2pt)
  text(size: 10.1pt)[The proposals I will review (numbers): #box(width: 14mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) #box(width: 14mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) #box(width: 14mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) #h(6pt) The question I am proudest to ask: #box(width: 52mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))]
  ruled-lines(1, lead: 8.2mm)
  v(3pt)
  text(size: 9.7pt)[*Reviewer's oath:* “I will find the weakest box, say what is strong first, and leave every plan better than I found it.”]
})

#task("T8-16", "Peer Review Gallery", mode: "class", mins: "20")[
  Walk the gallery. For each proposal except your own, fill one review card. Be honest and kind — you are reviewing the *plan*, never the people:
  #v(4pt)
  #block(width: 100%, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt))[
  #text(size: 9.4pt, weight: 800, fill: teal, tracking: 0.1em)[REVIEW CARD — FOR PROPOSAL № #box(width: 14mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))]
  #v(3pt)
  *The strength I would praise first:* #ruled-lines(1, lead: 8.2mm)
  *The weakest box right now (problem / data / test / fairness):* #ruled-lines(1, lead: 8.2mm)
  *The one question the builders cannot dodge:* #ruled-lines(2, lead: 8.2mm)
  *Rubric shade for this proposal —* Beginning / Growing / Secure / Shining *(shade one)* #conf(n: 4)
]
  #v(5pt)
  *Now the reverse mirror:* the sharpest question a reviewer asked about YOUR plan, and what version 2 will do about it:
  #ruled-lines(2, lead: 8.6mm)
  #v(4pt)
  #block(width: 100%, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt))[
    #text(size: 9.4pt, weight: 800, fill: teal, tracking: 0.1em)[CARD 2 OF 3 — THE ONE-MINUTE VERSION (use for a third proposal)]
    #v(3pt)
    Proposal № #box(width: 12mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) · weakest box: #box(width: 26mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) · rubric shade: #conf(n: 4)
    #v(2pt)
    *My closing question for the builders:* #ruled-lines(1, lead: 8.2mm)
  ]
]

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[THE FOUR LEVELS — HOW THIS BOOK GRADES REASONING]
  v(3pt)
  dtable(("Level", "What it looks like in a proposal"),
    ([Beginning], [The problem is a slogan; the data is "we will find some"; fairness is one word.]),
    ([Growing], [Real problem and tool chosen, but the test is vague or the fairness check is a promise, not a plan.]),
    ([Secure], [All six boxes are answered with evidence — and the limits are written before anyone asked.]),
    ([Shining], [Secure, PLUS the team found a trade-off nobody noticed and made a defensible choice anyway.]),
    widths: (30mm, 1fr),
  )
  v(3pt)
  text(size: 9.3pt, fill: ink-soft, style: "italic")[Notice: a flawed answer with honest reasoning can outscore a polished answer with no reasons. This rubric rewards exactly what builders get paid for.]
}))

// ---------------- 5.3 ----------------
#sec(3, "Optimise It: the best you can afford")
One last thinking-tool before graduation. Real builders never have enough budget for everything — they *optimise*: they break the choice into parts (cost, benefit, fairness) and find the best combination under the limit. This is computational thinking in its purest form: no AI at all, just you, a table and a constraint.

#note("The optimiser's habit")[Break the choice into parts (this item costs this, buys that), compute honestly, then defend what you leave out. The defence matters as much as the choice — a budget nobody can argue with is a budget nobody checked.]

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[BUDGET ARITHMETIC WARM-UP — BEFORE YOU SHOP]
  v(3pt)
  text(size: 10.1pt)[Add up these three starter combinations. Which ones fit inside ₹500 — and which item appears in BOTH affordable pairs?]
  v(3pt)
  dtable(("Combination", "Total cost", "Fits ₹500?"),
    ([A + B (trip + test cards)], [ ], [ ]),
    ([C + D (two features + lighting)], [ ], [ ]),
    ([B + C + D (tests + features + lighting)], [ ], [ ]),
    widths: (1fr, 28mm, 26mm),
  )
}))

#task("T8-17", "Optimise It", mode: "alone", mins: "10")[
  Your club has *₹500* to improve the leaf classifier before its second test. Choose the combination that gets the most trustworthy machine. You may buy each item at most once. Warm-up totals: A+B = ₹300 · C+D = ₹400 · B+C+D = ₹500 — all three fit, but none fixes everything. Now choose:
  #v(4pt)
  #dtable(("Upgrade item", "Cost", "What it buys you"),
    ([A · Second field trip for 20 more leaves, half from the river farm], [₹200], [fixes the missing-group problem in training]),
    ([B · Print 10 extra hidden test cards], [₹100], [bigger test set — a steadier accuracy number]),
    ([C · Measure both leaf features (edge AND length) for all cards], [₹150], [two features instead of one — fewer mix-ups]),
    ([D · Photograph everything in shade AND sun], [₹250], [kills the lighting weakness the Plant Doctor had]),
    widths: (1fr, 20mm, 1fr),
  )
  #v(4pt)
  *My combination (letters + total cost):* #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))
  *The accuracy problems this combination fixes:* #ruled-lines(2, lead: 8.6mm)
  *The weakness I knowingly leave unfixed — and my defence for leaving it:* #ruled-lines(2, lead: 8.6mm)
  *Could any combination fix everything at once? What does that tell you about real projects?* #ruled-lines(1, lead: 8.6mm)
]

#myth("The model knows why.")[
  Ask the leaf classifier *why* it called a leaf type B, and it has no answer — only distances. Ask the text generator why it wrote a sentence, and it will *invent* a plausible reason, the same way it writes everything else. The "why" lives in three places, and none of them is the model: in the *data* (what patterns existed), in the *design choices* (which features, which examples), and in the *people* (who decided what it was for). That is why every chapter of this book made you write your reasons beside your answers — the reasoning was never the machine's job. It was, and is, yours.]

#selfcheck(
  [I can write a proposal that answers all six builder questions with evidence],
  [I can review a classmate's plan with one strength, one gap and one unavoidable question],
  [I can grade a proposal — mine or a classmate's — with the four levels and say why],
  [I can choose the best combination under a budget and defend the trade-off I accept],
)
#thinkink([After this year, my honest definition of "trustworthy AI" is … — and one thing I now check that I never checked before is …], lines: 2)

#note("Case notes — what changed in my thinking?")[
  Before this year I believed AI was mainly about clever machines. After building (on paper) my own, I believe it is mainly about … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 5 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[A proposal answers six questions *before* building: problem, data, tool, test, fairness, limits.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Peer review* hunts the weakest box — the plan that survives honest reviewers earns its trust.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Optimising* means choosing the best combination under limits — and defending what you leave out.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[The model never knows why — the reasons live in the data, the design and the people.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#chapter-checkpoint(5,
  [Name the six sections of your proposal, in order — no peeking back.],
  [A reviewer shades "Growing" on a proposal whose boxes are all filled. What is most likely missing?],
  [In T8-17, why is "fix everything" impossible — and what does a real team do about that?],
)
#case-journal(lines: 3, label: "MY CASE JOURNAL — the last clue of Case 3, for the road to Class 9")
