#import "template.typ": *
// ============================================================
//  CHAPTER 2 — DATA: THE FOOD OF AI   (7 pp · tasks 06–09)
// ============================================================
#chapter-opener(2, "Data: The Food of AI", "What do machines learn from — and what happens when the food is bad?",
  summary: [Machines cannot learn on empty stomachs — their food is *data*. You will hunt the four kinds of data around your classroom, tidy them into tables, turn a table into a chart, and then discover what happens when a learner is fed bad examples. Garbage in, garbage out — and only a detective can spot why.],
  missions: "T6-06 – T6-09",
  outcomes: ("6.D1", "6.D2", "6.R2"), strands: ("D",),
  link: "Links: Maths — tables & bar graphs · Science — observation",
  extras: opener-extras(
    words: ("data", "pixel", "tally", "garbage in, garbage out", "bar chart"),
    warmup: [Every machine that learns has to be *fed*. What do you think your family's phone “eats” all day? Write your best guess — you will check it at the end of this chapter.],
    need: ("pencil", "ruler", "colour pencils", "8 small things to sort"),
  ))

// ---------------- 2.1 ----------------
#sec(1, "Every learner needs food")
You have learned that machines find patterns in examples. But what exactly do they look at? *Data.* Data is the collected facts of the world — the numbers, words, pictures and sounds that we gather up and hand to a learner. Data is to AI what food is to your body: no learner can think without it, and a learner that eats bad food grows up weak and confused. A detective who understands data can predict exactly where an AI will do well — and where it will fall flat.

#wordpower(5, "data", [Collected facts about the world: numbers, words, pictures and sounds.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · WHICH KIND OF DATA?]
  v(3pt)
  dtable(("The fact…", "N", "W", "P", "S"),
    ([the temperature at 9 o'clock this morning], [ ], [ ], [ ], [ ]),
    ([your school anthem, sung in assembly], [ ], [ ], [ ], [ ]),
    ([a map of India on the classroom wall], [ ], [ ], [ ], [ ]),
    ([the words of your favourite poem], [ ], [ ], [ ], [ ]),
    ([a voice message from your grandmother], [ ], [ ], [ ], [ ]),
    ([the number of students absent today], [ ], [ ], [ ], [ ]),
    widths: (1fr, 12mm, 12mm, 12mm, 12mm),
  )
  v(3pt)
  text(size: 9.5pt, fill: ink-soft, style: "italic")[N = numbers · W = words · P = pictures · S = sounds. One row may fit two kinds — both ticks earn respect when you can say why.]
}))

#note("Two kinds at once — the tricky cases")[
  Real data rarely asks permission. A music video is *sounds* *and* *pictures* at the same time. A WhatsApp voice note with a transcript underneath is *sounds* turned into *words*. A traffic camera stores *numbers* that another program turns back into *pictures*. When you meet data that fits two boxes, do not panic — write both letters and say why. Machines that work with mixed data (a video app, a smart speaker, a self-driving cart) need detectives who can spot *every* kind hiding inside.
]

#task("T6-06", "Four Kinds of Data Hunt", mode: "pair", mins: "10", win: true)[
  Hunt your classroom (and your own pockets) for one example of each kind of data. Write or draw it in the box. The first pair to finish all four wins the round — but every box needs a real finding!
  #v(5pt)
  #grid(columns: (1fr, 1fr), column-gutter: 7pt, row-gutter: 7pt,
    box(fill: teal-faint, stroke: 0.6pt + line-soft, radius: 5pt, inset: 8pt, stack(spacing: 2pt, text(weight: 800, size: 11.6pt, fill: teal, "1 · NUMBERS"), writebox(20mm))),
    box(fill: teal-faint, stroke: 0.6pt + line-soft, radius: 5pt, inset: 8pt, stack(spacing: 2pt, text(weight: 800, size: 11.6pt, fill: teal, "2 · WORDS"), writebox(20mm))),
    box(fill: teal-faint, stroke: 0.6pt + line-soft, radius: 5pt, inset: 8pt, stack(spacing: 2pt, text(weight: 800, size: 11.6pt, fill: teal, "3 · PICTURES"), writebox(20mm))),
    box(fill: teal-faint, stroke: 0.6pt + line-soft, radius: 5pt, inset: 8pt, stack(spacing: 2pt, text(weight: 800, size: 11.6pt, fill: teal, "4 · SOUNDS"), writebox(20mm))),
  )
  #v(4pt)
  *One piece of data that could belong to TWO kinds at once:* #ruled-lines(1, lead: 8.8mm)
]

