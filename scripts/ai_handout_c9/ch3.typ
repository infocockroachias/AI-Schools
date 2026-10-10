#import "template.typ": *
// ============================================================
//  CHAPTER 3 — THE MATHS BEHIND AI (ON PAPER)   (11 pp · tasks 10–14)
// ============================================================
#chapter-opener(3, "The Maths Behind AI (on paper)", "What does the machine actually compute — and when does the computation fool it?",
  outcomes: ("9.M1", "9.M2", "9.M3", "9.M4", "9.T1"), strands: ("L",),
  summary: [This is the engine room. Five missions, five mechanisms, all by hand: the three averages and the spread they hide (mean, median, mode, range), probability you can roll on your desk, a line of best fit you draw through real dots and then interrogate, nearest-neighbour classification with distances as evidence, and the pattern-to-rule move that turns a table into an algorithm. Every machine-learning system in the world is some arrangement of exactly these ideas — run by silicon instead of by you. By the end of this chapter, "the AI predicted" will mean something you could check.],
  missions: "T9-10 – T9-14",
  link: "Links: Maths — statistics, probability, coordinate geometry · Science — experiment & error · English — precise claims",
  extras: opener-extras(
    words: ("mean", "median", "mode", "probability", "correlation", "line of best fit", "nearest neighbour"),
    warmup: [Five students wait 5, 6, 7, 8 and 90 minutes for the bus. Without calculating, is the “average wait” nearest to 6 or to 23? Why did your gut hesitate?],
    need: ("pencil", "ruler", "a die", "a coin", "graph-squared paper if you have it"),
  ))

// ---------------- 3.1 ----------------
#sec(1, "Three averages and a liar")
You met averages long ago; now meet their arguments. The *mean* adds everything and divides — sensitive to every value, especially extremes. The *median* stands in the middle of the sorted list — blind to how extreme the extremes are. The *mode* is the most frequent value — the only average that works on categories. And the *range* (highest minus lowest) is the crudest measure of *spread* — how scattered the data is. A machine summarising "its users" faces exactly these choices, and each choice can be dressed up as THE answer. The analyst's defence is to ask: *which average, and what does it throw away?*

#task("T9-10", "Average Lies", mode: "alone", mins: "15", win: true)[
  A startup advertises: “Our employees earn ₹62,000 a month on average!” The nine salaries (in ₹1000s): 22, 24, 25, 26, 28, 30, 32, 35, 268.
  #v(4pt)
  #dtable(("The average", "Your calculation (show the working)", "What it really describes"),
    ([Mean], [ ], [ ]),
    ([Median], [ ], [ ]),
    ([Mode], [ ], [ ]),
    ([Range], [ — ], [ ]),
    widths: (30mm, 1fr, 1fr),
  )
  #v(4pt)
  *Which average is the advertisement using — and which one should a job-seeker hear?* #ruled-lines(1, lead: 8.6mm)
  *The founder says: “but it IS the average!” Write the one-sentence reply that is true, fair and devastating:* #ruled-lines(2, lead: 8.6mm)
  *Delete the outlier (268) and recompute the mean in the margin. What does this tell you about one extreme value's power?* #ruled-lines(1, lead: 8.6mm)
]
#wordpower(11, "mean", [The sum of all values divided by how many there are.])
#wordpower(12, "median", [The middle value when the data is sorted in order.])
#wordpower(13, "mode", [The value that appears most often in the data.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · WHICH AVERAGE WOULD YOU USE?]
  v(3pt)
  text(size: 10.1pt)[Pick the average that answers the question most honestly — mean, median or mode — and defend it in a line:]
  v(3pt)
  dtable(("The question", "Mean / Median / Mode?", "The defence"),
    ([“Which shoe size should the school shop stock the most of?”], [ ], [ ]),
    ([“What is a typical app-learning session length, when a few marathons of 6 hours exist?”], [ ], [ ]),
    ([“Split the class into three fair teams by marks — what should each team's centre be?”], [ ], [ ]),
    ([“How different are the fastest and slowest bus runs?”], [ ], [ ]),
    widths: (1fr, 34mm, 1fr),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Notice the fourth row: range is not an average at all — it is *spread*. Knowing which question needs which tool is the analyst's first instinct.]
}))

// ---------------- 3.2 ----------------
#sec(2, "Probability: the mathematics of 'how sure'")
A machine that says "92% confident" is making a *probability* claim — and probability is something you can hold in your hand. The basic deal: probability = *favourable outcomes ÷ all equally likely outcomes*, so a fair die shows a six with probability 1/6. But the deeper idea is *evidence*: if you roll a die 60 times, you EXPECT about 10 sixes — and you will rarely get exactly 10. Probability describes the long run, not the next throw. That gap between "expected" and "observed" is where a healthy analyst lives: too-perfect streaks are suspicious, wild streaks are normal, and *confidence* without a count behind it is decoration.

