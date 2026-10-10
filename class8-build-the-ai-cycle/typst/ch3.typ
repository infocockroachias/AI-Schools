#import "template.typ": *
// ============================================================
//  CHAPTER 3 — HOW MODELS LEARN & WHAT NO-CODE TOOLS DO   (8 pp · tasks 08–10)
// ============================================================
#chapter-opener(3, "How Models Learn & What No-Code Tools Do", "How does a machine decide — and how do we measure whether it decides well?",
  outcomes: ("8.L2", "8.W1"), strands: ("L", "W"),
  summary: [Now the workshop floor. You will hand-run the simplest learning machine there is — a nearest-example classifier that judges new cases by their most similar labelled examples — and then grade it with a real accuracy percentage on a hidden test set. After that you step back and survey the no-code tool market: chatbots, image classifiers and data predictors, each with inputs, outputs and hard limits. By the end you will know which tool fits which problem — and which tool marketing would love you to buy for the wrong job.],
  missions: "T8-08 – T8-10",
  link: "Links: Maths — distance on a grid, percentages · Science — leaf features · Social Science — honest advertising",
  extras: opener-extras(
    words: ("nearest neighbour", "accuracy", "no-code tool", "classifier"),
    warmup: [Your new neighbour asks "am I like the family on the left or the right?" — how would YOU decide? Write the one feature you would look at first.],
    need: ("pencil", "ruler", "calculator or rough column", "10 blank slips for test cards"),
  ))

// ---------------- 3.1 ----------------
#sec(1, "The nearest-example machine")
Here is the simplest honest answer to "how does a machine decide?" — *it compares*. A nearest-example classifier stores labelled examples, and when a new case arrives it finds the most similar examples it has seen and borrows their labels. That is all. No magic, no understanding — just similarity. On a grid, "similar" has a precise meaning you can measure with a ruler: the *shortest distance*. Two dots close together are two similar cases; the new point takes the label of whichever class lives nearest. You ran a cousin of this machine in Class 7; today you run the real one, with distances and a score.

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[RULER WARM-UP · WHICH DOT LIVES NEAREST?]
  v(3pt)
  text(size: 10.1pt)[A new bird sits at (5, 5). Three labelled dots live nearby: P at (4, 6), Q at (7, 5) and R at (5, 2). For each pair of dots, which is closer to the new bird — and what label would the machine vote if P and R are POND birds and Q is a FOREST bird?]
  v(3pt)
  dtable(("Compare", "Nearer to (5, 5)?", "So the machine leans…"),
    ([P (4, 6)  vs  Q (7, 5)], [ ], [ ]),
    ([Q (7, 5)  vs  R (5, 2)], [ ], [ ]),
    ([P (4, 6)  vs  R (5, 2)], [ ], [ ]),
    widths: (52mm, 40mm, 1fr),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Ruler trick: count grid squares left-right and up-down, then compare. Your eyes are good at this — trust the ruler more than the vibes.]
}))

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[MY RULER METHOD — how I will decide “nearest” in T8-08]
  v(2pt)
  text(size: 10.1pt)[In one line: I will find the nearest dot by … #box(width: 60mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) and if two dots are almost tied I will …]
  ruled-lines(1, lead: 8.2mm)
})

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[WHICH FEATURE DECIDES?] #h(4pt) #text(size: 10.1pt)[A bird sits halfway between the pond group and the forest group. Body length says FOREST; wing-beat says POND. In one line: what should the machine (and the birder) do?] #h(4pt)]
  ruled-lines(2, lead: 8.2mm)
})

