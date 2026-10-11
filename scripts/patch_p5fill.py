#!/usr/bin/env python3
"""Fill the orphaned preface page: add a purposeful Question-Habit practice strip after
the Question Habit note in each class (register-fitted)."""

FILLS = {
"ai_handout": ('note("The Question Habit — your superpower")[', '''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[PRACTISE THE THREE QUESTIONS — RIGHT NOW]
    v(3pt)
    text(size: 9.8pt)[Your friend shows you a video: "A robot in Bengaluru wrote a poem all by itself!" Hold each question up to the claim, one at a time:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 5.5pt, align: (left, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "1")),
      text(size: 9.7pt)[*How do I know?* — What would prove the robot wrote it alone? #ruled-lines(1, lead: 7.8mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "2")),
      text(size: 9.7pt)[*What is missing?* — What does the video NOT show? #ruled-lines(1, lead: 7.8mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "3")),
      text(size: 9.7pt)[*Who made this?* — Who built the robot, and who posted the video? #ruled-lines(1, lead: 7.8mm)],
    )
  })'''),
"ai_handout_c7": ('note("The Question Habit — your superpower")[', '''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[PRACTISE THE FOUR QUESTIONS — RIGHT NOW]
    v(3pt)
    text(size: 9.8pt)[A forward on your family group says: "New AI app predicts exam questions with 95% accuracy!" Test the claim with your four questions:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 5.5pt, align: (left, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "1")),
      text(size: 9.7pt)[*How do I know?* — Who measured the 95%, and on what? #ruled-lines(1, lead: 7.8mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "2")),
      text(size: 9.7pt)[*What is missing?* — Which exam, which year, how many tries? #ruled-lines(1, lead: 7.8mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "3")),
      text(size: 9.7pt)[*Who made this?* — Who profits if you believe it? #ruled-lines(1, lead: 7.8mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "4")),
      text(size: 9.7pt)[*What is the trick here?* — Name one way the number could be true AND useless. #ruled-lines(1, lead: 7.8mm)],
    )
  })'''),
"ai_handout_c8": ('note("The Question Habit — your superpower")[', '''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[DRILL THE QUESTIONS — ON A REAL PLAN]
    v(3pt)
    text(size: 9.8pt)[A vendor pitches your school: "Our AI invigilation camera flags cheating with 98% accuracy." Before anyone signs anything, run the five questions and write one line each:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 5.5pt, align: (left, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "1")),
      text(size: 9.7pt)[*How do I know?* — Who measured 98%, on which students? #ruled-lines(1, lead: 7.6mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "2")),
      text(size: 9.7pt)[*What is missing?* — What does the accuracy number NOT say? #ruled-lines(1, lead: 7.6mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "3")),
      text(size: 9.7pt)[*Who made this, who is missing?* — Whose faces was it tested on? #ruled-lines(1, lead: 7.6mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "4")),
      text(size: 9.7pt)[*Who answers when it fails?* — Write the sentence you would demand in the contract. #ruled-lines(1, lead: 7.6mm)],
    )
  })'''),
"ai_handout_c9": ('note("The Question Habit — your superpower")[', '''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[DRILL THE QUESTIONS — ON A CLAIM WITH NUMBERS]
    v(3pt)
    text(size: 9.8pt)[A news graphic says: "Students who use AI tutors score 20% higher." Run the analyst's questions and write one honest line each:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 5.5pt, align: (left, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "1")),
      text(size: 9.7pt)[*How do I know?* — 20% of what, compared with whom, over how long? #ruled-lines(1, lead: 7.6mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "2")),
      text(size: 9.7pt)[*What is missing?* — Which average, and what could an outlier be doing here? #ruled-lines(1, lead: 7.6mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "3")),
      text(size: 9.7pt)[*Who made this?* — Who sells the tutor? Re-weight the claim. #ruled-lines(1, lead: 7.6mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.3pt, "4")),
      text(size: 9.7pt)[*Correlation or cause?* — Name the hidden factor a careful analyst would check. #ruled-lines(1, lead: 7.6mm)],
    )
  })'''),
"ai_handout_c10": ('note("The Question Habit — the designer\'s edge")[', '''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[DRILL THE SEVEN QUESTIONS — ON A SYSTEM IN THE NEWS]
    v(3pt)
    text(size: 9.8pt)[Pick one AI system from this week's headlines (a hiring filter, an exam proctor, a crop-advisory bot). Write one evidence-backed line per question — two of the seven are the accountability pair, and those two are the ones professionals are paid to ask:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 5pt, align: (left, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.2pt, "1–3")),
      text(size: 9.7pt)[*How do I know? What is missing? Who made this?* — one line on the system's evidence trail. #ruled-lines(1, lead: 7.6mm)],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.2pt, "4–5")),
      text(size: 9.7pt)[*Who is missing? What is the trick here?* — one line on whose voices the coverage leaves out. #ruled-lines(1, lead: 7.6mm)],
      box(fill: amber, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.2pt, "6")),
      text(size: 9.7pt)[*Who is accountable when it fails — by name, in writing?* #ruled-lines(1, lead: 7.6mm)],
      box(fill: amber, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9.2pt, "7")),
      text(size: 9.7pt)[*What evidence would change my mind?* — the line that keeps you a designer, not a defender. #ruled-lines(1, lead: 7.6mm)],
    )
  })'''),
}

for d, (anchor, fill) in FILLS.items():
    p = f"/home/z/my-project/scripts/{d}/front.typ"
    src = open(p).read()
    # end of the Question Habit note block: the closing ']\n' before next line — anchor on the note's end
    i = src.index(anchor)
    # find the note's closing ']' (first "\n  ]" after anchor)
    j = src.index("\n  ]", i)
    src = src[:j] + "\n  ]" + fill + src[j+len("\n  ]"):]
    open(p, "w").write(src)
    print(d, "practice strip inserted")
