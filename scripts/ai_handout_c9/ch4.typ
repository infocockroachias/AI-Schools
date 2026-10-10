#import "template.typ": *
// ============================================================
//  CHAPTER 4 — GENERATIVE AI & ETHICS   (8 pp · tasks 15–18)
// ============================================================
#chapter-opener(4, "Generative AI & Ethics", "Machines that write, speak and show faces — how do they work, and what do we owe each other?",
  outcomes: ("9.W1", "9.R1"), strands: ("W", "R"),
  summary: [The strangest machines in the AI city make new things: essays, images, voices, faces. This chapter builds a text generator's core trick on your own desk — a next-word table you construct and then "generate" from — so the mystery becomes a mechanism. Then the ethics floor: real-or-AI evidence checks, deepfakes, copyright and academic integrity, the access divide, and a balloon debate where AI's future must argue for its own seat on the lifeboat. You leave with a verification routine you can run on anything any machine ever hands you.],
  missions: "T9-15 – T9-18",
  link: "Links: English — language patterns & argument · Social Science — access & equity · Art — what is authorship?",
  extras: opener-extras(
    words: ("generative AI", "deepfake", "verification routine", "bias"),
    warmup: [“Generative AI looks things up in a database of facts.” — True or false? Write your verdict and ONE reason. You will re-judge this after Task T9-16.],
    need: ("pencil", "the printed sample texts in T9-15", "sticky notes for the debate", "a fair-minded heart"),
  ))

// ---------------- 4.1 ----------------
#sec(1, "Generative AI: the author that predicts")
*Generative AI* means systems that produce new content — text, images, audio, video — rather than only sorting or predicting numbers. The idea is easiest to see in text. A text generator reads the words so far and predicts a *likely next word*, one step at a time, each prediction shaped by patterns in a mountain of human writing. Crucially — and this is the misconception this book exists to kill — it does not *look facts up*. There is no archive of truth inside it. There are patterns: which words tend to follow which, in which tone, for which audience. When those patterns line up with facts, the output reads like an encyclopedia. When they don't, it reads *exactly as confident* — about something that never happened. You are about to build the smallest possible version of this machine, and watch it invent.

#task("T9-15", "Real or AI?", mode: "class", mins: "15", win: true)[
  Your teacher shows four texts about the same topic (printed, or read aloud). Some are human-written, some machine-generated. Before any reveal, run the evidence checklist on each — not "does it sound smart?" but the three checks below:
  #v(4pt)
  #dtable(("Check", "What to look for", "Text 1", "Text 2", "Text 3", "Text 4"),
    ([Specificity], [Real names, dates, local details you could verify — or smooth generalities?], [ ], [ ], [ ], [ ]),
    ([Sensory grounding], [Does it mention what only a person present would know?], [ ], [ ], [ ], [ ]),
    ([Error texture], [Human text has uneven emphasis and small tangents; generated text glides], [ ], [ ], [ ], [ ]),
    ([My verdict — human or AI?], [commit BEFORE the reveal], [ ], [ ], [ ], [ ]),
    widths: (34mm, 1fr, 16mm, 16mm, 16mm, 16mm),
  )
  #v(5pt)
  *After the reveal:* the check I trusted most was …, and the case that fooled me teaches … #ruled-lines(2, lead: 8.6mm)
  #v(2pt)
  *The honest conclusion about “sounding real”:* #ruled-lines(1, lead: 8.6mm)
]

// ---------------- 4.2 ----------------
#sec(2, "Build the next-word machine — then watch it invent")
Time to be the machine. A next-word table is the smallest honest model of a text generator: for each phrase-ending, count which word followed it in some body of text, and the counts become the probabilities. You will build one from a short corpus, then generate sentences from it. The inventions you will see are not bugs in your table — they are the mechanism working exactly as designed.