#task("T8-08", "Nearest Neighbour by Hand", mode: "pair", mins: "20")[
  The plot shows a bird-watching classifier's training examples. *Teal dots* = examples labelled POND bird; *amber dots* = examples labelled FOREST bird. The x-axis is *body length (units)*, the y-axis is *wing beat rate (units)*. Three new birds arrive — the hollow numbered circles. For each, use a ruler: find the nearest teal or amber dot, and assign the label.
  #v(6pt)
  #align(center, knn-example(
    ((1.0, 2.0), (1.5, 2.6), (2.0, 1.6), (2.6, 2.9), (1.8, 3.4), (0.8, 3.1), (2.2, 2.2), (3.0, 1.4)),
    ((7.2, 7.8), (8.0, 8.6), (7.6, 6.8), (8.8, 7.6), (6.6, 8.9), (9.2, 8.2), (7.9, 9.3), (8.5, 6.2)),
    ((4.0, 5.2), (2.2, 3.0), (8.4, 4.8)),
    xlabel: "BODY LENGTH", ylabel: "WING BEAT RATE",
    pw: 88mm,
  ))
  #v(6pt)
  #dtable(("New bird", "Nearest dot (label + its position)", "My classification"),
    ([1 (4.0, 5.2)], [ ], [ ]),
    ([2 (2.2, 3.0)], [ ], [ ]),
    ([3 (8.4, 4.8)], [ ], [ ]),
    widths: (30mm, 1fr, 34mm),
  )
  #v(5pt)
  *Bird 3 is the interesting one:* it sits near the middle — long body like a forest bird, low wing-beat like a pond bird. *Which feature decided its case, and what would you tell the app's users about cases like this?*
  #ruled-lines(2, lead: 8.6mm)
]
#wordpower(9, "nearest neighbour", [Classifying a new example by its most similar labelled examples.])
#wordpower(10, "accuracy", [The share of test examples a machine gets right, written as a percentage.])

// ---------------- 3.2 ----------------
#sec(2, "The honest score: accuracy on a hidden test")
You measured accuracy informally last year; now it gets a formula a builder can defend. *Accuracy = correct predictions ÷ total test cases × 100%.* Two rules make the number honest. First, the test set must be *hidden* during training — a machine graded on its own practice questions tells you nothing (you proved this in Class 7's Practice vs Exam). Second, one overall percentage can hide *which* cases fail — so serious builders also count failures *per group*. Accuracy answers "how often is it right?"; it never answers "right for whom?".

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[TRUE OR FALSE — ACCURACY EDITION]
  v(3pt)
  dtable(("The claim", "T or F?", "The one-line why"),
    ([A machine tested on its own training examples gives an honest accuracy.], [ ], [ ]),
    ([95% accuracy means the machine is right for every group it serves.], [ ], [ ]),
    ([A bigger hidden test set makes the accuracy number steadier.], [ ], [ ]),
    ([A machine can be accurate on sunny photos and useless at night.], [ ], [ ]),
    widths: (1fr, 18mm, 44mm),
  )
  v(3pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[The two honesty rules in my own words — rule 1 (hidden test): #ruled-lines(1, lead: 7.6mm)]
  text(size: 9.4pt, fill: ink-soft, style: "italic")[rule 2 (count failures per group): #ruled-lines(1, lead: 7.6mm)]
}))

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[PER-GROUP ACCURACY — WHAT THE ONE NUMBER HIDES]
  v(3pt)
  text(size: 10.1pt)[A mango scanner was tested on 100 photos: 60 sunny, 40 shaded. It scored 58 sunny hits and 8 shaded hits. Finish the arithmetic, then answer:]
  v(3pt)
  dtable(("Group", "Correct", "Test cases", "Group accuracy"),
    ([Sunny photos], [58], [60], [ ]),
    ([Shaded photos], [8], [40], [ ]),
    ([Overall — the number the vendor will advertise], [66], [100], [ ]),
    widths: (1fr, 24mm, 26mm, 30mm),
  )
  v(3pt)
  text(size: 9.7pt)[*What does the 66% hide that the vendor will never say out loud?* #ruled-lines(1, lead: 8.4mm)]
  text(size: 9.7pt)[*Which group pays the price for that advertising?* #ruled-lines(1, lead: 8.4mm)]
  v(4pt)
  text(size: 9.7pt)[*Write the honest label that belongs on the scanner's box:* #ruled-lines(2, lead: 8.4mm)]
}))

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[THE ACCURACY CONTRACT — BUYER AND BUILDER, ONE SENTENCE EACH]
  v(2pt)
  text(size: 10.1pt)[*The buyer will ask:* “accuracy on WHICH photos, counted HOW?” — *the builder will answer honestly:* #ruled-lines(2, lead: 8.2mm)]
})

