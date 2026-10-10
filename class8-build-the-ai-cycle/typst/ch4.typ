#import "template.typ": *
// ============================================================
//  CHAPTER 4 — ETHICS & RESPONSIBLE AI   (8 pp · tasks 11–14)
// ============================================================
#chapter-opener(4, "Ethics & Responsible AI", "Why does a machine that sounds so right sometimes get it so wrong — and who answers for that?",
  outcomes: ("8.W2", "8.R2"), strands: ("R", "W"),
  summary: [Meet the smoothest talker in the AI city: the text generator. You will play its game yourself — predicting next words from patterns — and discover why the very trick that makes it fluent also makes it *invent*. Then you hunt hallucinations in a real-looking AI paragraph, take a scenario to court as judge, lawyer and witness, and write your own AI-use pledge. This chapter has no magic answers; it has something better — a routine you can run on every confident machine you will ever meet.],
  missions: "T8-11 – T8-14",
  link: "Links: English — language patterns & argument · Social Science — privacy & public impact · Maths — likelihood",
  extras: opener-extras(
    words: ("text generator", "hallucination", "misinformation", "responsible use"),
    warmup: [Finish this sentence the way a friend probably would: "The early bird catches the …". Now finish: "The early crow catches the …". Which one were you surer about — and where did that knowledge come from?],
    need: ("pencil", "the printed paragraph in T8-12", "sticky notes for court roles", "an honest heart"),
  ))

// ---------------- 4.1 ----------------
#sec(1, "The next-word machine: how text generators actually work")
Forget magic. A text generator does one thing, enormously well: it reads the words so far and predicts a *likely next word* — based on patterns in a mountain of human writing. It is autocomplete that grew up. The catch is built into the trick itself: the machine knows which words *usually follow*, not which words are *true*. "The early bird catches the worm" flows because millions of people wrote it; a machine completing "The early crow catches the…" will pick whatever sounds plausible. Usually it sounds right. Sometimes it is completely invented — with perfect confidence either way, because confidence and truth live in different rooms.

#task("T8-11", "Next-Word Game", mode: "class", mins: "15")[
  You are the machine. Your teacher reads each sentence aloud up to the blank; your class votes on the most likely next word. Then your teacher reveals the counts from a 500-page book of local writing (invented for this game). Fill the table as you play:
  #v(4pt)
  #dtable(("Sentence up to the blank", "Class's first guess", "Runner-up guess", "Revealed: which word won, and by how much"),
    (["The monsoon arrived early, bringing heavy …"], [ ], [ ], [ ]),
    (["She opened the lunch box and found her favourite …"], [ ], [ ], [ ]),
    (["The cricket match was delayed because of …"], [ ], [ ], [ ]),
    (["The old elephant walked slowly toward the …"], [ ], [ ], [ ]),
    widths: (1fr, 30mm, 30mm, 1fr),
  )
  #v(5pt)
  *Now the deep question:* when the machine picked a word nobody in the room expected, was it *wrong*? What was it actually optimising for? #ruled-lines(2, lead: 8.6mm)
  *A classmate asks: "if it's just picking likely words, why do its essays sound so intelligent?" Answer in one line:* #ruled-lines(1, lead: 8.6mm)
]
#wordpower(13, "text generator", [A machine that writes by predicting the most likely next words.])

#note("Detective's note")[Here is why the machine *sounds* smart: likely words, arranged by likely patterns, produce paragraphs shaped exactly like the ones people write. It is a brilliant imitation of the *shape* of knowledge. But shape is not truth. A hallucinated biography of a fake scientist has perfect grammar, a plausible structure and a confident tone — all borrowed from real writing about real scientists. That is why your eyes and your verification routine are still the most important parts of the system.]

// ---------------- 4.2 ----------------
#sec(2, "Hallucination Hunt: verify before you trust")
When a text generator states something false as if it were fact, builders call it a *hallucination* — and it is not a bug that will be patched away next month; it is the direct result of predicting likely words instead of checking facts. So the responsible user carries a routine, not a hope. The Class 6 habit — *check before believing* — now grows up into three moves: *trace the claim* (is there a real source?), *test the number* (do two sources agree?), and *smell the story* (is it suspiciously exactly what I wanted to hear?).

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[SAME SHAPE, DIFFERENT TRUTH — A PRE-HUNT DRILL]
  v(3pt)
  text(size: 10.1pt)[Both sentences below are grammatical, confident and plausible. Only one survives a fact-check. Mark which — and name the exact words that made the other one suspicious:]
  v(3pt)
  dtable(("The sentence", "V (verifiable) or S (suspect)?", "The words that gave it away"),
    ([“The Nagpur district library opens at 8 am on weekdays.”], [ ], [ ]),
    ([“Most people agree the town's founder was a poet-king in 1238.”], [ ], [ ]),
    widths: (1fr, 32mm, 1fr),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Watch the give-away words: *most people agree*, *everyone knows*, *it is said that* — confidence borrowed from a crowd nobody can name.]
}))

