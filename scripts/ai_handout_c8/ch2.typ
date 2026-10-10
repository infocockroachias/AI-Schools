#import "template.typ": *
// ============================================================
//  CHAPTER 2 — DATA & FAIRNESS   (8 pp · tasks 04–07)
// ============================================================
#chapter-opener(2, "Data & Fairness", "If the data only knows some of us, who does the machine actually serve?",
  outcomes: ("8.D1", "8.D2", "8.R1"), strands: ("D", "R"),
  summary: [A machine is a mirror of its dataset — show it only some people and it serves only some people. In this chapter you audit real tables like a data detective (counting who is over-represented and who is missing), run a sampling game that ends with a surprise, repair an unfair dataset three different ways, and write the consent rules every honest collector must follow. This is the chapter where builders learn that "the data said so" is never the end of the story.],
  missions: "T8-04 – T8-07",
  link: "Links: Maths — percentages, sampling · Social Science — inclusion & community · English — persuasive asking",
  extras: opener-extras(
    words: ("sampling", "consent", "fairness", "representation"),
    warmup: [If a "smart attendance" camera was trained only on morning-shift students, who would it fail to recognise — and why would that matter? Write one line.],
    need: ("pencil", "calculator or rough column", "class register (or a made-up list of 24 names)", "sticky notes"),
  ))

// ---------------- 2.1 ----------------
#sec(1, "The audit: who is inside the table?")
Every dataset is a guest list. Somebody decided who got invited — which streets, which ages, which languages, which crops — and everybody left off the list simply does not exist *for the machine*. Data scientists call the balance of that guest list *representation*: does the dataset look like the real group of people the system will meet? You already know what happens when examples are few or one-sided (Class 7, T7-05). This year we go further: we *count*. A fair audit does not say "we should be more inclusive" — it says "40 of our 50 examples are from one ward; that ward is 20% of the town; we are overweighted by a factor of four." Numbers turn a feeling into a plan.

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[GUEST LIST OF MY CLASSROOM — A 60-SECOND PRACTICE AUDIT]
  v(2pt)
  text(size: 10.1pt)[If a machine were trained only on the students sitting in your row or group right now, which TWO voices or habits from the wider class would it never learn?]
  ruled-lines(2, lead: 8.2mm)
})

#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[QUICK COMPUTE — WARM UP THE AUDIT MUSCLE]
  v(3pt)
  dtable(("If the dataset has…", "…and this many are from Ward 3", "What percentage is that?"),
    ([40 examples], [10], [ ]),
    ([200 records], [120], [ ]),
    ([50 photos], [2], [ ]),
    widths: (1fr, 1fr, 34mm),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Same three numbers, three different weights — percentages are how an audit speaks out loud.]
})

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[TWO-MINUTE VOLLEY — SAY IT OUT LOUD WITH A PARTNER]
  v(2pt)
  text(size: 10.1pt)[Take turns, one sentence each: *“A dataset is a guest list because …”* — then *“Consent matters because …”* — then *“A fix without a price is …”* Two lines for the best sentence you heard:]
  ruled-lines(2, lead: 8.2mm)
})

