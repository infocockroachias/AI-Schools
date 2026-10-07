#import "template.typ": *
// ============================================================
//  CHAPTER 1 — THE LEARNING MACHINE   (8 pp · tasks 01–05)
// ============================================================
#chapter-opener(1, "The Learning Machine", "How can a machine learn without being told the rules?",
  outcomes: ("7.U1", "7.L1", "7.L2", "7.T1"), strands: ("U", "L"))

// ---------------- 1.1 ----------------
#sec(1, "Three jobs that learning machines do")
Last year you met two kinds of machines: rule-followers, which repeat steps somebody wrote, and learners, which improve from examples. This year we look closer at the learners — because “learning” turns out to mean three different jobs. Some machines *put things into named groups*: spam or not-spam, cat or dog, ripe or unripe. Others *predict a number*: tomorrow's temperature, the price of a trip, the marks a form might score. And some *find groups nobody named* — they look at a pile of examples and invent their own sorting. Almost every learning machine you will ever meet is doing one of these three jobs. Today, you try all three yourself.

#task("T7-01", "Sorting Machine", mode: "group", mins: "15", win: true)[
  Your teacher (or a detective in your group) gathers *12 small objects* — for example: a leaf, a coin, a pen cap, a chalk stub, a button, a pebble, a rubber band, a safety pin, a sticker, a clip, an eraser, a seed. Spread them out. Now be the machine: invent *labels* and put every object into a group. You may not use words like “junk” — group names must tell what the members share. Then fill the table:
  #v(4pt)
  #dtable(("Group name we invented", "Members of this group", "One more object we could add"),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    widths: (44mm, 1fr, 46mm),
  )
  #v(5pt)
  *Compare with another team:* Did they invent the same groups? Where did you disagree? #ruled-lines(1, lead: 8mm)
  *Our cleverest group name — and why it works:* #ruled-lines(1, lead: 8mm)
]
#wordpower(1, "classification", [Putting things into groups that already have names, like fruit or vehicles.])

#note("Detective's note")[In T7-01 *you* chose the labels first and sorted second — that is classification. A machine does it backwards: it gets thousands of examples *with* labels attached, finds the pattern, and only then sorts new things. Same job, opposite order. Keep that in mind — it will matter in Task T7-04.]

// ---------------- 1.2 ----------------
#sec(2, "Guessing the number: the second job")
Now the second job. An auto's fare grows with distance, but not perfectly — traffic, waiting and routes bend the pattern. A learning machine that predicts *numbers* from such messy data is doing the job scientists call *regression*. Nobody writes “fare = 25 + 14 per km” into the machine. Instead, it is shown hundreds of real trips, and it finds the straight line that fits them best. Your pencil can do the same thing — and yours will even show your working.

#task("T7-02", "Price Predictor", mode: "pair", mins: "15")[
  The dots below are real auto trips: distance on the bottom axis, fare on the side axis.
  #v(6pt)
  #scatter-example(
    ((1, 40), (1.5, 47), (2, 54), (2.5, 62), (3, 68), (3.5, 75), (4, 84), (4.5, 90), (5, 97), (6, 112), (7, 128), (8, 143), (9, 156), (10, 170)),
    xlabel: "DISTANCE (KM)", ylabel: "FARE (RUPEES)",
  )
  #v(2pt)
  *Step 1.* With a ruler, draw the one straight line that passes as close as possible to *all* the dots.
  *Step 2.* Use your line to predict: the fare for a *6.5 km* trip is about ₹ #box(width: 14mm, baseline: 30%, line(length: 100%, stroke: 0.7pt + line-soft))
  *Step 3.* Now a braver guess: the fare for a *12 km* trip is about ₹ #box(width: 14mm, baseline: 30%, line(length: 100%, stroke: 0.7pt + line-soft))
  #v(4pt)
  *Why is the 12 km guess riskier than the 6.5 km guess?* #ruled-lines(1, lead: 8mm)
  *Another pair drew a slightly different line. Why is that allowed — and why does the machine need one answer anyway?* #ruled-lines(2, lead: 8mm)
]
#wordpower(2, "regression", [Using a pattern to predict a number, like a price or a temperature.])

// ---------------- 1.3 ----------------
#sec(3, "Find the groups nobody named")
The third job is the strangest. In classification, the groups already have names. But sometimes nobody knows the groups — a machine gets a pile of unlabelled examples and must *invent* its own sorting. Scientists call this *clustering*. Shops use it to find “crowds of similar customers”. Astronomers use it to sort stars. There is a twist you must not miss: with no labels, there is often *no single right answer* — two honest machines (or two honest teams) can cluster the same things differently, and both can be useful.

