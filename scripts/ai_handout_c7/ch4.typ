#import "template.typ": *
// ============================================================
//  CHAPTER 4 — WHEN AI GETS IT WRONG   (7 pp · tasks 13–15)
// ============================================================
#chapter-opener(4, "When AI Gets It Wrong", "Who taught the machine — and who answers for its mistakes?",
  outcomes: ("7.R1", "7.R2"), strands: ("R",),
  summary: [Every machine in this book can fail — and this chapter is about *how* and *who answers*. You will train a deliberately one-sided suggestion machine and watch unfairness walk in with the data. You will run the three checks on content that was faked or edited, and hunt what is missing. Then you will take on the hardest question of all: when a machine causes harm, who is responsible? Spoiler: responsibility follows control — and machines control nothing.],
  missions: "T7-13 – T7-15",
  link: "Links: Social Science — fairness & rules · English — checking evidence",
  extras: opener-extras(
    words: ("bias", "misinformation", "verify", "fairness", "accountability"),
    warmup: [A school team photo shows only the winning team. Would that photo be fair evidence of “our school loves cricket”? Write what is missing.],
    need: ("pencil", "a calm head", "courage to disagree politely"),
  ))

// ---------------- 4.1 ----------------
#sec(1, "One-sided examples, unfair machines")
In Class 6 you taught an alien the idea of *mango* using only green mangoes — and the alien concluded that all mangoes are green. Machine A in T7-05 fell for three leaves. Here is the grown-up version of the same trap: when the *examples behind a machine* are one-sided, the machine's predictions treat everyone outside that side unfairly. Nobody *programmed* the unfairness. It walked in quietly, inside the data. This is called *bias*, and a detective who understands it can spot it — and propose a fix.

#task("T7-13", "The Unfair Machine", mode: "group", mins: "20")[
  A company built a *Uniform Suggester*: upload a school photo, and the app confirms your school's uniform. It was trained on 5,000 photos collected from three nearby schools — every one of them wears a *white shirt and grey trousers or skirt*. Then students of Riverdale School, whose uniform is a *blue pinafore*, tried the app.
  #v(4pt)
  #dtable(("Question", "Your group's answer"),
    ([What did the app predict for Riverdale students — and why?], [ ]),
    ([Who is harmed, and how? (list every group you can find)], [ ]),
    ([Who is NOT harmed — and might never notice the problem?], [ ]),
    ([One fix the company could make], [ ]),
    ([Where the better training data could come from], [ ]),
    widths: (62mm, 1fr),
  )
  #v(5pt)
  *Connect the cases: what does the Uniform Suggester share with the alien's green mangoes and Machine A's three leaves?* #ruled-lines(2, lead: 8.8mm)
  *Write one honest sentence the company could send to Riverdale School:* #ruled-lines(2, lead: 8.8mm)
]
#wordpower(12, "bias", [When examples are one-sided, so the machine's results treat some people unfairly.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[ONE MORE CASE · THE TALENT FINDER]
  v(3pt)
  text(size: 10.3pt)[A sports academy built a *Talent Finder*: feed it a video of a child playing, and it predicts who should be invited for trials. Its training data: 3,000 video clips of children playing tennis-ball street cricket — collected from one big city, all of them boys. Then two children sent videos: *Meera*, who plays handball, and *Joseph*, who plays hockey on a village field.]
  v(4pt)
  dtable(("Child", "What the machine predicted", "Why did it fail?", "One fix"),
    ([Meera], [“no talent found”], [ ], [ ]),
    ([Joseph], [“no talent found”], [ ], [ ]),
    widths: (20mm, 40mm, 1fr, 1fr),
  )
  v(4pt)
  text(size: 10.1pt)[*Who is missing from this training set? List every group you can find:* #ruled-lines(2, lead: 8.4mm)]
}))

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · SPOT THE MISSING]
  v(3pt)
  dtable(("The system was trained on…", "Who is missing — and what could go wrong for them?"),
    ([A voice assistant trained only on adult voices], [ ]),
    ([A bus-route predictor trained only on Sunday traffic], [ ]),
    ([A spelling app trained only on English words], [ ]),
    ([A face-unlock system tested mostly on a few local families], [ ]),
    ([A homework helper trained only on one board's textbooks], [ ]),
    widths: (62mm, 1fr),
  )
}))