#task("T8-04", "Data Detective", mode: "group", mins: "20")[
  A city clinic built a "fever triage" helper trained on 200 patient records. Before you audit: *predict first.* Which group do you EXPECT to be overweighted in a clinic's own records — and why? Write one line, then audit for real:
  #ruled-lines(1, lead: 8.4mm)
  #v(2pt)
  #v(4pt)
  #grid(columns: (1fr, 1fr), column-gutter: 8pt,
    box(fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[THE 200 TRAINING RECORDS]
      v(4pt)
      dtable(("Group in the records", "Records"),
        ([Adults, Ward 3 (clinic's own street)], [120]),
        ([Adults, other wards], [30]),
        ([Children, Ward 3], [40]),
        ([Children, other wards], [10]),
        ([Elderly, any ward], [0]),
        ([Patients who speak only Kannada], [4]),
        widths: (1fr, 22mm),
      )
    }),
    box(fill: white, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[THE TOWN AS IT REALLY IS]
      v(4pt)
      dtable(("Group", "Share of town"),
        ([Adults total], [55%]),
        ([Children total], [30%]),
        ([Elderly total], [15%]),
        ([Ward 3 residents], [18%]),
        ([Kannada-only speakers], [22%]),
        widths: (1fr, 24mm),
      )
      v(3pt)
      text(size: 9.2pt, fill: ink-soft, style: "italic")[Percent to write: records ÷ 200 × 100. A share 2× or more off from reality is a red flag — mark it.]
    }),
  )
  #v(6pt)
  #dtable(("Group", "% of dataset", "Town share", "Over / Under / Missing?"),
    ([Adults, Ward 3], [ ], [18%], [ ]),
    ([Children, other wards], [ ], [30% total], [ ]),
    ([Elderly], [ ], [15%], [ ]),
    ([Kannada-only speakers], [ ], [22%], [ ]),
    widths: (44mm, 24mm, 24mm, 1fr),
  )
  #v(5pt)
  *The verdict in one sentence — who will this machine serve best, and who will it fail?* #ruled-lines(2, lead: 8.6mm)
]
#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[MY AUDIT HABIT — the first real place I will use percentages this month:] #h(4pt)]
  v(2.5pt)
  text(size: 10.1pt)[I will audit … #box(width: 58mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) because its guest list matters to …]
  ruled-lines(1, lead: 8.2mm)
})

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[WHO DECIDED? — the question behind every guest list:] #h(4pt) #text(size: 10.1pt)[For the clinic dataset, one person quietly decided who got invited. Name the two people who SHOULD have been in that room:] #h(4pt)]
  ruled-lines(1, lead: 8.2mm)
})

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[WHY NOT COLLECT EVERYONE?] #h(4pt) #text(size: 10.1pt)[Name one real reason a project cannot survey every person it serves — and what that forces the team to become good at:] #h(4pt)]
  ruled-lines(1, lead: 8.2mm)
})

#wordpower(4, "sampling", [Choosing part of a group to study, hoping it fairly represents the whole.])

// ---------------- 2.2 ----------------
#sec(2, "The sampling game: small groups, big surprises")
Why not just collect *everyone*? Cost, time and energy force every real project to sample — to study a part and treat it as a stand-in for the whole. The danger lives in *how* the part is chosen. Pick your sample from the people nearest to you, and the sample quietly inherits all your neighbourhood's habits. Pick it at random from the whole group, and the surprises begin to even out. You are about to feel this in one round of a game — the class meeting 8 students will *not* look like the class.

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[PREDICT THE GAME — BEFORE YOU PLAY IT]
  v(2pt)
  text(size: 10.1pt)[The first 8 hands will lean toward which kind of student? And which kind of student will the bag draw fairly? Write both predictions — we check them against the real numbers soon:]
  ruled-lines(2, lead: 8.2mm)
  v(3pt)
  text(size: 9.7pt)[*A sample I already trust (and why):* #box(width: 62mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) — *one thing it still misses:* #box(width: 40mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))]
})