#task("T9-11", "Likelihood Lab", mode: "pair", mins: "20")[
  Predict first, then test. No calculator — just tallies.
  #v(3pt)
  *Part A — the die.* My prediction for 60 rolls: number of sixes = … , number of odds = …
  Now roll 60 times (or split the work in your pair and combine). Tally:
  #dtable(("Outcome", "Tally", "Count", "My expectation", "How far off?"),
    ([6], [ ], [ ], [10], [ ]),
    ([1, 3, 5 (odds combined)], [ ], [ ], [30], [ ]),
    widths: (44mm, 1fr, 22mm, 30mm, 26mm),
  )
  *Part B — the coin and the sneaky question.* A coin lands heads 4 times in a row. My next flip is… (tick one) #cbox more likely tails #cbox more likely heads #cbox exactly 1/2 either way
  *The reason, in one sentence:* #ruled-lines(1, lead: 8.4mm)
  #v(3pt)
  *Part C — the machine's confidence.* A classifier says “92% sure this leaf is diseased.” Using your dice experience: if we tested it on 100 similar leaves, how many would you EXPECT it to get right — and would you be shocked at 84? #ruled-lines(2, lead: 8.6mm)
]
#wordpower(14, "probability", [Favourable outcomes divided by all equally likely outcomes.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · WHAT IS THE REAL PROBABILITY?]
  v(3pt)
  dtable(("The setup", "Favourable ÷ all", "As a percentage"),
    ([A bag has 3 red, 4 blue, 5 green beads. Red?], [ ], [ ]),
    ([Two coins flipped together. Both heads?], [ ], [ ]),
    ([A standard die shows a number 4 or more?], [ ], [ ]),
    ([A “90% accurate” screening machine flags a healthy person. Chance of that on any one test — if 20 of 100 people are actually unhealthy?], [ ], [ ]),
    widths: (1fr, 34mm, 30mm),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[The last row is the honest one: even a good machine misfires sometimes, and knowing the base rates — who is actually in the pile — is what stops a percentage from scaring you.]
}))

// ---------------- 3.3 ----------------
#sec(3, "The line of best fit: drawing the trend, then doubting it")
Here is regression at analyst level. Scatter real data — say, hours of study against marks — and a cloud of dots appears. Draw the one straight line that hugs the cloud as fairly as possible: not chasing the extremes, ignoring no dot, roughly equal numbers of dots above and below. That line is a *model*: it predicts a mark for any study time, including times you never observed. But two warnings come free with it. *Extrapolation* — predicting far outside the dots — is guesswork wearing a suit. And *correlation* — the pattern itself — never proves *causation*: study hours may rise with marks because quieter students both study more and test better. The line shows that two things move together; only an experiment can say who moves whom.

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[EXTRAPOLATION SENSOR — CALIBRATE IT BEFORE YOU DRAW]
  v(2pt)
  text(size: 10.1pt)[A line fitted on 0–6 study hours is asked about a student who studies 12 hours. In one line: what is the HONESTEST thing your line can say about that student?]
  ruled-lines(2, lead: 8.2mm)
})

#task("T9-12", "Line of Best Fit by Eye", mode: "group", mins: "20")[
  The scatter shows twelve students: hours of self-study per week (x) against unit-test marks (y). Draw the best-fit line with a ruler, then answer the interrogations.
  #v(6pt)
  #align(center, scatter-example(
    ((0.5, 32), (1, 38), (1.5, 44), (2, 40), (2.5, 52), (3, 55), (3.5, 58), (4, 63), (4.5, 61), (5, 72), (5.5, 70), (6, 78)),
    xmax: 7, xstep: 1, ymax: 100, ystep: 20,
    xlabel: "SELF-STUDY (HOURS PER WEEK)", ylabel: "UNIT-TEST MARKS",
    pw: 100mm, ph: 58mm,
  ))
  #v(6pt)
  *Prediction 1 (inside the dots):* a student who studies 3.5 hours — my line predicts about … marks.
  *Prediction 2 (extrapolation — be brave):* 10 hours a week predicts about … marks. *Why is this prediction the weakest of the two?* #ruled-lines(1, lead: 8.4mm)
  *The causation trap:* “more study CAUSES higher marks” — give one alternative explanation that fits the same dots: #ruled-lines(2, lead: 8.6mm)
  *Another team's line differs from yours by 4 marks. Whose is right? What does this tell you about drawing lines by eye — and about machines that must choose ONE line?* #ruled-lines(2, lead: 8.6mm)
]
#wordpower(15, "line of best fit", [The straight line that follows a data cloud most fairly, used to predict.])
#wordpower(16, "correlation", [Two measures moving together — which does not prove one causes the other.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · CORRELATION OR CAUSATION?]
  v(3pt)
  text(size: 10.1pt)[Each claim spots a real correlation — then smuggles in causation. Mark C (causation claimed but unproven) or OK, and name the sneaky alternative where you can:]
  v(3pt)
  dtable(("The claim", "C or OK?", "The sneaky alternative"),
    ([“Villages with more AI-irrigation have higher yields — irrigation works!”], [ ], [ ]),
    ([“Umbrella sales rise with rainfall.”], [ ], [ — ]),
    ([“Classes with more projectors score higher — projectors teach!”], [ ], [ ]),
    ([“Ice-cream sales and drownings rise together — ban ice-cream!”], [ ], [ ]),
    widths: (1fr, 22mm, 1fr),
  )
}))