// ---------------- 2.2 ----------------
#sec(2, "Tables make data tidy")
Loose data is like a scattered card pile: hard to think about. The first tool of every data detective is the *table* — rows and columns that line facts up neatly. Once data sits in a table, you can *tally* it (count with ||| strokes), and once you have tallies you can *draw a bar chart* that makes the biggest and smallest jump out at your eyes. Machines do exactly the same trick, only much faster: tidy first, then look.

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · READ THE TALLY]
  v(2.5pt)
  text(size: 10.1pt)[Tally strokes travel in groups of five: #box(baseline: 30%, stroke: 0.6pt + ink-soft, inset: (x: 6pt, y: 2pt), text(font: "DejaVu Sans", size: 10.5pt, "|||| ")) with a strike-through. Write the number each tally stands for:]
  v(1.5pt)
  grid(columns: (1fr, 1fr, 1fr, 1fr), column-gutter: 6pt, row-gutter: 4pt,
    ..("|||| ", "||", "|||| |||| |", "|||| ||").map(t => box(stroke: 0.6pt + line-soft, radius: 4pt, inset: (x: 6pt, y: 3.5pt), fill: teal-faint, text(font: "DejaVu Sans", size: 10.5pt, t + " =  ______")))
  )
}))

#task("T6-07", "Table to Chart", mode: "group", mins: "15")[
  In your group, ask each member: *“Which of these five do you like best?”* Add your teacher's vote too if you like. Tally the answers, write the count, then colour one bar for each sport on the chart. Remember: one full tally is four strokes plus a strike-through.
  #v(4pt)
  #dtable(("Sport", "Tally", "Count"),
    ([Cricket], [ ], [ ]),
    ([Football], [ ], [ ]),
    ([Badminton], [ ], [ ]),
    ([Kabaddi], [ ], [ ]),
    ([Other], [ ], [ ]),
    widths: (48mm, 60mm, 30mm),
  )
  #v(6pt)
  #barchart-blank(("Cricket", "Football", "Badminton", "Kabaddi", "Other"), ymax: 10, pw: 146mm, ph: 56mm)
  #v(4pt)
  *The tallest bar is … because …* #ruled-lines(1, lead: 8.8mm)
  *One thing my chart proves, and one thing it cannot tell me:* #ruled-lines(2, lead: 8.8mm)
]

// ---------------- 2.3 ----------------
#sec(3, "A picture is a grid of numbers")
Here is a secret that surprises almost everyone: to a camera and to an AI, your photograph is not a picture at all — it is a *huge grid of numbers*. Each tiny square of the image (a *pixel*) is stored as a number saying how bright or which colour it is. When you draw by numbers below, you are doing exactly what a camera does: turning a picture into numbers. Machines that “see” are really machines that are very good at finding patterns in those numbers.

#box(width: 100%, {
  grid(columns: (auto, 1fr), column-gutter: 10pt, align: (center, left),
    pixel-grid(size: 4, cell: 8mm, numbers: ((0,1,1,1),(1,0,0,0),(1,0,0,0),(0,1,1,1))),
    text(size: 10.6pt)[A tiny 4 × 4 example. The zeros and ones store a letter — which one? Each row of the picture is one row of numbers. A real photo does this with millions of squares and numbers from 0 to 255 for brightness. *You* will speak “pixel language” in the next mission.],
  )
})