#task("T8-05", "Sampling Game", mode: "class", mins: "15")[
  Round 1: your teacher picks the *first 8 students* who raise a hand (or the front row). Each writes one number: *minutes spent on screens yesterday*. Record them, then find the class's average for the *whole class* (your teacher writes it on the board without revealing it until Round 3).
  #v(4pt)
  #dtable(("What we measured", "First-8 sample", "Whole class (revealed last)"),
    ([Screen minutes — average], [ ], [ ]),
    ([How far the sample average was from the truth], [ #ruled-lines(1, lead: 7.6mm) ], [ ]),
    widths: (58mm, 1fr, 1fr),
  )
  #v(4pt)
  Round 2: now sample 8 *fairly* — assign everyone a number and draw 8 from a bag. Record the new average and the new gap:
  #dtable(("What we measured", "Fair random 8", "Gap from truth"),
    ([Screen minutes — average], [ ], [ ]),
    widths: (58mm, 1fr, 1fr),
  )
  #v(5pt)
  *Which sample landed closer to the truth — and why was the hand-raising sample biased before anyone wrote a single number?* #ruled-lines(2, lead: 8.6mm)
  *A builder collected training photos only from her own school. Which round of this game is she stuck in?* #ruled-lines(1, lead: 8.6mm)
]
#wordpower(5, "representation", [How closely a dataset's people match the real people the system will serve.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · SPOT THE SKEWED SAMPLE]
  v(3pt)
  text(size: 10.1pt)[Each plan collects data for a school-canteen menu predictor. Mark each sampling plan F (fair) or S (skewed), and name the group it would miss:]
  v(3pt)
  dtable(("The sampling plan", "F or S?", "Who is missing"),
    ([Ask the 12 students in the robotics club.], [ ], [ ]),
    ([Put a slip in every lunch bag for one week; use whoever replies.], [ ], [ ]),
    ([Number all 240 students; draw 60 from a box.], [ ], [ ]),
    ([Survey only students who buy canteen food.], [ ], [ ]),
    ([Survey at 8:00 am only — bus students have not arrived yet.], [ ], [ ]),
    widths: (1fr, 18mm, 44mm),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Trickiest: the lunch-bag plan *sounds* fair — but it only hears from families that pack lunch and from students willing to answer. "Random-ish" is not random.]
}))

// ---------------- 2.3 ----------------
#sec(3, "Fairness Fix-It: repairing a broken guest list")
Finding the skew is detective work; *fixing* it is builder work — and there is never one magic fix. Real teams choose among several repairs, each with a price. Collect *more* data from the missing groups (slow but strongest). *Re-weight* what you have (fast, but the thin groups stay thin). *Restrict* the machine to the groups it truly knows, and say so honestly on the label (safest, but less useful). Notice what is *not* on the list: pretending the machine is neutral. A machine trained on a skewed guest list is not neutral — it votes for the majority group every single time.

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[SAMPLE-SIZE INTUITION — BEFORE YOU CHOOSE A FIX]
  v(2pt)
  text(size: 10.1pt)[A re-balance can divide by ten, but it cannot invent examples. In one line: what is the DIFFERENCE between hearing a group 4 times instead of 40 times?]
  ruled-lines(2, lead: 8.2mm)
})

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · WHICH FIX WOULD YOU DIAL?]
  v(3pt)
  text(size: 10.1pt)[Each team has found its skew and must dial one fix — C (collect more), R (re-balance what exists) or L (limit the machine and label it honestly). Choose, and write the price:]
  v(3pt)
  dtable(("The situation", "C / R / L?", "The price in one line"),
    ([The fair-weather bus data can be collected — the monsoon is two months away.], [ ], [ ]),
    ([The exam is on Friday; there is no time to gather new examples.], [ ], [ ]),
    ([The clinic cannot reach elderly patients safely this season.], [ ], [ ]),
    ([New data exists, but only if the school pays for a second survey round.], [ ], [ ]),
    widths: (1fr, 22mm, 1fr),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[There is no universally right dial — a fix is right when its price is one the team can honestly pay. That is a builder's judgement, not a maths answer.]
}))

#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[PRICE CHECK — WHAT DOES A FIX ACTUALLY COST?]
  v(3pt)
  dtable(("The fix", "Weeks of work (our estimate)", "The group it helps first"),
    ([Collect 40 new elderly records (home visits)], [ ], [ ]),
    ([Re-balance the existing 200 records], [ ], [ ]),
    ([Restrict to adults + print an honest label], [ ], [ ]),
    widths: (1fr, 40mm, 1fr),
  )
})

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[MY NEIGHBOURHOOD GUEST LIST — where do OUR examples come from?] #h(4pt)]
  v(2.5pt)
  text(size: 10.1pt)[If someone collected “how people cross the road” only near our school gate, which crossing habit of the wider neighbourhood would they completely miss?]
  ruled-lines(2, lead: 8.2mm)
})

