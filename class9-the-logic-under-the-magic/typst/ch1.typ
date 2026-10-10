#import "template.typ": *
// ============================================================
//  CHAPTER 1 — REFLECT, SCOPE, PLAN   (8 pp · tasks 01–04)
// ============================================================
#chapter-opener(1, "Reflect, Scope, Plan", "Why does AI work — and when does it fail?",
  outcomes: ("9.U1", "9.L1", "9.R1"), strands: ("U", "L"),
  summary: [The engine room opens. Before any mathematics, you need the map: what kind of system are we even talking about? This chapter separates rule-based machines from learning-based ones, places AI, machine learning and deep learning inside each other like nested boxes, and then rebuilds your planning toolkit at analyst level — the 4Ws canvas, stakeholder maps, and a system map that names every data feature a machine will actually see. Every AI failure you will ever study begins with a skip in one of these steps.],
  missions: "T9-01 – T9-04",
  link: "Links: Maths — data & coordinates · Social Science — stakeholders · English — precise definitions",
  extras: opener-extras(
    words: ("deep learning", "rule-based system", "learning-based system", "problem scoping", "system map"),
    warmup: [A chatbot writes you a poem about the monsoon. Write your honest one-line answer: did it LOOK UP that poem, or something else happened? Keep your answer — you will test it in Chapter 4.],
    need: ("pencil", "ruler", "sticky notes", "your Class 8 proposal for re-reading"),
  ))

// ---------------- 1.1 ----------------
#sec(1, "Three nested boxes: AI, ML, DL")
Time to make the vocabulary honest. *Artificial intelligence* is the whole field: any machine doing things we used to need human judgement for — including old-fashioned rule-followers. *Machine learning* sits inside it: systems that improve from examples instead of from hand-written rules. *Deep learning* sits inside machine learning: learning systems built from many layered pieces, powerful enough to find patterns in raw speech, pixels and text — and hungry enough to need enormous data. So every deep-learning system is machine learning, and every machine-learning system is AI — but plenty of AI is neither. The lift in your building is AI by the widest definition; it will never learn anything.

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[AT A GLANCE · THE NESTED BOXES — AND THE GREAT DIVIDE]
  v(3pt)
  dtable(("The system", "Inside which box?", "Learns from examples?", "One honest limit"),
    ([a lift with floor buttons], [AI only], [never — every rule was typed], [it will never improve]),
    ([a spam filter], [ML (inside AI)], [yes — from labelled mail], [new tricks fool it]),
    ([a voice assistant], [DL (inside ML)], [yes — from oceans of speech], [accents it rarely heard]),
    ([a chatbot that writes essays], [DL (inside ML)], [yes — from oceans of text], [it predicts, it never verifies]),
    widths: (44mm, 34mm, 1fr, 1fr),
  )
  v(3pt)
  text(size: 9.5pt, fill: ink-soft, style: "italic")[The great divide cuts ACROSS the boxes: *rule-based* (a person wrote every step) versus *learning-based* (the system found the pattern in examples). Ask it of every machine you meet this year.]
}))

#task("T9-01", "4Ws Problem Canvas", mode: "group", mins: "20")[Part A of the cycle you will run all year: *scoping*. Problem scoping is the craft of pinning down exactly which problem to solve, for whom and where — before any solution is discussed. The canvas has four quadrants. Fill it for a real problem in your school or neighbourhood.]
#v(2pt)
#block(width: 100%, radius: 5pt, stroke: 1pt + ink, fill: white, inset: (x: 11pt, y: 9pt), {
  grid(columns: (1fr, 1fr), column-gutter: 8pt, row-gutter: 8pt,
    box(fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(font: f-display, size: 10.2pt, weight: 800, fill: teal)[W1 · WHO has the problem?]
      text(size: 9.3pt, fill: ink-soft, style: "italic")[The people who feel it daily — name them specifically]
      v(2pt)
      ruled-lines(3, lead: 7.8mm)
    }),
    box(fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(font: f-display, size: 10.2pt, weight: 800, fill: teal)[W2 · WHAT is the problem?]
      text(size: 9.3pt, fill: ink-soft, style: "italic")[One sentence — an outcome to change, not a solution]
      v(2pt)
      ruled-lines(3, lead: 7.8mm)
    }),
    box(fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(font: f-display, size: 10.2pt, weight: 800, fill: teal)[W3 · WHERE does it appear?]
      text(size: 9.3pt, fill: ink-soft, style: "italic")[The exact places, times, seasons]
      v(2pt)
      ruled-lines(3, lead: 7.8mm)
    }),
    box(fill: amber-soft, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(font: f-display, size: 10.2pt, weight: 800, fill: amber-deep)[W4 · WHY is it worth solving?]
      text(size: 9.3pt, fill: ink-soft, style: "italic")[The cost of doing nothing — to each group]
      v(2pt)
      ruled-lines(3, lead: 7.8mm)
    }),
  )
  v(5pt)
  text(size: 10.4pt)[*Our problem statement from the four Ws (one sentence):*]
  ruled-lines(1, lead: 8.6mm)
  text(size: 10.4pt)[*The trap we nearly fell into (a solution we wanted to discuss before scoping):*]
  ruled-lines(1, lead: 8.6mm)
})
#wordpower(1, "problem scoping", [Pinning down exactly which problem to solve, for whom, and where.])