#task("T7-03", "Find the Groups", mode: "group", mins: "15")[
  Here are nine animals on cards: *eagle, penguin, bat, butterfly, crocodile, dolphin, snake, frog, sparrow*. No labels are given — that is the whole point. Sort them into groups and *invent* a name for each group. Then look at another team's table.
  #v(4pt)
  #dtable(("Our group name", "Which animals are in it?", "What do they share?"),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    widths: (40mm, 1fr, 1fr),
  )
  #v(5pt)
  *A group the other team made that we never thought of:* #ruled-lines(1, lead: 8mm)
  *So is one of the two groupings “wrong”? What would you say to a machine that insists its clustering is the only truth?* #ruled-lines(2, lead: 8mm)
]
#wordpower(3, "clustering", [Finding groups in examples that have no labels — the machine invents the groups.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (x: 10pt, y: 8pt), {
  text(size: 8.4pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · WHICH JOB IS IT?]
  v(3pt)
  dtable(("The learning machine…", "C, N or G?"),
    ([sorts email into “spam” and “not spam”], [ ]),
    ([guesses tomorrow's temperature in your town], [ ]),
    ([groups library books into similar piles, with no names given], [ ]),
    ([decides whether a photo shows a dog or a cat], [ ]),
    ([predicts how many kilograms of rice a field will give], [ ]),
    ([finds crowds of similar customers in a shop's data], [ ]),
    widths: (1fr, 30mm),
  )
  v(3pt)
  text(size: 8pt, fill: ink-soft, style: "italic")[C = classification · N = predicts a number · G = clustering]
}))

// ---------------- 1.4 ----------------
#sec(4, "Practice questions and the real exam")
How does a machine actually *learn* the pattern? Here is the secret, and you already know it from your own life: it *practises, then it is tested*. First the machine studies a *training set* — examples with the answers attached, like practice questions with the solutions in the back. It adjusts itself until it matches them well. Then comes the moment of truth: the *test set* — new examples it has never seen, with the answers hidden. If it only memorised the practice questions, the exam will expose it. A learner that scores well on practice *and* on the hidden test has truly found the pattern.

#task("T7-04", "Practice vs Exam", mode: "alone", mins: "10")[
  You are the machine. Study the *practice set*: cards labelled IN or OUT.
  #v(4pt)
  #grid(columns: (1fr, 1fr), column-gutter: 8pt,
    box(fill: teal-faint, radius: 0pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(size: 8.2pt, weight: 800, fill: teal, tracking: 0.1em)[PRACTICE SET — WITH ANSWERS]
      v(4pt)
      dtable(("Card", "IN or OUT?"), ([12 · 15 · 21 · 9 · 33], [IN]), ([10 · 16 · 22 · 8], [OUT]), widths: (1fr, 26mm))
      v(3pt)
      text(size: 9.6pt)[*The pattern I learned:* “A number is IN when …” #ruled-lines(1, lead: 7.8mm)]
    }),
    box(fill: white, radius: 0pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(size: 8.2pt, weight: 800, fill: teal, tracking: 0.1em)[EXAM SET — ANSWERS HIDDEN]
      v(4pt)
      dtable(("Card", "My prediction"), ([27], [ ]), ([14], [ ]), ([36], [ ]), ([19], [ ]), ([45], [ ]), widths: (1fr, 26mm))
      v(3pt)
      text(size: 8.4pt, fill: ink-soft, style: "italic")[Your teacher holds the answers. Check after everyone has committed — no peeking, that would be cheating the test!]
    }),
  )
  #v(6pt)
  *My score on the exam set:* #box(width: 16mm, baseline: 30%, line(length: 100%, stroke: 0.7pt + line-soft)) out of 5
  *If a machine scored the same, would you say it “found the pattern” or “got lucky”? Why?* #ruled-lines(1, lead: 8mm)
]
#wordpower(4, "training set", [The practice examples a machine learns from before it meets new ones.])
#wordpower(5, "test set", [The hidden examples used to check whether the learning really worked.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (x: 10pt, y: 8pt), {
  text(size: 8.4pt, weight: 800, fill: teal, tracking: 0.1em)[AT A GLANCE · IF-THEN MACHINE VS LEARNING MACHINE]
  v(3pt)
  dtable(("Ask yourself…", "If-then machine", "Learning machine"),
    ([Where do its rules come from?], [A person wrote every if-then by hand.], [It found the pattern inside training examples.]),
    ([What happens with a brand-new case?], [It runs the same if-thens anyway.], [It predicts from the pattern — right or wrong.]),
    ([Can it get better at its job?], [Only if a person rewrites the rules.], [Yes — more varied examples can improve it.]),
    ([One machine from my own day that fits], [#ruled-lines(1, lead: 6.8mm)], [#ruled-lines(1, lead: 6.8mm)]),
    widths: (46mm, 1fr, 1fr),
  )
}))

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (x: 10pt, y: 8pt), {
  text(size: 8.4pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · TRAIN OR TEST?]
  v(3pt)
  dtable(("What is happening…", "Training or testing?"),
    ([A cricket coach feeds 200 labelled photos of bowling actions to a machine.], [ ]),
    ([The machine now sorts 50 photos it has never seen, and we count its correct answers.], [ ]),
    ([You solve five practice sums with the answers in the back of the book.], [ ]),
    ([Your teacher gives a surprise class test with brand-new sums.], [ ]),
    ([A spam filter keeps improving as people mark more messages.], [ ]),
    ([A scientist hides 100 examples from the machine on purpose, to check it honestly.], [ ]),
    widths: (1fr, 34mm),
  )
  v(3pt)
  text(size: 8pt, fill: ink-soft, style: "italic")[Why do you think the scientist hides those examples? Discuss with your partner — there is a clue in Task T7-04.]
}))