#task("T8-12", "Hallucination Hunt", mode: "group", mins: "15")[
  Below is a paragraph a chatbot produced when a student asked about their town. Hunt it: mark each claim V (verifiable and checks out), F (false — contradicted by the fact box), or U (unverifiable — no way to check from here). Then write the chatbot a revision order.
  #v(4pt)
  #grid(columns: (1fr, 1fr), column-gutter: 8pt,
    box(fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[WHAT THE CHATBOT WROTE]
      v(4pt)
      text(size: 10.2pt)[
        "Sunapur was founded in 1847 by the poet R. Krishnamurthy, who also invented the sunflower oil press used across the district today. The town's famous three-day Mango Festival, started in 1952, attracts over 5 lakh visitors every year. The Government Higher Primary School, established 1961, was the first school in the state to teach computer science. The town bus route 14 runs every ten minutes from the railway station to the fort."
      ]
      v(4pt)
      dtable(("Claim", "V / F / U"),
        ([Founded in 1847 by R. Krishnamurthy], [ ]),
        ([He invented the sunflower oil press], [ ]),
        ([Mango Festival began 1952, 5 lakh visitors], [ ]),
        ([School was FIRST in the state to teach computing], [ ]),
        ([Bus route 14 every ten minutes to the fort], [ ]),
        widths: (1fr, 26mm),
      )
    }),
    box(fill: white, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[THE FACT BOX (from the town library)]
      v(4pt)
      text(size: 10.1pt)[
        · Sunapur was founded in *1884*; its founder was a merchant, not a poet. · The oil press story is *unknown to any local record*. · The Mango Festival began in *1972*; visitor numbers are *not published anywhere*. · The school dates from 1961 — true — but the first state school to teach computing was in another district. · Route 14 runs *hourly*, and the town has no fort.
      ]
      v(4pt)
      text(size: 10.2pt)[*Notice:* every invented claim was *shaped* like a true one — a date, a founder, a festival. The machine matched the pattern, not the facts.]
    }),
  )
  #v(5pt)
  *My revision order to the chatbot (which claims to fix, and what evidence I demand):* #ruled-lines(2, lead: 8.6mm)
]
#wordpower(14, "hallucination", [When a text generator states something false as if it were fact.])
#wordpower(15, "misinformation", [False content that spreads — by mistake or on purpose.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · THE THREE-MOVE ROUTINE]
  v(3pt)
  text(size: 10.1pt)[Name the move: T (trace the claim), N (test the number) or S (smell the story):]
  v(3pt)
  dtable(("What the responsible user does…", "Which move?"),
    ([Searches for a second, independent source that says the same thing.], [ ]),
    ([Asks: "who gains if I believe this instantly?"], [ ]),
    ([Opens the original article the chatbot *claims* to summarise.], [ ]),
    ([Checks whether "92% of doctors agree" names WHO counted and HOW many.], [ ]),
    ([Feels a thrill of confirmation — and slows down on purpose.], [ ]),
    widths: (1fr, 26mm),
  )
}))

#myth("If it is trained, it is true.")[
  Trained means the machine found patterns in its examples — nothing more. The Plant Doctor was trained and still failed river-farm tomatoes; text generators are trained on human writing and still invent facts, because their job was never truth-finding, it was pattern-continuing. Training makes a machine *consistent* with its examples. Only *testing against the world* — hidden test sets for classifiers, source-checking for text — makes it trustworthy. Whenever you hear "our AI is trained on millions of examples", respond like a builder: *trained, yes — but tested how, and on whom?*]

// ---------------- 4.3 ----------------
#sec(3, "The Responsible-Use Court: decisions with consequences")
Technology choices are people choices. A school, a company or a government decides *what* a machine may do, *to whom*, and *who answers when it fails*. These decisions deserve the same seriousness as any other — evidence, arguments, and a verdict someone signs. So: court is now in session.

