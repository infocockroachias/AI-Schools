// ============================================================
//  FRONT MATTER — license · acknowledgements · preface
//  (machiatto / MoKa Reads publication specification)
//  Class 10 · "Decide, Evaluate, Design" · Level 5
// ============================================================
#import "template.typ": *

// ------------------------------------------------------------
//  LICENSE PAGE
// ------------------------------------------------------------
#let license-page = {
  front-heading[License]
  text(size: 10.9pt)[
    This handbook is © #datetime.today().display("[year]") the PRATIMAI Curriculum Team. Student-facing
    content — missions, case material, activities and diagrams — is licensed under the
    *Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International* licence (CC BY-NC-SA 4.0):
    you may share and adapt it for classroom use with attribution, for non-commercial purposes, under the
    same licence. The Typst source files are released under the MIT licence so that any school can rebuild,
    translate and localise the book for its own learners.
  ]
  v(2pt)
  text(size: 10.9pt)[
    Every activity in this book is *unplugged*: no task requires a device, an account, a photo, a voice
    recording or any personal information. All examples use invented people and places. Privacy-law and
    board-curriculum references carry a *verify-before-printing* note for educators in the teacher pack.
  ]
  v(9pt)
  block(width: 100%, radius: 5pt, stroke: 0.9pt + ink-soft, fill: white, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, weight: 800, fill: teal-deep, tracking: 0.12em)[THE LICENCE IN PLAIN WORDS]
    v(4pt)
    dtable(("You MAY", "You may NOT"),
      ([ photocopy pages for your class or study group ], [ sell this book or any copy of it ]),
      ([ adapt missions for your learners and share them ], [ remove the credit lines or the licence ]),
      ([ translate the book and keep the same licence ], [ use it to advertise any product or service ]),
      ([ point other schools to the free source files ], [ claim the activities are your own invention ]),
      widths: (1fr, 1fr),
    )
  })
  v(9pt)
  table(stroke: none, columns: 2, inset: (y: 3.2pt),
    [*Series:*], [PRATIMAI · AI Handouts],
    [*Title:*], [Decide, Evaluate, Design — Class 10 · Level 5 · EVALUATE & DESIGN],
    [*Author:*], [PRATIMAI Curriculum Team],
    [*Publish Date:*], [#datetime.today().display()],
    [*Published by:*], [PRATIMAI | AI-Schools],
    [*Edition:*], [Machiatto Edition 1.0],
  )
  v(10pt)
  block(width: 100%, radius: 5pt, stroke: 0.7pt + ink-soft, fill: white, inset: (x: 11pt, y: 8pt), {
    text(size: 9.4pt, fill: ink-soft)[
      Set in *Nunito* and *Baloo 2* on warm paper stock, typeset with Typst using the
      *Machiatto* template — which implements the MoKa Reads publication specification:
      title page, license, acknowledgements, preface, contents, then chapters opening
      with a summary and a mini table of contents. Both typefaces are used under the
      SIL Open Font Licence; the template ships under the MIT licence. The diagrams in
      this book are rendered from version-controlled HTML sources kept beside the Typst
      project; every figure's regeneration note lives in the file `visualgeneration.md`,
      so any school can redraw, translate or AI-replace a figure and rebuild the book.
    ]
  })
}

// ------------------------------------------------------------
//  ACKNOWLEDGEMENTS (rendered in the machiatto cream box)
// ------------------------------------------------------------
#let ack-text = [
  To the Classes 6, 7, 8 and 9 students who carried this series on their shoulders — the detectives
  who counted pixel grids, the builders who audited guest lists, the analysts who voted with rulers
  and dice — this final book is yours. Your teachers reported the moments that turned practice into
  conviction: the day a class argued for a full period about which metric a screening tool should
  chase, the proposal that failed its own fairness check and survived anyway. Those reports became
  the chapters that follow.

  To the curriculum reviewers who tested every mission against the promise that a board-year student
  needs *understanding, not another cram book*: thank you for holding the line. Nothing here asks you
  to memorise a syllabus; everything here makes the syllabus make sense. And to the adults who will
  be asked, over dinner, "who is responsible when a machine decides?" — this book trains a student
  to answer with a framework, an evidence table and an honest limit, and to keep their voice calm
  while doing it.

  Thanks as well to the open-source community behind Typst and the Machiatto template that gives
  this book its typesetting, and to the designers of Nunito and Baloo 2, whose friendly
  letterforms keep pages of hard argument feeling clear. Finally, to the educator holding this
  copy: the last book of a series is a promise kept in public. Judge us gently, and send us what
  you find.
]