#task("T9-16", "How a Text Generator Guesses", mode: "pair", mins: "20")[
  *Step 1 — the corpus.* Here is your training text (a fictional village news column):
  #v(2pt)
  #block(width: 100%, radius: 5pt, fill: teal-faint, stroke: 0.6pt + line-soft, inset: (x: 10pt, y: 8pt), {
    text(size: 10.2pt, style: "italic")[
      “The school team won the final match. The village celebrated the final match with sweets. The monsoon filled the lake. The team captain thanked the village. The monsoon delayed the final match. The captain smiled. The village repaired the school roof. The school thanked the village.”
    ]
  })
  #v(3pt)
  *Step 2 — build the table.* Count what follows each phrase-ending in the corpus:
  #dtable(("After the words…", "Count of each next word", "The winner (and its share)"),
    ([“The school”], [ ], [ ]),
    ([“The monsoon”], [ ], [ ]),
    ([“The team”], [ ], [ ]),
    ([“The captain”], [ ], [ ]),
    ([“The village”], [ ], [ ]),
    widths: (44mm, 1fr, 1fr),
  )
  #v(3pt)
  *Step 3 — generate.* Start with “The school” and let the table choose the next word (highest count wins; on ties, choose either). Write your generated sentence:
  #ruled-lines(2, lead: 8.6mm)
  *Step 4 — the verdict.* Is your generated sentence (a) always true to the village, (b) sometimes strange, or (c) both? Where did strangeness enter — and would a BIGGER table fix it completely? #ruled-lines(2, lead: 8.6mm)
  *Revisit your warm-up verdict:* “generative AI looks things up” — now what do you say? #ruled-lines(1, lead: 8.6mm)
]
#wordpower(18, "generative AI", [Systems that create new text, images, audio or video from patterns.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · THE THREE BUILT-IN LIMITS]
  v(3pt)
  text(size: 10.1pt)[Match each symptom to its mechanism — H (hallucination: patterns without truth), B (bias: patterns of the past, including unfair ones), or C (copyright: patterns taken from people's work without permission or pay):]
  v(3pt)
  dtable(("The symptom", "H / B / C?"),
    ([A “biography” of a teacher who does not exist — confident, detailed, false], [ ]),
    ([A recruitment tool trained on ten years of hires repeats their one-sidedness], [ ]),
    ([An image generator draws a character suspiciously like a famous comic artist's style, unpaid], [ ]),
    ([A chatbot cites a court case that no court ever heard], [ ]),
    ([A voice model clones a singer's voice for an advert she never approved], [ ]),
    widths: (1fr, 24mm),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Notice: none of these is a “bug” that a smarter machine removes. Each is the pattern-matching mechanism meeting the world it was fed.]
}))

// ---------------- 4.3 ----------------
#sec(3, "Deepfakes and the verification routine")
When generation meets a person's face or voice, it becomes a *deepfake* — synthetic media that looks or sounds like a real person saying, doing, or wearing things they never did. The technology is improving faster than most people's defences, which makes your defence a *routine*, not a feeling. The Class 8 three moves — trace, test, smell — grow a fourth here: *seek the original* (can you find the unedited source or the person's own account?). And remember the asymmetry: a deepfake needs only to exist for hours to do harm; your verification needs minutes. Run it anyway — minutes are how trust survives.

#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DEEPFAKE DEFENCE — THE TWO QUESTIONS THAT END MOST OF THEM]
  v(3pt)
  dtable(("Ask…", "Why it works"),
    ([“Where is the FIRST place this appeared — and who posted it there?”], [Fakes travel by re-upload; their first home is rarely traceable]),
    ([“Does the real person's OWN account (or office) confirm it?”], [The person's own voice is the one recording no fake can out-shout]),
    widths: (1fr, 1fr),
  )
  v(3pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[A deepfake must only survive long enough to be forwarded. Your two questions take two minutes — that is the whole arms race.]
})

#task("T9-17", "Balloon Debate", mode: "group", mins: "25")[
  The balloon is sinking; only one speaker can stay aboard. Four speakers each defend a position on *“AI in our school”* — but each must argue from a DIFFERENT stakeholder's view, and the audience scores the *reasoning*, not the popularity:
  #v(4pt)
  #dtable(("Speaker (role)", "The position to defend", "Strongest point made", "Weakest point exposed"),
    ([A — a student who uses a chatbot for first drafts], [“Generative AI is my tutoring partner.”], [ ], [ ]),
    ([B — a teacher who grades the writing], [“It threatens how we learn to write.”], [ ], [ ]),
    ([C — a parent paying for internet data], [“Access is unequal; that decides fairness.”], [ ], [ ]),
    ([D — the school's data-safety lead], [“Without verification rules, none of it is safe.”], [ ], [ ]),
    widths: (44mm, 1fr, 1fr, 1fr),
  )
  #v(4pt)
  *The class verdict — who stays aboard, and the single best line of reasoning heard:* #ruled-lines(2, lead: 8.6mm)
  #v(2pt)
  *The point nobody made that should have been made:* #ruled-lines(1, lead: 8.6mm)
]
#wordpower(19, "deepfake", [Synthetic audio or video made to look or sound like a real person.])

// ---------------- 4.4 ----------------
#sec(4, "The Verify-It routine: four moves, no excuses")
Knowledge is not defence; routine is. Here is the full analyst routine, assembled from three years of this course — four moves, in order, each cheap enough to actually run:
#block(width: 100%, radius: 5pt, stroke: 1pt + ink, fill: teal-faint, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 11pt, weight: 800, fill: teal)[The Verify-It Routine — T9-18's contract]
  v(3pt)
  grid(columns: (auto, 1fr), column-gutter: 8pt, row-gutter: 5pt, align: (center, left),
    box(fill: teal, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt)[1]),
    text(size: 10.4pt)[*TRACE* — where did this content come from? Real author, real date, real place — or a chain of reposts?],
    box(fill: teal, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt)[2]),
    text(size: 10.4pt)[*TEST* — do TWO independent sources agree? If the claim has numbers, do the pieces add up?],
    box(fill: teal, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt)[3]),
    text(size: 10.4pt)[*SMELL* — is it engineered to make you feel first and think later? Outrage is a distribution strategy.],
    box(fill: amber, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, weight: 800, size: 10.5pt)[4]),
    text(size: 10.4pt)[*SEEK THE ORIGINAL* — the unedited file, the person's own account, the primary document. Deepfakes die at the original.],
  )
})