#task("T8-13", "Responsible-Use Court", mode: "class", mins: "25")[
  *The case:* Sunapur school installed a "focus camera" in Class 8-B that watches faces and flags students who "look distracted" to the teacher every 10 minutes. The vendor says it raises results. Two students say it feels like being suspected all day. One parent says her son's medication makes him look drowsy — the machine flags him constantly.
  #v(3pt)
  Assign roles: one *Judge*, two *Defence* lawyers (for the camera), two *Prosecution* lawyers (against), two *Witnesses* (the parent; a Class 8-B student), and the rest are the *Jury*. Each side gets 3 minutes; witnesses 1 minute each. Then everyone fills the verdict sheet:
  #v(4pt)
  #dtable(("Court question", "The defence's best point", "The prosecution's best point"),
    ([Does the machine measure what "focus" really is?], [ ], [ ]),
    ([Who is harmed if it is wrong — and how?], [ ], [ ]),
    ([Was consent taken from the people watched?], [ ], [ ]),
    ([Is there a less invasive way to the same goal?], [ ], [ ]),
    widths: (1fr, 1fr, 1fr),
  )
  #v(4pt)
  *THE JURY'S VERDICT (pick one and give the reason):* keep the camera · keep with changes (name them) · remove it.
  #ruled-lines(2, lead: 8.6mm)
]
#wordpower(16, "responsible use", [Choosing and using AI tools so people are helped, respected and safe.])

// ---------------- 4.4 ----------------
#sec(4, "My AI-Use Pledge")
Court cases end with judgements; builder stories end with promises. A pledge is not decoration — it is the checklist you write *before* the difficult moment arrives, when a chatbot offers to write your essay or a group-chat spreads an exciting rumination. Copy your class's best ideas into the box, sign it, and keep the page where you will meet it again at the end of the book.

#task("T8-14", "My AI-Use Pledge", mode: "alone", mins: "10")[
  Complete each clause honestly — these are YOUR rules, not the teacher's:
  #v(4pt)
  #block(width: 100%, radius: 5pt, fill: cream, stroke: 1pt + ink, inset: (x: 12pt, y: 9pt), {
    text(size: 10.5pt)[
      *I, the undersigned investigator, pledge that…*
      1. Before I believe or forward any AI-written or AI-edited content, I will #ruled-lines(1, lead: 8.2mm)
      2. When a text generator helps me with schoolwork, I will #ruled-lines(1, lead: 8.2mm)
      3. When I am tempted to feed personal information — mine or anyone's — into an AI tool, I will #ruled-lines(1, lead: 8.2mm)
      4. When an AI tool makes a decision about a person, I will ask the two court questions: #ruled-lines(1, lead: 8.2mm)
      5. If a machine's output hurts someone, I will hold responsible the … (circle one: machine / its user / its maker / whoever had control) — *because* #ruled-lines(1, lead: 8.2mm)
      #v(6pt)
      *Signature:* #box(width: 52mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) #h(8pt) *Date:* #box(width: 24mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))
    ]
  })
]

#selfcheck(
  [I can explain in two sentences how a text generator writes — and why it can invent],
  [I can run the three-move routine — trace, test, smell — on a suspicious claim],
  [I can argue both sides of a responsible-use case and sign a reasoned verdict],
  [I can name what my own pledge demands of me before the difficult moment arrives],
)
#thinkink([A chatbot once confidently told me something that turned out to be wrong (or would have, if I had believed it). Now I understand why that happened: …], lines: 2)

#homelink[
  #task("AT HOME", "Family Fact Patrol", mode: "home", mins: "15")[
    With a grown-up, find one forwarded message or AI-looking summary in the family phone (do not open links). Run the routine together: *trace* — where did it really come from? *test* — do two trusted sources agree? *smell* — does it push an emotion before evidence? #v(3pt)
    *The claim we examined:* #ruled-lines(1, lead: 8.1mm)
    *What the three moves found:* #ruled-lines(2, lead: 8.1mm)
    *What we will do differently before forwarding next time:* #ruled-lines(1, lead: 8.1mm)
  ]
]

#note("Case notes — what changed in my thinking?")[
  Before this chapter I believed a confident, fluent answer was usually a correct answer. Now I know fluency and truth are built differently, because … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 4 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[A text generator *predicts likely words* — likely is not the same as true.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Hallucinations* are built from the same fluency as facts — verify with trace, test, smell.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Responsible use is decided by *people* — in courtrooms, staffrooms and pledges, with reasons.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Responsibility follows *control*: machines control nothing, so people answer — makers, users, deployers.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: (paint: teal-mid, thickness: 0.9pt, dash: "dashed"), inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: teal-mid, weight: 800, tracking: 0.13em)[MY COURT RECORD — THE VERDICT I SIGNED]
  v(2pt)
  text(size: 9.8pt)[Case: the focus camera. I argued for the side of … #box(width: 38mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) · my verdict: #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft)) · one argument that changed my mind mid-debate:]
  ruled-lines(1, lead: 8.2mm)
})

#chapter-checkpoint(4,
  [Why does a text generator hallucinate — what exactly is it doing instead of checking facts?],
  [A forwarded message says "92% of parents demanded a focus camera". Which of the three moves do you run first, and what do you look for?],
  [The court's hardest question: the camera's *maker*, the school that *installed* it, and the teacher who *uses* it — who answers when it wrongly flags a student? Why?],
)
#case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue about ethics and responsibility")