#task("T8-09", "Tool Match", mode: "pair", mins: "10")[
  Match each problem to its no-code tool type — image classifier, chatbot, or data predictor — and write its likely *input*, *output*, and one hard *limit*. The first row is started for you.
  #v(4pt)
  #dtable(("The problem", "Tool type", "Input", "Output", "One hard limit"),
    ([Sort mangoes as ripe or unripe at the depot], [image classifier], [photo of mango], [ripe / unripe], [needs good lighting; no reasons given]),
    ([Answer parents' questions about school timings], [ ], [ ], [ ], [ ]),
    ([Predict next week's canteen rice demand], [ ], [ ], [ ], [ ]),
    ([Spot cracked solar panels from drone photos], [ ], [ ], [ ], [ ]),
    ([Guess which students may need homework help], [ ], [ ], [ ], [ ]),
    widths: (1fr, 26mm, 26mm, 26mm, 1fr),
  )
  #v(5pt)
  *The trick question:* a shopkeeper says "one chatbot can do all five jobs — it's magic!" Write your two-sentence reply as the classroom's honest tool advisor:
  #ruled-lines(2, lead: 8.6mm)
]
#wordpower(11, "no-code tool", [A ready-made AI tool you train or use without writing any program.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · WHICH TOOL — AND WHAT COULD GO WRONG?]
  v(3pt)
  text(size: 10.1pt)[For each promise from a (fictional) vendor, write the tool type and the sharpest thing a *Question-Habit* customer should ask before buying:]
  v(3pt)
  dtable(("The vendor's promise", "Tool type", "The question I would ask"),
    ([“This app looks at a leaf photo and names the disease!”], [ ], [ ]),
    ([“This chatbot answers any exam doubt, always correct!”], [ ], [ ]),
    ([“This predictor knows exactly how many idlis Sunday needs!”], [ ], [ ]),
    widths: (1fr, 32mm, 1fr),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Remember the last column of the who-learns-what map: every tool's limit lives where its learning ended.]
}))

// ---------------- 3.3 ----------------
#sec(3, "The Paper Classifier Lab: build, test, fail, improve")
Time for the full experience in miniature. In one mission you will train a classifier, test it honestly, watch it fail, and fix it — the whole cycle in 25 minutes. This is the mission professional teams never skip, because *the failures are the syllabus*. Your lab: two leaf types from the school garden (or from the cards your teacher provides), a feature table, and a test set you must not peek at.

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[FEATURE PRE-THINK — 60 SECONDS BEFORE YOU COLLECT]
  v(2pt)
  text(size: 10.1pt)[The two features I plan to measure are … and …, because I expect them to separate the leaf types better than colour would.]
  ruled-lines(1, lead: 8.2mm)
})

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.7pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[LAB BENCH — WRITE YOUR ROLES BEFORE YOU TOUCH A LEAF:] #h(4pt) #text(size: 10.1pt)[Collector: #box(width: 34mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) #h(6pt) Scribe: #box(width: 34mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))]]
  v(3pt)
  text(size: 9.7pt)[#text(size: 10.1pt)[Ruler: #box(width: 40mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) #h(6pt) Judge (keeps the test set honest): #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))]]
})
#v(4pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 7pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[SAFETY AT THE BENCH:] #h(4pt) #text(size: 9.9pt)[collect only fallen leaves — never strip a living plant · wash hands after the garden · the Judge hides the test set BEFORE training begins, not after.]]
})

#task("T8-10", "Paper Classifier Lab", mode: "group", mins: "25")[
  Work as a lab team of four. Roles: *Collector* (gathers leaves), *Scribe* (fills the table), *Ruler* (measures features), *Judge* (hides the test set and keeps score).
  #v(3pt)
  *Step 1 — Collect.* Gather 6 leaves of type A (e.g., neem) and 6 of type B (e.g., hibiscus). The Judge secretly keeps 2 A-leaves and 2 B-leaves aside as the *test set*.
  *Step 2 — Train.* For the 8 training leaves, fill the feature table and circle the feature(s) that separate the types best.
  #v(3pt)
  #dtable(("Leaf", "Edge: smooth / toothed?", "Length (cm)", "Label A or B?"),
    ([1], [ ], [ ], [ ]), ([2], [ ], [ ], [ ]), ([3], [ ], [ ], [ ]), ([4], [ ], [ ], [ ]),
    ([5], [ ], [ ], [ ]), ([6], [ ], [ ], [ ]), ([7], [ ], [ ], [ ]), ([8], [ ], [ ], [ ]),
    widths: (14mm, 1fr, 26mm, 26mm),
  )
  #v(3pt)
  *Step 3 — Write your rule.* "A leaf is type B when …" #ruled-lines(1, lead: 8.4mm)
  *Step 4 — Test.* The Judge brings out the 4 hidden leaves. Apply your rule, then have the Judge reveal the true labels.
  #dtable(("Hidden leaf", "My rule's answer", "True label", "Right?"),
    ([T1], [ ], [ ], [ ]), ([T2], [ ], [ ], [ ]), ([T3], [ ], [ ], [ ]), ([T4], [ ], [ ], [ ]),
    widths: (20mm, 1fr, 1fr, 1fr),
  )
  *My accuracy:* #box(width: 16mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) ÷ 4 = #box(width: 16mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) %
  #v(3pt)
  *Step 5 — Improve.* Name the one thing you would change in version 2 (more examples? a second feature? a measured threshold instead of a vague word?): #ruled-lines(2, lead: 8.6mm)
]
#wordpower(12, "classifier", [A machine that sorts examples into named groups, like ripe or unripe.])

