#import "template.typ": *
// ============================================================
//  CHAPTER 5 — CAPSTONE: CLASS SURVEY MACHINE  (5 pp · tasks 16–17)
// ============================================================
#chapter-opener(5, "Class Survey Machine", "Can our class build — and check — its own prediction machine?",
  outcomes: ("7.U1", "7.L1", "7.L2", "7.D1", "7.W1", "7.W2", "7.R1", "7.R2", "7.T1"), strands: ("U", "D", "L", "W", "R"))

// ---------------- 5.1 ----------------
#sec(1, "The whole case, in one machine")
This is the mission where the whole book clicks together. Your class will build a *prediction machine* out of yourselves: collect structured data, chart it, read the pattern, make a prediction — and then do the one thing most people skip: *check your own sample for bias* before trusting the prediction. Three periods. Every job you did in Chapters 1–4 comes back once: classification (Step 1), structured data (Step 2), charts (Step 3), patterns and regression-thinking (Steps 4–5), bias (Step 6), and accountability — because at the end, *your machine* must give an honest report card (Step 7).

#task("T7-16", "Class Survey Machine · Part 1 — Collect and Chart", mode: "project", mins: "3 PERIODS")[
  #grid(columns: (auto, 1fr), column-gutter: 7pt, align: (left, left),
    box(fill: teal, radius: 5pt, inset: (x: 5.5pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt)[1]),
    text(size: 10.8pt)[*CHOOSE.* One question with 3–4 short options. Example: *“How do you reach school on most days?”* — A Walk · B Cycle · C Bus · D Car. Or invent your own question about reading, food, games or water.] 
  )
  #v(3pt)
  *Our question:* #ruled-lines(1, lead: 8.4mm)
  *Our options:* A #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) B #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) C #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) D #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))
  #v(4pt)
  #grid(columns: (auto, 1fr), column-gutter: 7pt, align: (left, left),
    box(fill: teal, radius: 5pt, inset: (x: 5.5pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt)[2]),
    text(size: 10.8pt)[*COLLECT.* Ask every member of your class. Tally honestly — no votes for the option you *hope* wins.]
  )
  #v(4pt)
  #dtable(("Option", "Tally marks", "Count"),
    ([A #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))], [ ], [ ]),
    ([B #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))], [ ], [ ]),
    ([C #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))], [ ], [ ]),
    ([D #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))], [ ], [ ]),
    widths: (56mm, 1fr, 22mm),
  )
  #v(2pt)
  *Our sample:* #box(width: 18mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) students of #box(width: 18mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) in the whole class. *Who is missing from our sample, and why?* #box(width: 62mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))
  #v(5pt)
  #grid(columns: (auto, 1fr), column-gutter: 7pt, align: (left, left),
    box(fill: teal, radius: 5pt, inset: (x: 5.5pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt)[3]),
    text(size: 10.8pt)[*CHART.* Draw a bar chart of your counts. Then shade a pie chart — each wedge below is 10%, so round your percentages to tens.]
  )
  #v(4pt)
  #grid(columns: (1fr, auto), column-gutter: 9pt, align: (left, center),
    barchart-blank(("A", "B", "C", "D"), ymax: 12, pw: 92mm, ph: 42mm),
    pie-blank(divisions: 10),
  )
  #v(5pt)
]

#task("T7-16", "Class Survey Machine · Part 2 — Predict and Check", mode: "project", mins: "CONT.")[
  #grid(columns: (auto, 1fr), column-gutter: 7pt, align: (left, left),
    box(fill: teal, radius: 5pt, inset: (x: 5.5pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt)[4]),
    text(size: 10.8pt)[*READ THE PATTERN.* Say it as a machine would — with numbers.]
  )
  #v(3pt)
  *The pattern I see:* #ruled-lines(2, lead: 8.4mm)
  #v(3pt)
  #grid(columns: (auto, 1fr), column-gutter: 7pt, align: (left, left),
    box(fill: teal, radius: 5pt, inset: (x: 5.5pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt)[5]),
    text(size: 10.8pt)[*PREDICT.* Another section of Class 7 will answer the same question tomorrow. Predict their top answer from your pattern.]
  )
  #v(3pt)
  *I predict the other section's top answer will be:* #box(width: 22mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) — *because the pattern says* #ruled-lines(1, lead: 8.1mm)
  *How sure am I?* #conf(n: 3)
  #v(4pt)
  #grid(columns: (auto, 1fr), column-gutter: 7pt, align: (left, left),
    box(fill: teal, radius: 5pt, inset: (x: 5.5pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt)[6]),
    text(size: 10.8pt)[*CHECK THE SAMPLE.* This is where honest machines are made. Run the bias checks on your own data before you trust your prediction.]
  )
  #v(3pt)
  *Was our sample one-sided — all same age, same class, same street?* #ruled-lines(1, lead: 8.1mm)
  *What could that one-sidedness do to our prediction?* #ruled-lines(2, lead: 8.1mm)
  #v(3pt)
  #grid(columns: (auto, 1fr), column-gutter: 7pt, align: (left, left),
    box(fill: amber, radius: 5pt, inset: (x: 5.5pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt)[7]),
    text(size: 10.8pt)[*MACHINE REPORT CARD.* Now the test set: ask the other section. Compare, then grade yourselves — honestly, like a real test.]
  )
  #v(3pt)
  *Their actual top answer:* #box(width: 22mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) · *Our prediction was* #box(width: 24mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) (right / close / off)
  #v(3pt)
  *Our machine's honest verdict — what worked, what we would train better next time:* #ruled-lines(2, lead: 8.4mm)
]