// ---------------- 1.2 ----------------
#sec(2, "Stakeholders: everyone the machine touches")
A scoped problem names its *stakeholders* — every person or group who affects the system or is affected by it, whether they ever open the app or not. The Class 8 court taught you to find them; this year you *map* them, because their interests usually disagree, and the disagreements are exactly where ethical failures start. A stakeholder map puts each group in one of four rings: *decides* (controls the system), *operates* (runs it daily), *serves* (is supposed to benefit), and *bears* (carries the risk or the harm). Most failed AI systems share one symptom: the "bears" ring was empty on the day the plan was signed.

#task("T9-02", "Stakeholder Map", mode: "pair", mins: "15")[
  Scenario: the district plans an *exam-result predictor* that flags Class 9 students "at risk of failing" three months early, so schools can offer extra coaching. Map every stakeholder into the four rings — at least two per ring, and put at least one group that the planners might forget:
  #v(4pt)
  #dtable(("Ring", "Stakeholder", "What they want", "What they risk"),
    ([DECIDES], [ ], [ ], [ ]),
    ([OPERATES], [ ], [ ], [ ]),
    ([SERVES], [ ], [ ], [ ]),
    ([BEARS], [ ], [ ], [ ]),
    ([BEARS — the forgotten one], [ ], [ ], [ ]),
    widths: (36mm, 1fr, 1fr, 1fr),
  )
  #v(5pt)
  *The disagreement test:* pick the two stakeholders whose wants clash hardest. State both sides in one line each: #ruled-lines(2, lead: 8.6mm)
]
#wordpower(2, "stakeholder", [Any person or group affected by a system, helpful or harmful.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · WHO IS IN WHICH RING?]
  v(3pt)
  text(size: 10.1pt)[Write D (decides), O (operates), S (serves) or B (bears) — some fit more than one ring; write both and say why:]
  v(3pt)
  dtable(("For the crop-disease scanner run by a state agriculture office…", "Ring(s)"),
    ([the field officers who photograph suspicious leaves], [ ]),
    ([the smallholders whose crop the app judges], [ ]),
    ([the company that owns the model and its data], [ ]),
    ([the neighbouring farms whose fields were never photographed], [ ]),
    ([the agricultural university that validated the labels], [ ]),
    widths: (1fr, 30mm),
  )
}))

// ---------------- 1.3 ----------------
#sec(3, "The system map: name every feature the machine sees")
Between a scoped problem and a working model stands the question builders answer with a diagram: *what will the machine actually look at?* A *system map* lists the inputs — called *features* (you met features in Class 7) — that flow into the machine, the prediction that flows out, and the human decision that closes the loop. The skill is in the *naming*: "student information" is not a feature; "attendance percentage last term", "previous score", "homework submission rate" are. Vague features produce vague machines — and nobody can audit what nobody can name.

#task("T9-03", "System Map of Data Features", mode: "group", mins: "20")[
  Return to the exam-result predictor. Draw its system map as a table: at least *five* features with their units, the prediction it outputs, and the human who must make the final call. Then attack your own map:
  #v(4pt)
  #dtable(("Feature (precise name + unit)", "Where would this data come from?", "Who might this feature unfairly miss or punish?"),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    ([ ], [ ], [ ]),
    widths: (1fr, 1fr, 1fr),
  )
  #v(4pt)
  *Prediction output:* #ruled-lines(1, lead: 8.4mm)
  *The human who must decide before any action:* #ruled-lines(1, lead: 8.4mm)
  *The third column is the audit. Which ONE feature would you delete, and why?* #ruled-lines(2, lead: 8.6mm)
]
#wordpower(3, "system map", [A diagram naming every feature that flows in, the output, and the human decision.])