#myth("No-code means no thinking.")[
  No-code removes the *typing*, never the *judgement*. Somebody still scopes the problem, chooses and checks the dataset, decides which examples teach the tool, picks the honest test, and reads the failures. The Plant Doctor team (Chapter 1) needed no code either — and their project still failed on data. A no-code tool in careless hands is a fast way to build the wrong thing confidently. The thinking you are practising in this book — audit, test, improve — is exactly the part no software can do for you.]

#selfcheck(
  [I can classify a new point by nearest labelled example — with a ruler and a reason],
  [I can compute accuracy on a hidden test set as correct ÷ total × 100%],
  [I can match a problem to classifier, chatbot or predictor, with input, output and one limit],
  [I can run a train → test → improve loop and name what version 2 changes],
)
#thinkink([The nearest-example machine is basically "judge by closest match". One situation where that habit would be UNFAIR to a person is …, because …], lines: 2)

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · ACCURACY ARITHMETIC]
  v(3pt)
  text(size: 10.1pt)[Compute each accuracy, then answer the honesty question below:]
  v(3pt)
  dtable(("The hidden test", "Correct", "Total", "Accuracy %"),
    ([Bird classifier, pond vs forest], [17], [20], [ ]),
    ([Mango ripeness scanner], [94], [100], [ ]),
    ([Cracked-panel spotter], [9], [10], [ ]),
    widths: (1fr, 22mm, 22mm, 28mm),
  )
  v(4pt)
  text(size: 10.3pt)[*But wait —* the cracked-panel spotter's 10 test cases were ALL sunny-day photos. Its real job includes night patrols. What would you tell the buyer about that 90%?]
  ruled-lines(2, lead: 8.4mm)
}))

#note("Case notes — what changed in my thinking?")[
  Before this chapter I believed a machine decides by rules somebody typed. Now I know the nearest-example machine actually decides by … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 3 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[A nearest-example classifier *compares distances* — similarity, not rules, does the deciding.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Accuracy* = correct ÷ total × 100% — and one overall number can hide which groups fail.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Classifier, chatbot, predictor: each has inputs, outputs and a *hard limit* where its data ran out.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[No-code removes the typing, never the thinking — audit, test and improve are still your job.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MY LAB REPORT CARD — THE LOOP IN ONE SMALL BOX]
  v(3pt)
  dtable(("Version", "My accuracy", "The change I made, in one line"),
    ([v1 (first rule)], [ ], [ — ]),
    ([v2 (after the fail)], [ ], [ ]),
    ([v2 target if we collected 8 more leaves], [ ], [ ]),
    widths: (52mm, 26mm, 1fr),
  )
  v(3pt)
  text(size: 9.3pt, fill: ink-soft, style: "italic")[Teams that write the loop down improve faster than teams that merely feel it. Three rows, three honest numbers — that is a builder's diary.]
}))

#chapter-checkpoint(3,
  [New point at (3.5, 6.0): nearest teal dot is at (3.0, 5.4), nearest amber dot at (6.2, 6.4). Which label — and what measurement decided it?],
  [A test set has 25 cases; the machine got 21 right. Its accuracy? Show the division.],
  [A vendor says his chatbot "solved" mango ripeness. What is the right tool for that job, and what can the chatbot NOT see?],
)
#case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue about how models learn")
