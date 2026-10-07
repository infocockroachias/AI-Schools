#import "template.typ": *
// ============================================================
//  CHAPTER 1 — MACHINES THAT SEEM SMART   (7 pp · tasks 01–05)
// ============================================================
#chapter-opener(1, "Machines That Seem Smart", "When is a machine actually learning — and when is it only following steps?",
  outcomes: ("6.U1", "6.U2", "6.L2", "6.W1", "6.T1"), strands: ("U", "W"),
  link: "Links: Maths — patterns · English — exact instructions")

// ---------------- 1.1 ----------------
#sec(1, "Smart machines are everywhere")
Every day, machines seem to do clever things. A video app picks the next clip you actually want to watch. A voice assistant answers when you ask about the weather. A map app finds a faster road when traffic jams up. It is easy to think: *the machine is smart, like a person.* But a good detective looks closer before deciding. Under every clever trick there are only two possible explanations: either somebody wrote *exact steps* for the machine to follow, or the machine *learned a pattern from examples*. On this case, you will learn to tell the two apart — and that one skill will change how you see every screen, speaker and gadget around you.

#task("T6-01", "Human Robot", mode: "pair", mins: "10", win: true)[
  One of you is the *Robot*, the other is the *Engineer*. The Engineer writes exact steps for the Robot to make a paper plane, or to walk from the door to the chalkboard. Then swap. The Robot must follow the steps *literally* — if the step says “fold the paper”, fold it any way you like! When both of you have played both roles, write here:
  #v(2pt)
  #ruled-lines(2, lead: 8.2mm)
  #v(4pt)
  *One step my Robot followed too literally:* #ruled-lines(1, lead: 8.2mm)
  *What this taught me about giving instructions to machines:* #ruled-lines(1, lead: 8.2mm)
  *Our funniest too-literal moment:* #ruled-lines(2, lead: 8.2mm)
]
#wordpower(1, "algorithm", [An exact list of steps that tells a machine how to do a task, one step at a time.])

#note("Detective's note")[The Human Robot game is why programmers and AI designers must be *exact*. A machine never guesses what you *meant* — it only knows what you *said*. When a machine does something surprising, ask: was the algorithm wrong, or was it the data?]

// ---------------- 1.2 ----------------
#sec(2, "Rule-followers: same steps, every time")
A washing machine washes exactly the same way today as it did last month. A lift goes up and down by fixed rules. A calculator will never get better at adding — it already follows its algorithm perfectly. Machines like these do *automation*: work done by fixed steps, repeated the same way every time. They are useful and fast, but notice something important: they never *improve*. Nobody has to teach them; nobody can. They are rule-followers, and rule-followers are not the same as learners.

#task("T6-02", "Rule or Learner?", mode: "pair", mins: "10")[
  Sort these eight machines. For each one, write *R* if you think it mostly follows fixed rules, *L* if you think it learns from examples, or *?* if you are honestly not sure. Then write one clue that helped you decide.
  #v(4pt)
  #dtable(("Machine", "R / L / ?", "One clue that helped you"),
    (["Washing machine"], [ ], [ ]),
    (["Lift"], [ ], [ ]),
    (["Video app that suggests clips"], [ ], [ ]),
    (["Spam filter in email"], [ ], [ ]),
    (["Calculator"], [ ], [ ]),
    (["Traffic signal"], [ ], [ ]),
    (["Voice assistant"], [ ], [ ]),
    (["Map app that reroutes you"], [ ], [ ]),
    widths: (52mm, 22mm, 1fr),
  )
  #v(5pt)
  *The machine I argued about most with my partner:* #ruled-lines(1, lead: 8mm)
]
#wordpower(2, "automation", [Work done by a machine that repeats fixed steps in the same way every time.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (x: 10pt, y: 8pt), {
  text(size: 8.4pt, weight: 800, fill: teal, tracking: 0.1em)[AT A GLANCE · RULE-FOLLOWER VS LEARNER]
  v(3pt)
  dtable(("Ask yourself…", "Rule-follower", "Learner"),
    ([Where do its steps come from?], [A person wrote the algorithm.], [It found the pattern in training examples.]),
    ([What happens with a brand-new case?], [It does the same steps anyway.], [It makes a prediction from what it learned.]),
    ([Can it get better at its job?], [Never — until a person changes the steps.], [Yes — more examples can improve it.]),
    ([One example from my day], [#ruled-lines(1, lead: 6.8mm)], [#ruled-lines(1, lead: 6.8mm)]),
    widths: (44mm, 1fr, 1fr),
  )
}))
#myth("AI is a robot.")[
  AI is a *program* — a learner made of data and patterns. It can live inside a phone, a website, a car or a power plant, and it has no body at all. A robot is one place a program can be kept; plenty of robots run with no AI, and plenty of AI runs with no robot.]