// ---------------- 3.4 ----------------
#sec(4, "Nearest neighbours: classification with a ruler")
You ran a nearest-example classifier in Class 8; now give it its adult name and its arithmetic. To classify a new point, a *k-nearest-neighbour* system measures the distance from the new point to labelled examples, keeps the *k* closest, and lets them vote. Distance on a grid has an exact recipe — the square root of (x-gap squared + y-gap squared) — but the analyst's ruler version (count the squares, compare) captures every idea except the square root. The two honest weaknesses: *scale* (a feature measured in hundreds bullies a feature measured in ones) and *k* (one neighbour is a gossip; a large k is a crowd — the vote changes with k).

#task("T9-13", "Neighbour Vote", mode: "pair", mins: "25")[
  The plot shows the mango-sorter's training data: teal dots = ripe (sugar reading × firmness), amber = not yet. Three new mangoes arrive. Use a ruler: find each new point's THREE nearest labelled dots (that is k = 3), note their labels, and let the majority vote.
  #v(6pt)
  #align(center, knn-example(
    ((1.0, 2.2), (1.4, 1.6), (1.8, 2.8), (2.2, 1.2), (2.6, 3.2), (1.2, 3.6), (2.8, 2.4), (2.0, 2.0)),
    ((7.0, 7.4), (7.6, 8.2), (8.2, 6.8), (8.6, 7.8), (7.2, 8.8), (8.8, 8.6), (7.8, 6.4), (9.0, 7.0)),
    ((4.2, 5.0), (2.6, 3.0), (6.6, 4.2)),
    xlabel: "SUGAR READING", ylabel: "FIRMNESS",
    pw: 88mm,
  ))
  #v(6pt)
  #dtable(("New mango", "My 3 nearest neighbours (labels)", "The vote", "Final classification"),
    ([1 (4.2, 5.0)], [ ], [ ], [ ]),
    ([2 (2.6, 3.0)], [ ], [ ], [ ]),
    ([3 (6.6, 4.2)], [ ], [ ], [ ]),
    widths: (32mm, 1fr, 22mm, 34mm),
  )
  #v(5pt)
  *Mango 3 is the border case — its nearest neighbours are far away, and the vote is close.* Which k would you ship to the depot, and how would you tell the depot manager what the machine still gets unsure about? #ruled-lines(2, lead: 8.6mm)
  *The scale trap:* suppose sugar readings went up to 400 instead of 10. Would the ruler still find the same neighbours? What should the builder do to both features before measuring? #ruled-lines(2, lead: 8.6mm)
]
#wordpower(17, "nearest neighbour", [Classifying a new point by the vote of its k most similar labelled examples.])

#myth("The machine found the pattern, so the pattern is real.")[
  A learning system finds *a* pattern — the one its features and its data support best, with the k and the line it was told to use. Change the features, the sample or the k, and a different “pattern” appears, honestly computed all the way. The mango sorter with sugar-and-firmness finds one rule; with weight-and-days-since-picking it finds another; both are true to their data. Patterns are *manufactured from choices* — which is why this book keeps asking you to write your choices down. The computation is real; the pattern is a *decision*. Analysts sign their decisions.]

// ---------------- 3.5 ----------------
#sec(5, "Pattern to rule: write the algorithm")
The final mechanism is the analyst's party trick: turn a data table into an *algorithm* — a decision procedure so precise that another person (or a machine) can run it without you. This is the bridge between statistics and code, and you will cross it with no code at all: just a rule, an ordered checklist, and the honesty to state what your rule gets wrong.

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[THE RULE-WRITER'S HABIT — READ IT BEFORE T9-14]
  v(2pt)
  text(size: 10.1pt)[A good rule has three marks: *ordered* (the checklist runs top to bottom, no jumping), *complete* (every case lands SOMEWHERE), and *confessed* (the writer names one case it treats badly). Keep all three in sight as you write yours:]
  ruled-lines(1, lead: 8.2mm)
  v(3pt)
  text(size: 9.7pt)[*Field study first:* the lost-property box has 12 items in T9-14. Before reading them, predict which feature will separate the piles best — and which pair of items will be hardest to split:]
  ruled-lines(2, lead: 8.2mm)
})