#myth("More data always fixes it.")[
  Only *more varied* data fixes it. Collect ten thousand more forms from the same three schools and the Uniform Suggester grows *more* confident in its mistake — louder data, same blindness. What heals a learner is variety: new schools, new streets, new faces. When you meet a claim built on “huge amounts of data”, ask your sharpest question: *varied for whom?*]

// ---------------- 5.2 ----------------
#sec(2, "One more loop: predict a number")
Your survey machine predicted an *answer* — classification work. Real machines also predict *numbers*, and so can yours. Here is a whole week of noon temperatures your class logged on the terrace. Read the trend, then do what a regression machine does: draw the pattern forward and predict — and say how sure you are.

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · PREDICT TOMORROW]
  v(4pt)
  dtable(("Day", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"), (["Noon temperature (°C)"], ["24"], ["26"], ["27"], ["29"], ["30"], ["32"]), widths: (40mm, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr))
  v(5pt)
  linechart-blank(("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun?"), ymax: 35, ystep: 5, ylabel: "°C")
  v(3pt)
  text(size: 10.2pt)[*Plot the six days, then continue the pattern to Sunday.*]
  v(3pt)
  text(size: 10.2pt)[*My prediction for Sunday:* #box(width: 18mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) °C · *How sure am I?* #conf(n: 3)]
  v(3pt)
  text(size: 10.2pt)[*What could make the real Sunday break the pattern?* #ruled-lines(1, lead: 8.1mm)]
  v(3pt)
  text(size: 10.2pt)[*If Monday suddenly showed 18 °C, what should a good machine do — keep predicting, or ask for help? Why?* #ruled-lines(2, lead: 8.1mm)]
}))

// ---------------- 5.3 ----------------
#sec(3, "Reflection passport")
Every investigator keeps a record of how their own thinking changed. Stamp each page of your passport — one honest sentence per stamp is enough.

#task("T7-17", "Reflection Passport", mode: "alone", mins: "10")[
  #grid(columns: (1fr, 1fr), column-gutter: 7pt, row-gutter: 6pt,
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8.5pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[STAMP U · UNDERSTAND]
      v(3pt)
      text(size: 10.1pt)[*The three learning jobs, in my own words:* #ruled-lines(2, lead: 7.9mm)]
    }),
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8.5pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[STAMP D · DATA]
      v(3pt)
      text(size: 10.1pt)[*The chart trick I will never fall for again:* #ruled-lines(2, lead: 7.9mm)]
    }),
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8.5pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[STAMP L · LEARN]
      v(3pt)
      text(size: 10.1pt)[*What training and testing taught me about my own studying:* #ruled-lines(2, lead: 7.9mm)]
    }),
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8.5pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[STAMP W · WORLD]
      v(3pt)
      text(size: 10.1pt)[*One AI helper near me, its benefit and its limit:* #ruled-lines(2, lead: 7.9mm)]
    }),
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8.5pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[STAMP R · RESPONSIBILITY]
      v(3pt)
      text(size: 10.1pt)[*One fix I would fight for — and who must answer for it:* #ruled-lines(2, lead: 7.9mm)]
    }),
    box(fill: cream, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8.5pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: amber-deep, tracking: 0.1em)[FINAL PAGE · THE BIG QUESTION]
      v(3pt)
      text(size: 10.1pt)[*“How can a machine learn without being told the rules?” — my answer, with my reasons:* #ruled-lines(3, lead: 7.9mm)]
    }),
  )
]

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[GALLERY WALK · PEER REVIEW]
  v(3pt)
  text(size: 10.3pt)[Swap books with another team and study *their* machine. Real AI teams review each other's work — so do honest investigators.]
  v(4pt)
  [*The clearest chart they drew, and why:* #ruled-lines(1, lead: 8.4mm)]
  [*One question I would ask their machine:* #ruled-lines(1, lead: 8.4mm)]
  [*One thing their bias check caught that ours missed:* #ruled-lines(1, lead: 8.4mm)]
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Give them one star and one wish: a thing they did brilliantly, and one thing to train better next time.]
}))

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[EXIT TICKET — BEFORE YOU CLOSE THE CASE]
  v(3pt)
  text(size: 10.3pt)[*1.* Name the three learning jobs in six words or fewer: #ruled-lines(1, lead: 8.1mm)]
  text(size: 10.3pt)[*2.* One chart trick I will now never fall for: #ruled-lines(1, lead: 8.1mm)]
  text(size: 10.3pt)[*3.* One question I will carry to Class 8: #ruled-lines(1, lead: 8.1mm)]
}))

#selfcheck(
  [I collected structured data, drew both charts, and read a pattern from them with numbers],
  [I made a prediction from my pattern and said how sure I was],
  [I ran the bias check on my own sample — and said who was missing],
  [I graded my own machine honestly against the test set],
)
#thinkink([Working as the machine changed how I see real machines: the part I now respect most is … and the part I now question hardest is …], lines: 2)

#note("Chapter 5 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[The full loop: *collect → chart → pattern → predict → check the sample → grade honestly*.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[More data helps only when it is *more varied* — louder data can just repeat the mistake.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Predicting a *number* is regression thinking: read the trend, then say *how sure* you are.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[A good machine — like a good investigator — *asks for help* when the world breaks its pattern.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]