#note("Detective's note")[Notice something important: the app was *not told* to prefer white shirts. Bias is not usually a bad decision somebody made — it is a *decision nobody noticed they made*: which schools, which cameras, which streets, which names ended up in the training set. That is why fairness must be *checked*, not assumed.]

// ---------------- 4.2 ----------------
#sec(2, "Fake and edited content: three checks")
Class 6 gave you two checks for suspicious content: *who made this?* and *what is missing?* This year, three sharper checks — because fakes have grown up too. Check the *source*: who first published it, and are they named? Check the *evidence*: is there a photo, a document, a number you could verify somewhere else? Check the *emotion*: is the message built to make you panic, laugh or rage *before you think*? Strong emotion is not proof of a lie — but it is the costume that most lies prefer. And remember from Chapter 2: a machine that *counts* words can be taught to spread them, too.

#task("T7-14", "Fake Check 3", mode: "pair", mins: "10")[
  Three messages landed in the class group. Run all three checks on each, then give a verdict: *forward*, *stop*, or *ask a trusted adult first*.
  #v(4pt)
  #dtable(("The message", "Source check", "Evidence check", "Emotion check", "Verdict"),
    ([“FREE recharge for the first 100 students! Forward to 5 groups within 10 minutes!!!”], [ ], [ ], [ ], [ ]),
    ([“District science fair moved to Saturday, 10 am — circular signed by the Principal, posted on the school website.”], [ ], [ ], [ ], [ ]),
    ([“SHOCKING! Famous actor endorses magic herb that cures all fevers in one day!!”], [ ], [ ], [ ], [ ]),
    widths: (1fr, 24mm, 24mm, 24mm, 22mm),
  )
  #v(5pt)
  *Which check caught the most?* #box(width: 24mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) · *Write the rule in your own words:* #ruled-lines(1, lead: 8.4mm)
]
#wordpower(13, "misinformation", [False or edited content that spreads — sometimes by mistake, sometimes on purpose.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[THE THREE CHECKS, APPLIED — A WORKED EXAMPLE]
  v(3pt)
  text(size: 10.2pt, style: "italic")[“Parents: the district is cancelling next Friday's exam! I know someone in the education office. Share with every class group NOW!”]
  v(3pt)
  dtable(("Check", "What the detective found"),
    ([SOURCE], [No name, no office, no notice number — “I know someone” is not a source.]),
    ([EVIDENCE], [No circular, no website, no letterhead to verify anywhere.]),
    ([EMOTION], [Urgency (NOW!), fear of exams, and flattery of parents — pressure before thought.]),
    ([VERDICT], [STOP. Ask the class teacher before forwarding anything.]),
    widths: (24mm, 1fr),
  )
}))

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · WHICH BUTTON IS IT PUSHING?]
  v(3pt)
  dtable(("The message shouts…", "Fear, greed, anger — or none?"),
    ([“Your account will be CLOSED in 24 hours!”], [ ]),
    ([“You have WON a free bicycle — claim today only!”], [ ]),
    ([“They don't want you to know this truth about exams…”], [ ]),
    ([“The library will stay closed on Sunday for repairs.”], [ ]),
    widths: (1fr, 40mm),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Strong emotion is not proof of a lie — but it is the costume most lies prefer. When a message pushes a button, press pause instead.]
}))

// ---------------- 4.3 ----------------
#sec(3, "Who is responsible?")
A homework-help app gives a wrong answer. A student copies it. A teacher marks it right without checking. A company sells the app “100% correct”. When the mistake is discovered, watch the parcel fly: the company points at the users, the student points at the app, the app's makers point at the training data. Machines cannot hold responsibility — only *people* can. So the detective's question is not “who is guilty?” but “*who controlled what?*” — because responsibility follows control.