// ------------------------------------------------------------
//  PREFACE — how to use · note to adults · journey map
// ------------------------------------------------------------
#let preface-pages = {
  front-heading[Before You Begin]
  text[Welcome back, Analyst. Four years of evidence sit behind you: in Class 6 you *spotted* learning machines, in Class 7 you *operated* them, in Class 8 you *planned and defended* them, in Class 9 you explained *why they work and when they fail*. This year the questions grow up one last time: not just *how does it work* but *how good is it, who decides, and what should we build at all?* You will place every product you know on a model-family map, run a neural network with your own classmates as neurons, judge a medical screening tool with a confusion matrix, argue a triage case through four ethical principles, and design a complete, defensible AI system on paper — with a budget, an ethics review and a pitch. This is the year the analyst becomes the designer.]

  text[One honest sentence before you start. This is a board-exam year, and this book is *not* an exam-cram guide. It is something more useful: the reasoning underneath what exams examine. When you can judge a model with your own confusion matrix, the syllabus questions become arithmetic you have already lived. Keep your Class 9 book nearby — the maths there is the floor this book builds on.]

  v(10pt)

  note("How to read a mission")[
    #grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      text(font: f-display, weight: 800, size: 12.1pt, fill: amber-deep)[T10-10],
      text(font: f-display, weight: 800, size: 13.9pt, fill: teal)[Mission title],
      text(font: f-display, fill: ink-soft, weight: 800, size: 8.1pt, tracking: 0.12em)[PAIR · 15 MIN],
    )
    #v(3.5pt)
    #box(width: 5pt, height: 5pt, fill: amber, baseline: 28%) #h(4pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em)[QUICK WIN] sits at the right edge of the easier missions.
    #v(3.5pt)
    #box(width: 5pt, height: 5pt, fill: amber, baseline: 28%) #h(4pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em)[HANDS-ON LAB] marks the missions where you *build, measure, act or compute by hand* — the working labs of this book. There are eight. They are the fastest way to own an idea.
    #v(4.5pt)
    Every mission has a code like #text(weight: 800)[T10-01] — *T10* means this Class 10 handout, and *01* is the mission number, so your teacher can say "open Task T10-11". This year the missions ask for *judgement with evidence*: an answer plus the reason, the number plus what it hides, the design plus its limits. In your mastery tracker, you rate yourself on four levels — *Emerging, Developing, Proficient, Advanced* — and you defend the level you claim. Nobody fails in this book; honest evidence always counts.
  ]
  v(8pt)

  note("The Question Habit — the designer's edge")[
    Your five questions — *"How do I know?"*, *"What is missing?"*, *"Who made this?"*, *"Who is missing?"*, *"What is the trick here?"* — now take on the two that professionals are paid to ask. For every system you evaluate: *"Who is accountable when it fails — by name, in writing?"* And for every design of your own: *"What evidence would change my mind?"* A designer who cannot name what would change their mind is not designing; they are defending. Carry all seven questions into every debate, every review, and every rumour you meet this year.
  ]

  pagebreak()

  // ---------- note for adults ----------
  front-heading[A Note for Adults]
  block(width: 100%, radius: 5pt, stroke: 1pt + ink, fill: cream, inset: (x: 12pt, y: 9pt), {
    text(size: 10.3pt)[
      This handout builds *AI understanding* — how machines learn from data and how humans should judge
      them — through 21 paper-and-pencil missions. It is fully *unplugged*: no task requires a device,
      an account, a photo, a voice recording or any personal information. This year the big ideas are
      model families (rule-based, supervised, unsupervised, reinforcement — and neural networks as
      layers of weighted votes); how machines see (pixels, convolution) and read (text normalisation,
      bag-of-words, TF-IDF); honest evaluation (train/test splits, confusion matrices, precision,
      recall and choosing a metric for the stakes); ethics as practice (the four bioethics principles,
      algorithm audits, privacy rights, generative-AI integrity); and a complete capstone design brief
      with an ethics gate. Where the book touches India's data-protection law or board syllabi, a
      *verify-current-rules* note sits in the teacher pack — regulations move faster than print. The
      best help you can give a student in an exam year is to treat this reasoning as the subject
      itself: ask for the evidence, the metric choice, and the limit in the same breath.
    ]
  })
  v(9pt)
  text(font: f-display, size: 13pt, weight: 800, fill: teal)[Four ways to help — without giving answers]
  v(4.5pt)
  grid(columns: (1fr, 1fr), column-gutter: 7pt, row-gutter: 6pt,
    ..range(4).map(i => {
      let titles = ("Ask for the metric", "Respect the argument", "Protect the portfolio", "Connect to real governance")
      let bodies = (
        [When your student says "the model is 99% accurate", ask *"accurate at what — and who pays for the errors?"* Metric choice is the year's core skill; practise it at the dinner table.],
        [Swap "good answer" for *"you changed your mind in front of evidence"* — the rarest skill this book teaches is updating under pressure, and it deserves to be named.],
        [The capstone design brief is a portfolio piece. Keep it flat, dated and un-marked: what a student can *show and defend* outranks what they once scored.],
        [Privacy rules, AI guidelines and board curricula are all in motion. Read one real notice or policy together — the book trains the reading, the news provides the text.],
      )
      block(width: 100%, breakable: false, radius: 5pt, stroke: 0.9pt + ink-soft, fill: white, inset: (x: 9pt, y: 8pt), {
        grid(columns: (auto, 1fr), column-gutter: 6.5pt, align: (center, left),
          box(fill: teal, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt, str(i + 1))),
          text(weight: 800, size: 10.4pt, fill: teal, titles.at(i)),
        )
        v(3pt)
        text(size: 9.7pt, bodies.at(i))
      })
    })
  )
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 1pt + ink, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[SIGNS OF DESIGNER GROWTH WORTH PRAISING]
    v(3pt)
    text(size: 9.8pt)[Watch for these quiet changes — they matter more than any correct answer: your student *names the metric* before naming the score · they say *"it depends on the cost of each error"* and mean it · they *change their position* when evidence lands, and say why out loud · they ask *"who is accountable, by name?"* of systems in the news · their design brief contains a limit they discovered themselves. When you spot one, name it: "That is exactly what designers do."]
  })
  v(9pt)
  note("If your child asks…")[
    #text(size: 10.1pt)[*"Is this book enough for the AI syllabus?"* — Say: it deliberately teaches the reasoning the syllabus examines — model families, evaluation, ethics frameworks, the design process — without duplicating any board textbook. For the printed syllabus detail, use the official document with a teacher. #h(8pt) *"Will AI take the careers I'm aiming for?"* — Say: this book's honest answer is Chapter 5's — some tasks automate, most roles reshape, and the durable skills are exactly what the capstone practices: scoping, judging evidence, and taking responsibility. #h(8pt) *"Why so much paper in a programming year?"* — Say: because the professionals design on whiteboards first; and because on paper, nothing hides inside a library call — every weight, every metric, every gate is visible and yours.]
  ]
  v(9pt)

  // ---------- journey map (flows on — no hard break, so no orphan page) ----------
  front-heading[My AI Journey Map]
  text(size: 8.8pt, fill: ink-soft, weight: 800, tracking: 0.13em)[THE FIVE STRANDS YOU WILL MEET AT EVERY STOP]
  v(5pt)
  grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
    ..range(5).map(i => {
      let letters = ("U", "D", "L", "W", "R")
      let names = ("Understand AI", "Data", "Learn", "World", "Responsibility")
      let qs = ("Which model family is this — and what exactly does 'deep' add?", "Whose data, whose consent — and what does privacy law owe me?", "How do I judge a model honestly — and which metric do the stakes demand?", "How do machines see and read — and what does generative AI owe me?", "Who is accountable, and how do I design so the answer exists?")
      block(width: 100%, breakable: false, radius: 5pt, stroke: 0.9pt + ink-soft, fill: white, inset: (x: 6.5pt, y: 7pt), stack(spacing: 3.4pt,
        grid(columns: (auto, 1fr), column-gutter: 4.5pt, align: (center, left),
          circle(radius: 7.7pt, fill: teal, align(center + horizon, text(fill: white, weight: 800, size: 9.5pt, letters.at(i)))),
          text(weight: 800, size: 10pt, fill: teal, names.at(i))),
        text(size: 8.5pt, fill: ink-soft, qs.at(i)),
      ))
    })
  )
  v(6pt)
  block(width: 100%, radius: 5pt, fill: amber-soft, inset: (x: 10pt, y: 6.5pt), {
    text(font: f-display, size: 9.2pt, weight: 800, fill: amber-deep, tracking: 0.13em)[THINKING-TOOLS THREAD]
    v(2pt)
    text(size: 9.7pt)[runs through every stop: *decompose* the judgement · *compute before you claim* · *argue the counter-case* · *design the gate before the deployment*]
  })
  v(10pt)
  text(size: 8.8pt, fill: ink-soft, weight: 800, tracking: 0.13em)[THE FIVE STOPS ON YOUR FINAL CASE]
  v(6pt)
  // stepper
  box(width: 100%, height: 33mm, {
    place(horizon, dx: 0mm, dy: 4mm, line(length: 92%, stroke: (paint: line-soft, thickness: 1.2pt, dash: "dashed")))
    place(horizon, grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
      ..range(5).map(i => {
        let titles = ("Models Explained", "Machines That See and Read", "Judging a Model", "Ethics, Governance & Society", "Responsible AI Design Brief")
        let subs = ("families · learning types · weighted votes", "pixels · convolution · TF-IDF · bots", "splits · confusion · precision · base rates", "principles · audits · privacy · careers", "the full pipeline · pitch · your map ahead")
        stack(spacing: 4pt,
          align(center, circle(radius: 10.5pt, fill: if i == 4 { amber } else { teal }, stroke: 2.5pt + paper, align(center + horizon, text(fill: white, weight: 800, size: 11.6pt, str(i + 1))))),
          align(center, text(size: 9.4pt, weight: 800, fill: teal, titles.at(i))),
          align(center, text(size: 8pt, fill: ink-soft, style: "italic", subs.at(i))),
        )
      })
    ))
  })
  v(8pt)
  text(size: 8.8pt, fill: ink-soft, weight: 800, tracking: 0.13em)[BY THE END OF THIS BOOK, I CAN…]
  v(5pt)
  ican((
    [place any AI product on the model-family map — rule-based, supervised, unsupervised or reinforcement],
    [explain a neural network as layers of weighted votes — and run one by hand],
    [split data into train and test sets honestly, and explain why leakage ruins a score],
    [build a confusion matrix from raw results and compute accuracy, precision and recall from it],
    [choose the right metric for a context — and defend the choice with the cost of each error],
    [explain the base-rate trap and why a "99% accurate" claim can still be almost useless],
    [apply a 3×3 kernel to pixels by hand and sketch what convolution layers do],
    [normalise text, build a bag-of-words table, and tell script bots from smart bots],
    [run the four ethical principles over a real AI case — and find where each one bites],
    [design a complete AI project on paper: scope, data, model, evaluation, deployment, ethics gate, pitch],
  ))
  v(9pt)
  block(width: 100%, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, weight: 800, fill: teal-deep, tracking: 0.13em)[YOUR HONEST-RATING SCALE — THIS YEAR AND BEYOND]
    v(4pt)
    dtable(("Level", "It means — exactly", "The evidence that earns it"),
      ([*Emerging*], [I have met it and can follow someone else using it.], [a completed mission with help]),
      ([*Developing*], [I can do it with my notes open.], [a re-run mission, notes beside me]),
      ([*Proficient*], [I can do it cold — and explain it to someone else.], [a mission done clean, then taught home]),
      ([*Advanced*], [I can teach it, break it on purpose, and defend its limits.], [a checkpoint answer with the counter-case]),
      widths: (0.55fr, 1.35fr, 1.1fr),
    )
    v(3pt)
    text(size: 9.4pt, fill: ink-soft, style: "italic")[Rate yourself with evidence in the back tracker — a level you cannot show is a level you do not own yet. Designers rate low and show the fix; that is the whole habit.]
  })
  v(9pt)
  block(width: 100%, radius: 5pt, stroke: 0.9pt + ink-soft, fill: white, inset: (x: 10pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, weight: 800, fill: teal-deep, tracking: 0.13em)[MY STARTING LEVELS — CIRCLE TODAY'S HONEST GUESS, SHADE THE END-OF-YEAR TRUTH]
    v(4pt)
    grid(columns: (1.55fr, 1fr, 1fr), column-gutter: 7pt, row-gutter: 4.5pt, align: (left, center, center),
      text(size: 8.6pt, weight: 800, fill: ink-soft, tracking: 0.08em)[THE SKILL], text(size: 8.6pt, weight: 800, fill: ink-soft, tracking: 0.08em)[TODAY], text(size: 8.6pt, weight: 800, fill: ink-soft, tracking: 0.08em)[YEAR-END],
      ..(
        ("place a product on the model-family map", "model families"),
        ("run a neural network by hand", "weighted votes"),
        ("judge a model with a confusion matrix", "metrics"),
        ("apply a kernel to pixels by hand", "seeing"),
        ("build a bag-of-words table", "reading"),
        ("run the four principles on a real case", "ethics frame"),
        ("design and pitch a full brief, gates shut", "capstone"),
      ).map(((skill, _)) => (
        text(size: 9.5pt, skill),
        text(size: 8.6pt, fill: ink-soft)[E · D · P · A],
        text(size: 8.6pt, fill: ink-soft)[E · D · P · A],
      )).flatten()
    )
    v(2pt)
    text(size: 8.6pt, fill: ink-soft, style: "italic")[Be generous with TODAY and ruthless at YEAR-END — the gap between the two columns is the course.]
  })
}