#task("T8-06", "Fairness Fix-It", mode: "group", mins: "20")[
  Return to the clinic's fever helper (T8-04): zero elderly records, 2% Kannada-only records. Your team must propose *three different fixes*, one of each kind, and be honest about the price of each:
  #v(4pt)
  #dtable(("Fix", "Exactly what we would do", "The price we pay (time / cost / usefulness)"),
    ([1 · Collect], [ ], [ ]),
    ([2 · Re-weight or re-balance], [ ], [ ]),
    ([3 · Restrict honestly], [ ], [ ]),
    widths: (40mm, 1fr, 1fr),
  )
  #v(5pt)
  *Which fix would you ship first, and what would you tell the ward office about what the machine still cannot do?* #ruled-lines(2, lead: 8.6mm)
]
#wordpower(6, "fairness", [A system works equally well for every group of people it affects.])

#myth("Fairness means treating everyone the same.")[
  Same treatment is only fair when everyone started in the same situation. The clinic helper that scores every patient against adult, Ward-3 patterns treats everyone "the same" — and that is exactly the unfairness. Real fairness asks a harder question: *does the system work equally well for every group it touches?* Sometimes fair treatment means collecting *different* extra data for different groups — more elder-friendly examples, more Kannada-language cases — so the machine's *outcomes*, not just its rulebook, come out level. Fairness is measured in results, not in uniformity.]

// ---------------- 2.4 ----------------
#sec(4, "Consent: the door every example walks through")
Behind every row of a dataset stands a person who breathed, spoke, walked or was photographed — and every honest project asks before it takes. *Consent* means permission given freely, by someone who understands what will be collected, why, and who will see it. Children and other vulnerable groups deserve extra care: often a parent or guardian must say yes alongside them. And consent has a shy cousin called *privacy care*: even data given happily must be stored safely, used only for the promised purpose, and stripped of details that could identify someone — a name, an address, a face. Builders who skip this step do not just break rules; they break the trust their whole project runs on.

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[CONSENT — TRUE OR FALSE?]
  v(3pt)
  dtable(("The claim", "T or F?", "The one-line why"),
    ([“They said yes quickly, so we do not need to explain the project.”], [ ], [ ]),
    ([“Blurring faces afterwards can fix consent that was never asked.”], [ ], [ ]),
    ([“Data collected for the canteen survey may be reused for attendance.”], [ ], [ ]),
    widths: (1fr, 18mm, 44mm),
  )
}))

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[OUR CONSENT PROMISE — PRACTICE COPY]
  v(2pt)
  text(size: 10.1pt)[Draft the one sentence you would say to the class BEFORE the corridor monitor collects anything. The best drafts name what, why, who sees it, and how to say no:]
  ruled-lines(2, lead: 8.2mm)
  v(3pt)
  text(size: 9.7pt)[*Self-grade your draft:* names WHAT is collected #cbox · says WHY #cbox · says WHO sees it #cbox · offers a NO path #cbox]
})