#task("T6-08", "Pixel Picture", mode: "pair", mins: "15")[
  *How to play:* Detective 1 keeps this page secret-ish and reads the code table aloud, row by row: “Row 1: 0 2 2 0 0 2 2 0 …”. Detective 2 shades the left grid: 0 = leave white, 1 = shade light, 2 = shade dark. Then swap roles while Detective 1 shades the right grid. Finally reveal — do the two pictures match? That is data storage working!
  #v(5pt)
  #grid(columns: (auto, auto, auto, auto), column-gutter: 7pt, align: (center, center, center, center),
    pixel-grid(size: 8, cell: 6.0mm, numbers: ((0,2,2,0,0,2,2,0),(2,1,1,2,2,1,1,2),(2,1,1,1,1,1,1,2),(2,1,1,1,1,1,1,2),(0,2,1,1,1,1,2,0),(0,0,2,1,1,2,0,0),(0,0,0,2,2,0,0,0),(0,0,0,0,0,0,0,0))),
    { v(2pt); text(size: 8.8pt, weight: 800, fill: teal, align(center, "CODE CARD")); stack(spacing: 0pt, text(size: 8.4pt, fill: ink-soft, align(center, "0 = white")), text(size: 8.4pt, fill: ink-soft, align(center, "1 = light")), text(size: 8.4pt, fill: ink-soft, align(center, "2 = dark"))) },
    pixel-grid(size: 8, cell: 6.0mm),
    pixel-grid(size: 8, cell: 6.0mm),
  )
  #v(4pt)
  #grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, left, center),
    text(size: 8.8pt, weight: 800, fill: teal, align(center, "REVEALED!")),
    text(size: 10.1pt)[What did the numbers turn into? #h(4pt) *A picture on a screen is really just* #box(width: 52mm, baseline: 40%, line(length: 100%, stroke: 0.6pt + ink-soft)) #h(2pt) stored in a grid.],
    { text(size: 9.2pt, weight: 700)[Our pictures matched?]; h(4pt); box(width: 9.5pt, height: 9.5pt, radius: 5pt, stroke: 1pt + teal-mid, fill: white); text(size: 9.5pt, weight: 800)[ YES]; h(6pt); box(width: 9.5pt, height: 9.5pt, radius: 5pt, stroke: 1pt + teal-mid, fill: white); text(size: 9.5pt, weight: 800)[ NO] },
  )
]
#note("Bonus round — invent a secret picture")[
  On scrap paper, design your own 8 × 8 secret picture and write its code card (rows of 0s, 1s and 2s). Swap code cards only — never the pictures — with another pair. If their shading matches your drawing, you have just proved the whole idea of this chapter: *the numbers are the picture.* A camera does this trick sixty times every second for every pixel it owns.
]
#note("Camera-speak — three words detectives should know")[
  *Pixel* — one tiny square of the grid; the smallest piece of a picture a machine can see. *Resolution* — how many pixels the grid holds; more pixels = more numbers = more detail. *Brightness* — the number stored in each pixel, from 0 (pure black) to 255 (pure white). Next time a photo looks blurry on a screen, you will know what to blame: not enough pixels in the grid!
]
// ---------------- 2.3b ----------------
#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · READ THIS CHART]
  v(2pt)
  text(size: 10.1pt)[The garden club asked 25 members: *“Which plant should we grow more of?”* Their data, tidied into a chart:]
  v(4pt)
  align(center, barchart-example(("Rose", "Tulip", "Mango", "Neem", "Other"), (6, 3, 8, 2, 6), ph: 52mm))
  v(4pt)
  dtable(("Chart question", "My answer"),
    ([Which plant won the vote? How do you know?], [ ]),
    ([How many more votes did Mango get than Tulip?], [ ]),
    ([A friend says “Tulip is the club's favourite plant.” Is the chart on their side?], [ ]),
    widths: (1fr, 64mm),
  )
}))

// ---------------- 2.4 ----------------
#sec(4, "Garbage in, garbage out")
Now you can spot the biggest danger in an AI's kitchen. If the *training examples* are wrong, messy or one-sided, the machine cannot know it — it will happily learn a wrong pattern and then *predict* wrong answers forever, with total confidence. Detectives have a saying for this: *garbage in, garbage out*. It is the number one reason a smart machine says something silly — not because the machine is broken, but because its food was bad.

#myth("AI = computers = coding.")[
  AI is an *idea* — learning patterns from data — and you can understand it fully with paper, as you just did. Not every computer runs AI (your calculator never learns), and AI is not the same as coding: coding writes fixed steps, while AI learns its own patterns from data.]