#task("T9-18", "Verify-It Routine", mode: "alone", mins: "15")[
  Three items arrive in your feed (invented for this mission — treat each as real). Run all four moves on paper. Commit a verdict for each: SHARE / ASK A QUESTION / DO NOT SHARE.
  #v(4pt)
  #dtable(("The item", "Move 1–2 findings", "Move 3–4 findings", "My verdict"),
    ([A forwarded clip: “The district collector announced schools close forever” — blurry, re-cropped, no date], [ ], [ ], [ ]),
    ([An AI-written “study guide” claiming the textbook's chapter 3 says something it does not], [ ], [ ], [ ]),
    ([A polished poster: “92% of parents demand phone ban” — no survey source anywhere], [ ], [ ], [ ]),
    widths: (1fr, 1fr, 1fr, 30mm),
  )
  #v(5pt)
  *Which move caught the most — and which move will you personally skip when busy? (Name it; that is the one to practise.)* #ruled-lines(2, lead: 8.6mm)
]
#wordpower(20, "verification routine", [A fixed set of checks you run on claims before you trust or share them.])

#myth("Generative AI looks things up.")[
  There is no library inside the machine — there are patterns, learned from text written by people. When the patterns track facts, output reads like an encyclopedia; when they don't, the same mechanism produces fluent, confident fiction, with no flag raised. That is why the machine's tone tells you NOTHING about its truth: confidence and correctness are computed separately, if the second is computed at all. You built a next-word table yourself — you watched it invent. Whatever a generator claims, your routine — trace, test, smell, seek the original — is the only lookup that actually exists.]

#selfcheck(
  [I can explain generative AI as pattern-based prediction — not lookup — and prove it with my own next-word table],
  [I can name the three built-in limits — hallucination, bias, copyright — and match each to its mechanism],
  [I can explain what a deepfake is and why seeking the original defeats it],
  [I can run all four Verify-It moves on a fresh claim and commit an honest verdict],
  [I can argue an AI case from a stakeholder's view and score reasoning, not popularity],
)
#thinkink([A generated text, image or voice that fooled me (or nearly did). Now that I have built the mechanism myself, what I will do differently is …], lines: 2)

#homelink[
  #task("AT HOME", "Family Verify-It", mode: "home", mins: "15")[
    Teach a grown-up the four moves, then run the routine together on one AI-flavoured item in the family phone — a forwarded video, an AI-written summary, a “study hack” post. No links to open; judge from the outside. #v(3pt)
    *The item:* #ruled-lines(1, lead: 8.1mm)
    *The move that settled it:* #ruled-lines(1, lead: 8.1mm)
    *Our family's new rule for anything that arrives hot:* #ruled-lines(2, lead: 8.1mm)
  ]
]

#note("Case notes — what changed in my thinking?")[
  Before this chapter I judged machine-made content by how it sounded. Now I judge it by … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 4 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Generative AI predicts; it never looks up* — you built the mechanism and watched it invent.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Its three limits are built in: *hallucination, bias, copyright* — none is a removable bug.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Deepfakes die at the original* — seek the unedited source before the emotion picks a side.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[The Verify-It routine: *trace, test, smell, seek the original* — minutes that protect years of trust.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
  text(size: 9.9pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[MY FEED, AUDITED — the item I will run the routine on first:] #h(4pt) #text(size: 10.1pt)[Name one recent forward, post or summary in your family's phone (no links to open) and the move you predict will settle it:]]
  ruled-lines(2, lead: 8.2mm)
})

#chapter-checkpoint(4,
  [In your own words: why does a text generator hallucinate — and why would a bigger table not fix it completely?],
  [A recruitment AI repeats ten years of one-sided hiring. Which built-in limit is this, and what data fix would you demand?],
  [Name all four Verify-It moves in order — and the one move that specifically defeats deepfakes.],
)
#case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue about machines that create and our duty to verify")