#task("T7-15", "Who Is Responsible?", mode: "class", mins: "15")[
  The class becomes the review panel. Four roles — *app maker, student, school, app company* — each argue their share of responsibility for the wrong answer that got submitted. Then the class votes.
  #v(4pt)
  #dtable(("Role", "What this role controls", "Their share (shade the bar)", "One action they must take"),
    ([App maker], [ ], box(width: 100%, stroke: 0.6pt + line-soft, inset: 3pt, place(left + horizon, box(width: 24mm, height: 3.2mm, stroke: 0.9pt + teal-mid))), [ ]),
    ([Student], [ ], box(width: 100%, stroke: 0.6pt + line-soft, inset: 3pt, place(left + horizon, box(width: 24mm, height: 3.2mm, stroke: 0.9pt + teal-mid))), [ ]),
    ([School], [ ], box(width: 100%, stroke: 0.6pt + line-soft, inset: 3pt, place(left + horizon, box(width: 24mm, height: 3.2mm, stroke: 0.9pt + teal-mid))), [ ]),
    ([App company], [ ], box(width: 100%, stroke: 0.6pt + line-soft, inset: 3pt, place(left + horizon, box(width: 24mm, height: 3.2mm, stroke: 0.9pt + teal-mid))), [ ]),
    widths: (24mm, 1fr, 42mm, 1fr),
  )
  #v(5pt)
  *After the vote: could any role say “the machine did it, not me”? What did the class decide, and why?* #ruled-lines(2, lead: 8.8mm)
]
#wordpower(14, "accountability", [Being answerable for what a system does — only people can hold it.])

#grid(columns: (1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
  ..range(4).map(i => {
    let roles = ("THE MAKER", "THE USER", "THE SCHOOL", "THE COMPANY")
    let lines = (
      [writes the machine, chooses the training data, tests it before release],
      [decides when and how to use the machine — and when NOT to],
      [sets the rules for what may be used for homework and how],
      [sells it, advertises it, profits from it, must answer for harm],
    )
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8pt, y: 7pt), stack(spacing: 3pt,
      text(font: f-display, fill: teal, weight: 800, size: 9.2pt, tracking: 0.08em, roles.at(i)),
      text(size: 9.7pt, lines.at(i)),
    ))
  })
)
#v(2pt)
#text(size: 9.5pt, fill: ink-soft, style: "italic")[Responsibility follows control: the more a role controls, the more it must answer for. And the machine controls nothing — it only predicts.]

#myth("AI is neutral and objective.")[
  A machine does not take sides the way people argue — but “neutral” is a costume too. Its training data was chosen by people; those choices carry the streets, schools and faces somebody thought to include — and the ones they forgot. A neutral machine over one-sided data is just bias with better manners. The fix is not magic; it is what you proposed in T7-13: wider examples, honest checks, and people who stay answerable.]

// ---------------- 4.4 ----------------
#sec(4, "The fairness toolkit")
You now own three fixes, and they work on any machine, not just the ones in this book. *Widen the examples:* make the training set look more like the whole world it must serve — new schools, new games, new voices, new streets. *Run honest checks:* test the machine on the very groups it was trained without, and publish what you find. *Keep people answerable:* a person — named, reachable, responsible — must stand behind every prediction. None of these needs a computer. All of them need someone who refuses to look away. That someone is you.

#grid(columns: (1fr, 1fr, 1fr), column-gutter: 7pt,
  ..range(3).map(i => {
    let titles = ("WIDEN THE EXAMPLES", "RUN HONEST CHECKS", "KEEP PEOPLE ANSWERABLE")
    let lines = (
      [*Train on everyone.* Before judging a machine, ask: who is inside this data — and who never got in?],
      [*Test on the missing groups.* The true test set includes the people the training set forgot.],
      [*Name the human.* Every AI system needs a person who must answer when it goes wrong.],
    )
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8pt, y: 7pt), stack(spacing: 3pt,
      text(font: f-display, fill: teal, weight: 800, size: 9.2pt, tracking: 0.08em, titles.at(i)),
      text(size: 9.8pt, lines.at(i)),
    ))
  })
)
#v(4pt)
#block(width: 100%, box(width: 100%, fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal-deep, tracking: 0.1em)[MY FAIRNESS PLAN]
  v(3pt)
  text(size: 10.6pt)[*One machine I use could be unfair to:* #ruled-lines(1, lead: 8.4mm)]
  text(size: 10.6pt)[*The group missing from its training data might be:* #ruled-lines(1, lead: 8.4mm)]
  text(size: 10.6pt)[*My fix, using the toolkit:* #ruled-lines(2, lead: 8.4mm)]
}))

