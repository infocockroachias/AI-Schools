#import "template.typ": *
// ============================================================
//  CHAPTER 2 — MACHINES THAT SEE, READ AND RECOMMEND  (8 pp · tasks 06–09)
// ============================================================
#chapter-opener(2, "Machines That See, Read and Recommend", "What does a machine actually see when it looks at a picture, a message or you?",
  outcomes: ("7.W1", "7.T1"), strands: ("W",))

// ---------------- 2.1 ----------------
#sec(1, "How a machine sees")
In Class 6 you proved that a picture is really a grid of numbers. But seeing is more than storing numbers — a useful machine must *decide* from them, and for that it computes *features*: useful clues such as “this edge is here”, “this patch is dark”, “two lines meet at a corner”. A camera does not see a cat. It sees thousands of numbers, then features, then — if enough cat-like features line up — it predicts *cat*. The picture never enters any machine the way it enters your eyes. Today you will be the camera, and you will feel exactly what is missing.

#task("T7-06", "Be the Camera", mode: "pair", mins: "15", win: true)[
  Detective A looks at the *number grid* below — it is a photo, exactly as a machine stores it. Detective B looks only at the *empty grid*. A must describe the photo using *numbers only* — no shapes, no words like “heart” or “line”. For example: “Row 1: 0 0 0 0 0 1.” B shades the cells that A's numbers say are 1. Then place the grids side by side.
  #v(4pt)
  #grid(columns: (auto, auto, 1fr), column-gutter: 10mm, align: (center, center, top),
    { text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[PHOTO AS NUMBERS (A)]; v(2.5pt); pixel-grid(size: 6, cell: 8.2mm, numbers: (
        (0,1,0,0,1,0),
        (1,1,1,1,1,1),
        (1,1,1,1,1,1),
        (0,1,1,1,1,0),
        (0,0,1,1,0,0),
        (0,0,0,0,0,0),
      )) },
    { text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[B'S DRAWING — SHADE THE 1s]; v(2.5pt); pixel-grid(size: 6, cell: 8.2mm) },
    {
      v(14mm)
      [*Compare after the first try:* #ruled-lines(1, lead: 8.4mm)]
      [*The numbers that helped B most were…* #ruled-lines(1, lead: 8.4mm)]
      [*Second round — describe using only two features instead of every cell:* #ruled-lines(1, lead: 8.4mm)]
    },
  )
  #v(4pt)
  *While playing A, did you ever know what the picture “was”? What does that tell you about a machine that only ever sees numbers?* #ruled-lines(2, lead: 8.8mm)
]
#wordpower(6, "feature", [A useful clue, stored as a number, that helps a machine decide.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[T7-06 · ROUND 2 — SWITCH ROLES]
  v(3pt)
  text(size: 10.3pt)[Now B invents a pattern, shades it in the first grid, and describes it with numbers only. A draws what B says. Fewer numbers should be enough this time — features, not every cell.]
  v(4pt)
  grid(columns: (auto, auto, 1fr), column-gutter: 10mm, align: (center, center, top),
    { text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[B INVENTS ONE]; v(2.5pt); pixel-grid(size: 6, cell: 8.2mm) },
    { text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[A DRAWS WHAT B SAYS]; v(2.5pt); pixel-grid(size: 6, cell: 8.2mm) },
    {
      v(10mm)
      [*B's features this time — as few numbers as possible:* #ruled-lines(1, lead: 8.4mm)]
      [*Did the picture survive two round trips? What got lost on the way?* #ruled-lines(2, lead: 8.4mm)]
    },
  )
}))

#myth("The computer understands pictures like we do.")[
  It has never seen a picture the way you have. It matches *number patterns* — and it works astonishingly well until the world behaves strangely: a cat photographed from below, a handwritten 4 with an open top, a face in shadow. When the features stop matching, the machine fails *confidently*. You know the feeling from T7-02: a prediction can be smooth and still be wrong.]

// ---------------- 2.2 ----------------
#sec(2, "How a machine reads")
Reading works the same trick — but with words. A machine cannot *understand* a message the way you do. So it counts. Which words appear, how often, in what company? *Frequency* — how many times a word shows up — turns a sentence into a row of numbers, and numbers are something a machine can compare. Your email's spam filter is doing roughly this: counting words like FREE, WINNER and URGENT, and letting the counts vote. Counting is not understanding — but you will be surprised how far it goes. And where it stops.

#task("T7-07", "Word Counter", mode: "group", mins: "15")[
  Six messages arrived. Your group is the filter. For each message, tally the four watch-words, decide SPAM or NOT SPAM from the counts, and note the number that decided you.
  #v(4pt)
  #dtable(("Message that arrived", "FREE", "WINNER", "CLICK", "URGENT", "My verdict", "Count that decided"),
    ([“WINNER! You are our WINNER today! CLICK here to claim your FREE prize!”], [ ], [ ], [ ], [ ], [ ], [ ]),
    ([“Team meeting moved to 3 pm. Please bring the report.”], [ ], [ ], [ ], [ ], [ ], [ ]),
    ([“URGENT: CLICK in the next 10 minutes! FREE recharge for the first 100!”], [ ], [ ], [ ], [ ], [ ], [ ]),
    ([“Hello Aarav, here are the notes from today's maths class.”], [ ], [ ], [ ], [ ], [ ], [ ]),
    ([“CLICK NOW! Your account is blocked! URGENT action needed!”], [ ], [ ], [ ], [ ], [ ], [ ]),
    ([“Can you send me the cricket scores from yesterday?”], [ ], [ ], [ ], [ ], [ ], [ ]),
    widths: (1fr, 11mm, 13mm, 11mm, 13mm, 20mm, 1fr),
  )
  #v(5pt)
  *Our filter rule, written with numbers:* #ruled-lines(1, lead: 8.8mm)
  *Write one clean message that would fool our rule into saying SPAM. What does that teach you about counting machines?* #ruled-lines(2, lead: 8.8mm)
]
#wordpower(7, "frequency", [How many times a word appears — the number a counting machine reads.])

// ---------------- 2.3 ----------------
#sec(3, "How a machine recommends")
A video app suggests your next clip, a shop suggests your next book — how? Not by understanding you. By finding *people like you*: others whose pattern of choices matches yours, and collecting what *they* enjoyed. That is the whole trick. It is called a *recommendation*, and it is clustering and counting wearing a friendly face. Notice what it cannot do: it cannot ask *why* you liked something. It only knows that people with numbers like your numbers liked these things.

#task("T7-08", "People Like You", mode: "group", mins: "15")[
  Four friends watched four films. New student Priya has seen three of them. Be the app: find Priya's closest matches, then recommend.
  #v(4pt)
  #dtable(("Viewer", "Cricket Stars", "Space Cats", "Jungle Trek", "The Lost Kite"),
    ([Rohan], [✓ loved], [✗ skipped], [✓ loved], [✓ loved]),
    ([Sara], [✓ loved], [✗ skipped], [✓ loved], [✗ skipped]),
    ([Kabir], [✗ skipped], [✓ loved], [✗ skipped], [✗ skipped]),
    ([Meena], [✓ loved], [✗ skipped], [✓ loved], [✓ loved]),
    ([*Priya (new)*], [✓ loved], [?], [✓ loved], [?]),
    widths: (30mm, 1fr, 1fr, 1fr, 1fr),
  )
  #v(5pt)
  *The viewer(s) most like Priya:* #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) · *How did you compare?* #box(width: 34mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))
  *Our app recommends:* #box(width: 40mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) — *because the people most like Priya enjoyed it.*
  #v(4pt)
  *The app cannot ask Priya WHY she loved Jungle Trek. Name one thing about her taste that this trick can never see.* #ruled-lines(1, lead: 8.8mm)
]
#wordpower(8, "recommendation", [A suggestion made by finding people whose pattern of likes matches yours.])