#myth("More features is always better.")[
  Every extra feature feels like extra wisdom, but features bring baggage: a "parent's occupation" column may smuggle caste and class into a machine that will quietly repeat them; a "number of tuition hours" feature may punish every family that cannot afford them. Each feature must EARN its place twice — first by genuinely predicting the outcome, then by surviving the fairness audit ("who does this column punish?"). Five honest features beat forty borrowed ones. Analysts cut; hoarders collect.]

// ---------------- 1.4 ----------------
#sec(4, "Rule vs learn: the showdown")
Before the mathematics, settle the deepest question in the field — *when do you even need machine learning?* Some problems are fully solved by rules a person can write: "if temperature above 38°, flag fever" needs no examples. Others — recognising a face, judging an essay, predicting a fare through traffic — drown the rule-writer in exceptions. The showdown mission makes you fight one problem both ways, so you feel the exact point where rules run out and learning begins.

#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[WHEN WOULD RULES LOSE? — 60 SECONDS OF PREDICTION]
  v(2pt)
  text(size: 10.1pt)[Name one task in your school that rules could NEVER finish — and say in one line what the examples would have to teach instead:]
  ruled-lines(2, lead: 8.2mm)
  v(3pt)
  text(size: 9.7pt)[*Two machines on my street:* one that should stay rule-based forever, and one that should learn — with one line of defence each:]
  ruled-lines(2, lead: 8.2mm)
})

#task("T9-04", "Rule vs Learn Showdown", mode: "pair", mins: "15")[
  The task: *decide whether a message to the class group is "urgent" or "not urgent".* Fight it both ways.
  #v(4pt)
  #grid(columns: (1fr, 1fr), column-gutter: 8pt,
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[ROUND 1 — WRITE THE RULES]
      v(4pt)
      text(size: 10.2pt)[Write three if-then rules that decide urgent / not urgent. Be precise enough that a stranger could apply them:]
      v(2pt)
      ruled-lines(3, lead: 8.4mm)
      v(3pt)
      text(size: 10.2pt)[*The message that breaks my best rule:*]
      ruled-lines(2, lead: 8.4mm)
    }),
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[ROUND 2 — LEARN FROM EXAMPLES]
      v(4pt)
      text(size: 10.2pt)[Now collect 10 labelled messages (real or invented): 5 urgent, 5 not. List only their FEATURES (length, punctuation, capitals, sender, time sent) — and say what pattern your 10 examples teach:]
      v(2pt)
      ruled-lines(3, lead: 8.4mm)
      v(3pt)
      text(size: 10.2pt)[*The case that still feels unfair either way:*]
      ruled-lines(2, lead: 8.4mm)
    }),
  )
  #v(6pt)
  *The verdict:* for THIS task, which approach would you ship — and what would have to be true about the world for the other one to win? #ruled-lines(2, lead: 8.6mm)
]
#wordpower(4, "rule-based system", [A program that follows if-then rules written entirely by people.])
#wordpower(5, "learning-based system", [A program that finds its own pattern inside examples.])

#selfcheck(
  [I can place AI, ML and DL inside each other — and place real products in the right box],
  [I can run a 4Ws canvas and produce a one-sentence problem statement],
  [I can map stakeholders into decides / operates / serves / bears — and find the forgotten ring],
  [I can name precise features for a system map and say who each feature might punish],
  [I can fight a task both by rules and by examples, and defend which one I would ship],
)
#thinkink([A system I know that runs on rules nobody questions. If we rebuilt it as a learning system, the first thing that would change is …, and the risk would be …], lines: 2)

#note("Case notes — what changed in my thinking?")[
  Before this chapter I believed all AI was one kind of clever. Now I can name the great divide — … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 1 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*AI ⊃ ML ⊃ DL* — nested boxes; the great divide is *rule-based vs learning-based*, and it cuts across all three.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Problem scoping* is the 4Ws canvas — solutions discussed before scoping are guesses in disguise.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Stakeholder rings: *decides, operates, serves, bears* — an empty bears-ring is how harm gets planned.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[A *system map* names precise features — and every feature must survive the fairness audit.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#chapter-checkpoint(1,
  [A voice assistant and a lift are both "AI" in the widest sense. Name the ONE question that separates them — and give each machine's answer.],
  [In the exam-predictor case, which ring did the "forgotten" stakeholder belong in, and what specifically did they risk?],
  [Why is "student information" not a feature — and what makes "attendance percentage last term" one?],
)
#case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue about scoping and stakeholders")