#task("T6-09", "Garbage In, Garbage Out", mode: "group", mins: "10")[
  Your group gets the eight *training cards* below (cut them out or copy them onto paper). One member is the *Machine*: cover the table, look only at the clues, and answer with the label that matches. The Machine announces its rule. Then the group tests the Machine with the three *test cards* at the bottom. Something will go wrong — good detectives find out why.
  #v(5pt)
  #text(size: 9.5pt, weight: 800, fill: teal, tracking: 0.06em)[TRAINING CARDS — WHAT THE MACHINE SEES]
  #v(3pt)
  #dtable(("Label on card", "Clues on card"),
    ([PET: CAT], [whiskers · purrs · chases mice]),
    ([PET: CAT], [whiskers · sleeps a lot · soft fur]),
    ([PET: DOG], [barks · wags tail · fetches sticks]),
    ([PET: CAT], [barks · wags tail · fetches sticks]),
    ([PET: COW], [moos · eats grass · gives milk]),
    ([PET: GOAT], [bleats · eats everything · climbs]),
    ([PET: HEN], [clucks · lays eggs · scratches soil]),
    ([PET: GOAT], [moos · eats grass · gives milk]),
    widths: (40mm, 1fr),
  )
  #v(5pt)
  #text(size: 9.5pt, weight: 800, fill: amber-deep, tracking: 0.06em)[TEST CARDS — WHERE IT GETS EMBARRASSING]
  #v(3pt)
  #grid(columns: (1fr, 1fr, 1fr), column-gutter: 6pt,
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: 7pt, stack(spacing: 2pt, text(weight: 800, size: 9.7pt, fill: teal, "TEST 1"), text(size: 9.7pt, [tiny puppy: barks · wags tail]), text(size: 9pt, fill: ink-soft, style: "italic", [Machine said: #box(width: 20mm, baseline: 40%, line(length: 100%, stroke: 0.55pt + line-soft))]))),
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: 7pt, stack(spacing: 2pt, text(weight: 800, size: 9.7pt, fill: teal, "TEST 2"), text(size: 9.7pt, [kitten: whiskers · purrs]), text(size: 9pt, fill: ink-soft, style: "italic", [Machine said: #box(width: 20mm, baseline: 40%, line(length: 100%, stroke: 0.55pt + line-soft))]))),
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: 7pt, stack(spacing: 2pt, text(weight: 800, size: 9.7pt, fill: teal, "TEST 3"), text(size: 9.7pt, [calf: moos · gives milk]), text(size: 9pt, fill: ink-soft, style: "italic", [Machine said: #box(width: 20mm, baseline: 40%, line(length: 100%, stroke: 0.55pt + line-soft))]))),
  )
  #v(5pt)
  *The wrong rule our Machine learned:* #ruled-lines(1, lead: 8.8mm)
  *Which training cards poisoned the learning? Circle them above. Why was the Machine fooled?* #ruled-lines(2, lead: 8.8mm)
]
#note("Detective's note")[When an AI gives a wrong or unfair answer, do not just ask “what is wrong with the machine?” Ask the detective question: *“What is wrong with its data?”* One bad example in a million can still bend the pattern — that is why people must always stay in charge of checking.]

#block(width: 100%, box(width: 100%, fill: teal-faint, radius: 5pt, stroke: 1pt + ink, inset: (x: 11pt, y: 8pt), [
  #text(font: f-display, size: 9.2pt, weight: 800, fill: teal-deep, tracking: 0.12em)[CHAPTER 2 CLUES — SAY IT BACK]
  #v(4pt)
  *Data* is the … #ruled-lines(1, lead: 8.6mm)
  *Garbage in, garbage out* means … #ruled-lines(1, lead: 8.6mm)
  *A picture on a screen* is really … #ruled-lines(1, lead: 8.6mm)
]))

#selfcheck(
  [I can name the four kinds of data and point to one example of each in this classroom],
  [I can tidy data into a table, tally it, and draw a bar chart that others can read],
  [I can explain how a picture becomes a grid of numbers — and show it with my own code],
  [I can explain “garbage in, garbage out” to someone who missed today's class],
)
#thinkink([A machine I know eats data all day long. The data it probably eats is … and if that data is messy, it will …], lines: 2)
#case-journal(lines: 2, label: "MY CASE JOURNAL — the clue I will never forget from this chapter")