// ---------------- 2.4 ----------------
#sec(4, "Lost in translation")
Translation looks easy: swap each word for its counterpart. But you speak a language, and you know its words carry *context* — the situation around them, the jokes, the idioms. A counting machine matches patterns between languages, and most of the time it manages. Then it meets an idiom, and the pattern collapses. Try to catch it in the act.

#task("T7-09", "Translate the Tricky", mode: "pair", mins: "10")[
  A word-by-word translation machine produced these. For each, write what a human actually means.
  #v(4pt)
  #dtable(("The sentence", "The machine translated…", "What a human means"),
    ([“It's raining cats and dogs.”], [“Water is falling. Cats and dogs are falling from the sky.”], [ ]),
    ([“Aankhon ka taara” (Hindi)], [“star of the eyes”], [ ]),
    ([“When pigs fly!”], [“at the time when pigs fly in the sky”], [ ]),
    widths: (38mm, 1fr, 1fr),
  )
  #v(5pt)
  *Now your turn — an idiom from your own language:* #v(3pt)
  *The idiom (write it in English letters):* #ruled-lines(1, lead: 8.6mm)
  *The machine's word-by-word version:* #ruled-lines(1, lead: 8.6mm)
  *What it really means:* #ruled-lines(1, lead: 8.6mm)
]

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · WHICH NUMBERS DID THE MACHINE USE?]
  v(3pt)
  dtable(("The machine is…", "Camera, reader or recommender?"),
    ([counting how often the word FREE appears], [ ]),
    ([comparing your likes with Rohan's likes], [ ]),
    ([finding edges and corners in a photo], [ ]),
    ([noticing that customers who bought what you bought also bought this], [ ]),
    ([storing a photo as a grid of numbers, then features], [ ]),
    ([tallying which words appear in a message], [ ]),
    widths: (1fr, 44mm),
  )
}))

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[AT A GLANCE · WHAT THE MACHINE ACTUALLY SEES]
  v(4pt)
  grid(columns: (1fr, 1fr, 1fr), column-gutter: 8pt,
    box(fill: teal-faint, radius: 5pt, inset: (x: 7pt, y: 6pt), {
      text(size: 8.8pt, weight: 800, fill: teal, tracking: 0.08em)[THE CAMERA]
      v(2.5pt)
      text(size: 9.5pt)[photo → grid of numbers → *features* (edges, corners, colour patches) → prediction]
    }),
    box(fill: teal-faint, radius: 5pt, inset: (x: 7pt, y: 6pt), {
      text(size: 8.8pt, weight: 800, fill: teal, tracking: 0.08em)[THE READER]
      v(2.5pt)
      text(size: 9.5pt)[message → words → *counts* of watch-words → spam or not-spam]
    }),
    box(fill: teal-faint, radius: 5pt, inset: (x: 7pt, y: 6pt), {
      text(size: 8.8pt, weight: 800, fill: teal, tracking: 0.08em)[THE RECOMMENDER]
      v(2.5pt)
      text(size: 9.5pt)[your likes → find *people like you* → collect what they enjoyed]
    }),
  )
  v(4pt)
  text(size: 9.5pt, fill: ink-soft, style: "italic")[Three different machines — the same secret. Between the machine and the world there are only *numbers*, and the numbers only matter because somebody chose which ones to count.]
}))