#homelink[
  #task("AT HOME", "Three Checks at the Shop", mode: "home", mins: "10")[
    Find one *claim on a packet, poster or advertisement* at home — something that promises a result (“whiter in 3 days!”, “9 out of 10 doctors…”, “extra power!”). Run the three checks with a grown-up:
    v(3pt)
    [*The claim:* #ruled-lines(1, lead: 8.1mm)]
    [*Source — who says so, and do they profit?* #ruled-lines(1, lead: 8.1mm)]
    [*Evidence — what proof is printed?* #ruled-lines(1, lead: 8.1mm)]
    [*Emotion — what is it promising or frightening?* #ruled-lines(1, lead: 8.1mm)]
  ]
]

#selfcheck(
  [I can explain how one-sided training data becomes an unfair machine, with a real example],
  [I can run the three checks — source, evidence, emotion — on a message I receive],
  [I can name what each role controls when an AI system causes harm],
  [I can explain why “the machine did it” can never be the end of the story],
)
#thinkink([If a machine treated someone unfairly, I used to think the fix was… Now I think the fix begins with …], lines: 2)

#note("Case notes — what changed in my thinking?")[
  Before this chapter, if a machine was unfair I would have blamed … Now I would first look at … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 4 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*One-sided training data* builds unfair machines — nobody programmed the unfairness, it walked in with the data.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Three checks before forwarding: *source · evidence · emotion*. Strong feeling is a costume, not proof.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Responsibility follows control* — and the machine controls nothing, so it can never be the final answer.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[The fairness toolkit: *wider examples · honest checks · a named human who answers*.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#block(width: 100%, breakable: false, radius: 5pt, fill: cream, inset: (x: 11pt, y: 7.5pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[BEFORE THE CHECKPOINT — FLIP BACK TO]
  v(2pt)
  text(size: 9.7pt)[the Uniform Suggester cards (for clue 1) · the faked-video card (for clue 2) · the Talent Finder case (for clue 3). Each checkpoint answer should name a page, a card or a person — vague memories score zero in real investigations too.]
})

#chapter-checkpoint(4,
  [A uniform suggestion machine was trained only on monsoon photos. What will it suggest in May — and why is that unfair?],
  [A video says “share before it is deleted!!!” Which of the three checks does it attack first?],
  [Why can a machine never be the *final* answer to “who is responsible?”],
)
#case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue about fairness and responsibility")

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, stroke: 1pt + ink, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[MY FAIRNESS PLEDGE — SIGN IT LIKE A PROFESSIONAL]
  v(4pt)
  text(size: 10.4pt)[
    As an investigator of learning machines, I promise to: ask *who chose the examples* before I trust a result ·
    run the *three checks* before I forward anything · look for *who is missing* from every sample · and remember that
    *responsibility follows control* — so I will name the people, never "the machine", when something goes wrong.
  ]
  v(6pt)
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 10pt,
    { line(length: 85%, stroke: 0.7pt + ink-soft); v(1.5pt); text(size: 8.3pt, fill: ink-soft, weight: 700, tracking: 0.1em)[INVESTIGATOR'S NAME] },
    { line(length: 85%, stroke: 0.7pt + ink-soft); v(1.5pt); text(size: 8.3pt, fill: ink-soft, weight: 700, tracking: 0.1em)[DATE] },
    { line(length: 85%, stroke: 0.7pt + ink-soft); v(1.5pt); text(size: 8.3pt, fill: ink-soft, weight: 700, tracking: 0.1em)[WITNESS (A CLASSMATE)] },
  )
})