// ---------------- 1.3 ----------------
#sec(3, "Learners: machines that improve from examples")
So how does a video app get good at suggesting clips you like? Nobody wrote a rule for “show Aarav cricket clips”. Instead, the app *learned from examples* — millions of them. It noticed which clips people similar to you watched, and it found *patterns* in that. This is the big secret of this whole handout: a learning machine is not given the answer; it is given *examples*, and it works the pattern out by itself.

Here is the strange part: the people who build AI do not write the final rules either. *They choose the examples and the data*, and the machine does the pattern-finding. That is why the examples matter so much — feed a learner one-sided examples, and it learns a one-sided view of the world, exactly like the alien in your next mission.

#task("T6-03", "Teach the Alien", mode: "group", mins: "15")[
  In your group of four, one person is the *Alien* — smart, but knowing nothing about Earth. The other three must teach the Alien the idea of *mango* using ONLY examples: point at real objects, drawings or the cards your teacher gives you, and say “mango” or “not mango”. No describing words allowed — aliens don't speak Human! When the Alien starts guessing correctly, play the twist round: show *only green mangoes*. Then answer:
  #v(2pt)
  *What wrong idea did our examples put in the Alien's head?* #ruled-lines(2, lead: 8mm)
  *How could we choose better examples next time?* #ruled-lines(1, lead: 8mm)
]
#wordpower(3, "artificial intelligence (AI)", [Technology that lets machines do tasks that seem to need human intelligence.])
#wordpower(4, "training examples", [The examples we show a machine so that it can find patterns by itself.])
#note("Detective's note")[Machines *predict, match and estimate* — those are the verbs of AI. People *design* the system, *choose the data* and are *responsible* for what it does. Keep those verbs straight and you will never be fooled by a “smart machine” story.]

// ---------------- 1.4 ----------------
#sec(4, "Humans vs machines — the fair contest")
So is a machine ever really smart? Try a fair contest. Machines are dazzling at some jobs: counting a million numbers without a mistake, noticing a pattern in a million examples, working all night without getting bored. People are dazzling at others: understanding a joke, knowing that your friend is sad from one look, deciding what is *fair*, asking a question nobody has asked before. The contest has no overall winner — and that is exactly why people and machines make a good team, as long as the *people* stay in charge of the judging.

#task("T6-04", "Better At / Worse At", mode: "alone", mins: "10")[
  Fill the table, then your class votes for the most surprising idea.
  #v(4pt)
  #dtable(("Two things PEOPLE do better — and why", "Two things MACHINES do better — and why"),
    ([#ruled-lines(3, lead: 8.2mm)], [#ruled-lines(3, lead: 8.2mm)]),
    widths: (1fr, 1fr),
  )
  #v(5pt)
  *The class's most surprising idea was…* #ruled-lines(1, lead: 8mm)
]

// ---------------- 1.5 ----------------
#sec(5, "Three ways machines learn — three little stories")
Machines learn in more than one way, and each way has a human story you already know. Watch for all three in this book.