#task("T9-14", "Pattern to Rule", mode: "alone", mins: "15")[
  The table shows the school lost-property box: 12 items, four features each. Study it, then write a decision rule that sorts any new item into KEEP-DESK / RETURN-CLASS / LOST-AND-FOUND.
  #v(4pt)
  #dtable(("Item", "Valuable?", "Named?", "Found where?"),
    ([water bottle], [no], [no], [corridor]),
    ([spectacles case], [yes], [no], [classroom]),
    ([geometry box], [yes], [yes], [classroom]),
    ([single slipper], [no], [no], [playground]),
    ([library book], [no], [yes], [canteen]),
    ([earphones], [yes], [no], [canteen]),
    ([lunch box], [no], [yes], [corridor]),
    ([school ID card], [no], [yes], [playground]),
    widths: (36mm, 26mm, 22mm, 1fr),
  )
  #v(4pt)
  *My decision rule (if-then, in order, ready for a stranger to run):*
  #ruled-lines(3, lead: 8.6mm)
  *Now trace it:* a costly unnamed watch is found on the playground. My rule sends it to … , because … #ruled-lines(1, lead: 8.6mm)
  *The case my rule handles unfairly (write it yourself — every rule has one):* #ruled-lines(1, lead: 8.6mm)
]

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[AT A GLANCE · YOUR PAPER MECHANISMS VS THE MACHINE'S]
  v(3pt)
  dtable(("The mechanism", "You did it with…", "The machine uses…", "What never changes"),
    ([Mean, median, mode, spread], [pencil division], [the same arithmetic, at scale], [every summary throws something away]),
    ([Probability], [dice and tallies], [counts at enormous scale], [long-run expectations, not promises]),
    ([Best-fit line], [ruler and eye], [least-squares minimisation], [extrapolation is still guesswork]),
    ([k-nearest neighbours], [ruler and vote], [distance formulas + fast search], [scale and k still decide the answer]),
    widths: (36mm, 1fr, 1fr, 1fr),
  )
  v(3pt)
  text(size: 9.5pt, fill: ink-soft, style: "italic")[The right-hand column is the whole point: the *judgement* does not shrink when the computer grows. That is why analysts — not just machines — are hired.]
}))

#selfcheck(
  [I can compute mean, median, mode and range — and say which one a claim is hiding behind],
  [I can predict a probability, test it with dice or coins, and reason about the gap],
  [I can draw a best-fit line, predict with it, and explain the extrapolation and causation traps],
  [I can run k-nearest-neighbour classification with distances, and defend my choice of k],
  [I can turn a data table into a rule another stranger can run — and name one case it treats unfairly],
)
#thinkink([The mechanism that surprised me most this chapter was …, because before computing it by hand I believed …], lines: 2)

#homelink[
  #task("AT HOME", "Household Statistics", mode: "home", mins: "15")[
    With a grown-up, pick one repeated household number — monthly electricity units, travel minutes to work, or weekly vegetable spend (past bills are fine; no need to measure anything new). Find the mean, median and range together, and hunt for the outlier. #v(3pt)
    *The numbers (at least 6 periods):* #ruled-lines(2, lead: 8.1mm)
    *Mean, median, range (show one division):* #ruled-lines(2, lead: 8.1mm)
    *Which average describes our household best — and which one would an advertiser quote?* #ruled-lines(1, lead: 8.1mm)
  ]
]

#note("Case notes — what changed in my thinking?")[
  Before this chapter I believed “the AI predicted” was a kind of magic. Now I can name the paper mechanisms underneath: … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 3 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Every average answers a different question — *mean is sensitive, median is stubborn, mode counts what repeats*.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Probability* describes the long run; a streak is not a promise, and confidence without a count is decoration.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[The best-fit line predicts inside the dots; *extrapolation is guesswork, correlation is not causation*.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[kNN votes by distance — *scale and k* decide the answer, so the analyst writes their choices down.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#chapter-checkpoint(3,
  [Salaries: 22, 24, 25, 26, 28, 30, 32, 35, 268 (in ₹1000s). Compute the median — and explain why the 268 barely moves it.],
  [A fair die is rolled 60 times. How many sixes do you EXPECT, and why is getting exactly that not guaranteed?],
  [Study hours vs marks: the line predicts 10 hours → 95 marks. Name BOTH traps in that prediction.],
  [In T9-13, mango 3 changed its vote when k changed from 1 to 3. What does that teach about “the machine's answer”?],
)
#case-journal(lines: 3, label: "MY CASE JOURNAL — today's sharpest clue about the mathematics under the machine")