#selfcheck(
  [I can explain, with numbers, how a machine “sees” a picture — without saying it understands one],
  [I can build a counting rule that separates spam from not-spam, and name one way to fool it],
  [I can find the “people like me” in a likes table and predict what they would recommend],
  [I can explain why word-by-word translation fails on idioms, with one example],
)
#thinkink([One recommendation I received this week (a video, a song, a product) was… I now know it appeared because …], lines: 2)

#homelink[
  #task("AT HOME", "Spam Hunt", mode: "home", mins: "15")[
    With a grown-up, look at the last five messages a family group-chat received (do not open links, do not tap anything). Tally: how many carry a watch-word like FREE, WINNER, URGENT or CLICK? How many try to make you *feel* something before you *think*? #v(3pt)
    *Watch-words found:* #ruled-lines(1, lead: 8.1mm)
    *Messages that pushed an emotion first:* #ruled-lines(1, lead: 8.1mm)
    *One message our family should stop forwarding, and why:* #ruled-lines(2, lead: 8.1mm)
  ]
]

#note("Case notes — what changed in my thinking?")[
  Before this chapter I believed machines that talk, see and suggest must understand us. Now I know they are really doing three things with numbers: #ruled-lines(2, lead: 8.4mm)
]

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DESIGN DRILL · INVENT A NEW FILTER]
  v(3pt)
  text(size: 10.3pt)[Every counting filter has a job. Invent one for your classroom — a *homework-excuse detector*, a *kindness filter* for the class wall, or your own idea. Then break it.]
  v(4pt)
  dtable(("My filter's name and job", "My watch-words", "My counting rule", "One honest way it fails"),
    ([ ], [ ], [ ], [ ]),
    widths: (1fr, 1fr, 1fr, 1fr),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Every filter fails somewhere — knowing *where* is what makes you the responsible designer.]
}))

#note("Chapter 2 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[A camera sees *numbers and features* — it never sees a picture the way you do.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[A reader *counts words* — counting is powerful, but it is not understanding.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[A recommender finds *people like you* and borrows their taste — it cannot ask you why.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Translation fails on *idioms and context* — the meaning lives around the words, not inside them.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]