#grid(columns: (1fr, 1fr, 1fr), column-gutter: 6pt,
  ..range(3).map(i => {
    let titles = ("Learning with labels", "Grouping without labels", "Trial and reward")
    let stories = (
      [*Show it, tell it.* Like learning fruit names with flashcards: your teacher shows a card and says “mango”. The machine gets examples *with* answers attached — “this photo is a cat”, “this one is not”. It learns to match new photos to the labels.],
      [*Sort it your way.* Like tidying a mixed toy box with no instructions: you make your own piles — colours here, shapes there. The machine gets examples with *no* answers and must find its own groups, like sorting customers or animals it has never been told about.],
      [*Try it, score it.* Like learning to ride a bicycle: wobble, fall, adjust, try again — and a happy feeling keeps you going. The machine tries actions, gets points for good ones, and slowly learns the moves that earn the most reward.],
    )
    box(fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (x: 8.5pt, y: 8pt), stack(spacing: 3.5pt,
      text(font: f-display, fill: teal, weight: 800, size: 8.6pt, tracking: 0.1em, "STORY " + str(i + 1)),
      text(weight: 800, size: 10.2pt, fill: teal, font: f-display, titles.at(i)),
      text(size: 9.2pt, stories.at(i)),
    ))
  })
)
#v(2pt)
#text(size: 9pt, fill: ink-soft, style: "italic")[Real AI systems often mix all three. Class 7 will show you what each way is called — for now, the stories are enough.]
#v(3pt)
#block(width: 100%, box(width: 100%, fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (x: 10pt, y: 8pt), {
  text(size: 8.4pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · WHICH STORY IS IT?]
  v(3pt)
  dtable(("The learner…", "Story 1, 2 or 3?"),
    ([Leena learns dance by copying her teacher's moves, with a clap for each correct step.], [ ]),
    ([Irfan tidies a mixed pencil box by making his own piles — sharp ones here, colours there.], [ ]),
    ([A baby learns “dog” because everyone points and says “dog!” at every dog.], [ ]),
    ([A cricketer improves by trying shots, missing, adjusting — and loving the boundary!], [ ]),
    widths: (1fr, 34mm),
  )
}))

#selfcheck(
  [I can point to a *rule-follower* and a *learner* in my own home, and say which is which],
  [I can explain “learning from examples” in my own words, without the book's help],
  [I can name one thing people do better than machines — and say *why*],
  [I can retell the three learning stories and match a new example to the right story],
)
#thinkink([One machine I use seemed really smart. Now I think it is a … (rule-follower / learner), because …], lines: 2)

// ---------------- home link ----------------
#homelink[
  #task("T6-05", "AI Detective at Home", mode: "home", mins: "15")[
    Walk through your *morning routine* like a detective. At each moment below, tick whether a machine with possible AI *may* hide there, and tick whether you think it *learns* from examples or just follows rules. Ask a grown-up if you are stuck — explaining your guess is part of the mission.
    #v(4pt)
    #dtable(("Moment in the morning", "Possible AI? (✓)", "Learns or follows rules?", "What data might it use?"),
      (["Waking me up (alarm / phone)"], [ ], [ ], [ ]),
      (["Brushing (electric brush / tap)"], [ ], [ ], [ ]),
      (["Breakfast (microwave / kettle)"], [ ], [ ], [ ]),
      (["Checking the day (weather app)"], [ ], [ ], [ ]),
      (["Journey to school (bus / car / map)"], [ ], [ ], [ ]),
      (["Buying something (shop / UPI / ATM)"], [ ], [ ], [ ]),
      widths: (44mm, 24mm, 40mm, 1fr),
    )
    #v(5pt)
    *My biggest surprise on this case:* #ruled-lines(2, lead: 8mm)
  ]
]

// ---------------- chapter recap ----------------
#note("Case notes — what changed in my thinking?")[
  Before this chapter I thought “smart machine” meant one thing. Now I know there are *two kinds*: #ruled-lines(1, lead: 7.6mm) #ruled-lines(1, lead: 7.6mm)
]
#myth("AI is alive — it has feelings.")[
  A learner finds patterns in numbers; it does not *feel* anything. When a chatbot writes “I am happy to help!”, that sentence was predicted from patterns in text people wrote. The *people* who design, choose data and take responsibility have the feelings — and the responsibility.]