#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[WHO SEES IT? — THE FORGOTTEN CONSENT QUESTION]
  v(3pt)
  dtable(("If the noise monitor's numbers went to…", "My comfort (1–3)", "What I would demand first"),
    ([…only the class teacher's register], [ ], [ ]),
    ([…a wall chart everyone can read], [ ], [ ]),
    ([…the school's app for parents], [ ], [ ]),
    widths: (1fr, 30mm, 1fr),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Comfort levels are data too — and they are exactly the data most projects never collect.]
})

#task("T8-07", "Consent Check", mode: "pair", mins: "10")[
  A school AI club wants to build a "corridor noise monitor" that records sound levels to suggest quieter break times. For each data idea below, mark: G (fine to collect with plain consent), A (needs *extra* care — guardian consent, or faces/voices anonymised), or N (should not be collected at all). Then write the team's one-sentence consent promise:
  #v(4pt)
  #dtable(("Data the club wants", "G / A / N?", "Why — one line"),
    ([Sound *level* numbers (no words, no voices)], [ ], [ ]),
    ([Actual voice recordings from the corridor], [ ], [ ]),
    ([Photos of students' faces while noisy], [ ], [ ]),
    ([Blurred silhouettes with noise numbers attached], [ ], [ ]),
    ([Names of the loudest five students, published on a wall], [ ], [ ]),
    widths: (1fr, 20mm, 1fr),
  )
  #v(5pt)
  *Our consent promise (one sentence we would say to every student before collecting anything):*
  #ruled-lines(2, lead: 8.6mm)
]
#wordpower(7, "consent", [Permission given freely by a person who understands what will be collected and why.])
#wordpower(8, "privacy", [Keeping people's personal details safe, used only for the promised purpose.])

#selfcheck(
  [I can audit a dataset with percentages and name the groups that are missing or overweighted],
  [I can explain why a hand-raised sample is biased before anyone answers a question],
  [I can propose three kinds of fairness fixes — and state the price of each],
  [I can decide what data needs plain consent, extra care, or no collection at all],
)
#thinkink([One machine or service I know was surely built on a skewed guest list. The group it was built without is …, and one thing that changes for them is …], lines: 2)

#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[PERCENT PRACTICE — FINISH THE AUDIT]
  v(3pt)
  text(size: 10.1pt)[The clinic audit in numbers — complete each row (records ÷ 200 × 100):]
  v(3pt)
  dtable(("Group", "Records", "% of 200", "Verdict"),
    ([Adults, Ward 3], [120], [ ], [ ]),
    ([Children, other wards], [10], [ ], [ ]),
    ([Kannada-only speakers], [4], [ ], [ ]),
    widths: (1fr, 24mm, 26mm, 1fr),
  )
  v(3pt)
  text(size: 9.3pt, fill: ink-soft, style: "italic")[Verdict vocabulary: *overweighted* (far above the town share) · *underweighted* (far below) · *missing* (zero or nearly zero). A group cannot argue with its own percentage.]
  v(4pt)
  text(size: 9.7pt)[*The one audit finding I will remember longest (group, number, feeling):* #ruled-lines(1, lead: 8.2mm)]
})

#homelink[
  #task("AT HOME", "Guest List Detective", mode: "home", mins: "15")[
    With a grown-up, pick one app or service your family uses (a video app, a map, a shopping site). Do not open any settings or accounts — just talk. Guess together: whose voices, faces, languages and places were probably in its training data — and who might be missing? #v(3pt)
    *Our guess at the guest list (who is inside):* #ruled-lines(2, lead: 8.1mm)
    *Who is probably missing — and one way that could go wrong for them:* #ruled-lines(2, lead: 8.1mm)
    *One question we would ask the makers if we met them:* #ruled-lines(1, lead: 8.1mm)
  ]
]

#note("Case notes — what changed in my thinking?")[
  Before this chapter I believed data was just… data — neutral stuff. Now I know every dataset has a guest list, and the detective's first question is always … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 2 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[A dataset is a *guest list* — first ask who is inside, in percentages, not feelings.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Hand-picked samples inherit the picker's neighbourhood; *random* samples land nearer the truth.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Three honest fixes for a skewed dataset: *collect more, re-balance, or restrict and say so*.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Consent* is free, informed permission — and privacy means keeping the promise after it is given.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[MY SAMPLE, AUDITED BY ME — the honest version:] #h(4pt)]
  v(2.5pt)
  text(size: 10.1pt)[My own T8-05 sample leaned toward … #box(width: 52mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) · the fair version would need …]
  ruled-lines(1, lead: 8.2mm)
})

#chapter-checkpoint(2,
  [The clinic dataset had 120 adult Ward-3 records out of 200. What percentage is that — and why is it a red flag against an 18% town share?],
  [Name the three fixes for an unfair dataset, and the price of the one you would choose.],
  [Why is "the machine treats everyone the same" NOT a proof of fairness?],
)
#case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue about data, fairness and consent")