// ---------------- 1.5 ----------------
#sec(5, "Too few examples fool everybody")
Here is the trap that catches learners — machine and human alike. Show a learner only *three* examples, and it will grab the first pattern it sees, even a wrong one. Show it *twelve varied* examples, and the false shortcuts fall apart. The examples are the machine's whole world: a learner cannot ask “are you sure?” — it can only believe its data. That is why the people who build AI spend most of their time not on the machine, but on *choosing the examples*.

#task("T7-05", "Too Few Examples", mode: "pair", mins: "10")[
  Two leaf-spotting machines were trained differently. Read their training cards, then judge them.
  #v(4pt)
  #grid(columns: (1fr, 1fr), column-gutter: 8pt,
    box(fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (x: 9pt, y: 7pt), {
      text(size: 8.2pt, weight: 800, fill: teal, tracking: 0.1em)[MACHINE A — TRAINED ON 3 CARDS]
      v(4pt)
      dtable(("Training card", "Label"), ([smooth edges · 12 cm], [MANGO]), ([smooth edges · 11 cm], [MANGO]), ([smooth edges · 13 cm], [MANGO]), widths: (1fr, 24mm))
      v(4pt)
      text(size: 9.6pt)[*Rule A learned:* “smooth edges means mango.”]
    }),
    box(fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (x: 9pt, y: 7pt), {
      text(size: 8.2pt, weight: 800, fill: teal, tracking: 0.1em)[MACHINE B — TRAINED ON 12 CARDS]
      v(4pt)
      dtable(("Training card", "Label"), ([6 mango leaves: smooth · 10–15 cm], [MANGO]), ([3 jasmine leaves: smooth · 4 cm], [OTHER]), ([3 hibiscus leaves: toothed · 9 cm], [OTHER]), widths: (1fr, 24mm))
      v(4pt)
      text(size: 9.6pt)[*Rule B learned:* “mango means smooth *and long*.”]
    }),
  )
  #v(6pt)
  *A new leaf arrives: smooth edges, only 4 cm long.* Machine A says: MANGO. Machine B says: OTHER. #v(2pt)
  *Who is right — and what exactly fooled Machine A?* #ruled-lines(2, lead: 8mm)
  *Machine A could be fixed without any new machine. How?* #ruled-lines(1, lead: 8mm)
]

#myth("AI is told every rule.")[
  That is true for *rule-followers* — a lift really is told every rule. But a *learning* machine is only given examples; the pattern is found by the machine itself, and sometimes nobody can write the final rule down in full. That is exactly why people who build AI worry so much about *which examples* go into the training set — and why a learner must always face a test set before we trust it.]

#selfcheck(
  [I can point to a classification job, a number-prediction job and a clustering job in real life],
  [I can explain “training vs testing” to a Class 6 student in two sentences],
  [I can explain why 3 examples can fool a learner and 12 varied examples are safer],
  [I can draw a best-fit line on dots, predict with it, and say how sure I am],
)
#thinkink([A machine I use guesses things about me — a suggestion, a price, a filter. Now I know its job is … (classification / regression / clustering), because …], lines: 2)

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (x: 10pt, y: 8pt), {
  text(size: 8.4pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · PATTERN TO RULE]
  v(3pt)
  text(size: 9.4pt)[A fruit-sorting machine was trained on four labelled cards. You be the rule-writer: study the table, then write the if-then rule *you* would put inside an ordinary rule-following machine.]
  v(4pt)
  dtable(("Training card", "Label"),
    ([heavy · smooth · yellow skin], [MANGO]),
    ([very heavy · rough · green skin], [WATERMELON]),
    ([light · smooth · red skin], [APPLE]),
    ([light · rough · brown shell], [COCONUT]),
    widths: (1fr, 34mm),
  )
  v(4pt)
  [*My if-then rule:* #ruled-lines(2, lead: 7.8mm)]
  [*New card arrives: heavy · smooth · yellow skin.* My rule says: #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.7pt + line-soft))]
  [*New card arrives: heavy · rough · yellow-green skin.* My rule says: #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.7pt + line-soft)) — *and a learning machine might disagree! Why?* #ruled-lines(1, lead: 7.6mm)]
}))

#note("Case notes — what changed in my thinking?")[
  Before this chapter I believed machines are told every rule by their makers. Now I know the difference between a rule-follower and a learner is … #ruled-lines(2, lead: 7.6mm)
]

#note("Chapter 1 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 9.2pt)[Learning machines do three jobs: *classify*, *predict a number*, *find groups*.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 9.2pt)[*Training* is practice with answers; *testing* is the hidden exam that proves the learning.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 9.2pt)[A few one-sided examples fool any learner; *many varied examples* protect it.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 9.2pt)[A rule-writer writes if-thens; a learner finds the rule in the data — and nobody wrote it down.],
  )
  #v(2.5pt)
  text(size: 9.2pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7mm)]
]
