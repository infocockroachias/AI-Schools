#import "template.typ": *
// ============================================================
//  CHAPTER 2 — MACHINES THAT SEE AND READ   (tasks 05–09)
// ============================================================
#chapter-opener(2, "Machines That See and Read", "What does a machine actually receive — and what does it do with it?",
  outcomes: ("10.V1", "10.N1"), strands: ("W",),
  summary: [Class 7 taught you that a camera sees a grid of numbers. This year you learn what machines *do* to those grids: you will run a real 3×3 kernel across a six-by-six image by hand and watch an edge announce itself, sketch how stacked filters become feature maps, then turn to reading — cleaning text until a machine can count it, building bag-of-words and TF-IDF tables with your own pencil, and drawing the line between a script bot that recites and a smart bot that predicts. Seeing and reading turn out to be the same trick: turn the messy world into numbers, then weight the numbers.],
  missions: "T10-05 – T10-09",
  link: "Links: Maths — matrices & weighted sums · Science — optics & the eye · Languages — morphology, root words",
  extras: opener-extras(
    words: ("pixel", "grayscale", "kernel", "feature map", "normalisation"),
    warmup: [Draw the letter 'A' twice — once neat, once rushed. Write one line: what stayed the same in the *numbers* if a machine measured dark and light? Keep your answer for Section 2.2.],
    need: ("pencil", "ruler", "calculator (optional — all sums are small)", "one printed or drawn 6×6 grid per pair"),
  ))

// ---------------- 2.1 ----------------
#sec(1, "Pixels: the only thing a camera ever gives you")
A greyscale image is a rectangle of numbers: 0 for pure black, 255 for pure white, and the greys between. Colour triples the story — every position stores three numbers for red, green and blue, and mixing those three channels in different amounts is how every screen you have ever watched makes every colour it has ever shown. Nothing enters the model except these numbers: no "cat-ness", no context, no memory of the real scene. This is why machines can be fooled by things eyes forgive — a sticker on a sign, a tinted screen, a photo taken at an angle. The numbers changed; to the machine, the world *did* change.

#figure-visual("visuals/c10_ch2_convolution.png", [The full convolution move you are about to do by hand: kernel in, multiply-and-add, one response number out. Bright cells mean "pattern found here".])

#task("T10-05", "Pixel Edge Hunt", mode: "pair", mins: "25", hands: true)[[
  The input grid below is a 6×6 greyscale patch with a dark-to-light edge running down the middle. Your kernel is the 3×3 edge detector from the figure: −1 on the border, 8 at the centre.
  #v(4pt)
  #grid(columns: (auto, auto, 1fr), column-gutter: 12pt,
    pixel-grid(size: 6, cell: 11.5mm, numbers: (( 30, 35, 90,160,205,230),( 28, 40, 95,155,210,235),( 55, 80,150,200,225,245),( 60,120,190,230,240,250),(110,185,225,245,250,252),(115,195,235,248,252,253)), num-size: 8.6pt),
    {
      v(2pt)
      text(size: 9pt, weight: 800, fill: amber-deep, tracking: 0.08em)[KERNEL]
      v(3pt)
      pixel-grid(size: 3, cell: 9.5mm, numbers: ((-1,-1,-1),(-1, 8,-1),(-1,-1,-1)), num-size: 8.6pt)
      v(6pt)
      text(size: 9pt, weight: 800, fill: amber-deep, tracking: 0.08em)[MY 4×4 ANSWERS]
      v(3pt)
      pixel-grid(size: 4, cell: 9.5mm, num-size: 8.6pt)
    },
    {
      text(size: 10.2pt)[*Procedure — twice by hand, then you may sprint:*]
      v(2.5pt)
      text(size: 10.1pt)[*1.* Place the kernel over the top-left 3×3 patch. Multiply each pixel by its weight and add all nine products. Write the response in your 4×4 grid.]
      v(2.5pt)
      text(size: 10.1pt)[*2.* Slide one cell right. Repeat. One full row takes five moves.]
      v(2.5pt)
      text(size: 10.1pt)[*3.* Finish all 16 responses. *Where do the big positive numbers appear?* Mark that column.]
      v(2.5pt)
      text(size: 10.1pt)[*4.* Swap grids with another pair and check one response each — argue any difference to the arithmetic.]
      v(4pt)
      text(size: 10.2pt)[*What the hunt proves:* the kernel never saw the "edge". It only multiplied and added — and the edge announced itself anyway. That is a feature detector: no understanding, just arithmetic that fires when a pattern lines up.]
    },
  )
  #v(4pt)
  *Prediction before you run it:* where will the strongest response appear — and why there, not one column to the left? #ruled-lines(2, lead: 8.2mm)
]]
#wordpower(11, "pixel", [One position in an image grid, holding a number for brightness — three numbers for colour.])
#wordpower(12, "grayscale", [An image where each pixel holds a single brightness number from 0 to 255.])

// ---------------- 2.2 ----------------
#sec(2, "From edges to objects: the idea of a CNN")
One kernel finds one kind of pattern. A convolutional network stacks the idea: dozens of kernels find edges and blobs, the next layer combines edges into corners and textures, the next combines those into eye-shapes and wheel-shapes, and deeper layers answer the questions we care about — "is this a plant leaf or a diseased leaf?" Each layer's outputs are called a *feature map*: a new grid of numbers recording how strongly each pattern fired everywhere in the image. Nobody writes the kernels by hand any more; training discovers them. But the arithmetic you did in T10-05 is exactly what every one of those kernels does, billions of times.

#task("T10-06", "Feature-Map Sketch", mode: "alone", mins: "15")[[
  A 5×5 image contains: a vertical dark edge on the left, a bright square top-right, and smooth grey elsewhere.
  #v(3.5pt)
  *a)* Sketch the feature map for a *vertical-edge kernel* — which cells fire strongly, which stay near zero? Mark them. #writebox(19mm)
  *b)* A second kernel hunts *bright corners*. Sketch its feature map — different cells now. #writebox(19mm)
  *c)* The next layer receives BOTH maps. What can it answer that either map alone could not? #ruled-lines(2, lead: 8.2mm)
  *d)* Your T10-05 kernel knew nothing about leaves. What, then, does a "plant disease classifier" actually have to be given — and by whom? #ruled-lines(2, lead: 8.2mm)
]]
#wordpower(13, "kernel", [The small grid of weights slid across an image — one learned pattern-detector.])
#wordpower(14, "feature map", [The grid of responses one kernel produces — where its pattern fired.])

// ---------------- 2.3 ----------------
#sec(3, "Teaching machines to read: clean the text first")
A machine cannot count "The", "the" and "THE" as the same word until someone makes them the same. *Normalisation* is the laundry list: lowercase everything, strip punctuation, split off stop-words (the, is, at — words so common they carry no topic), and chop words to their stems (study, studies, studying → *studi-*). Boring, yes — and decisive: skip it, and half your counts are duplicated noise. Every serious text system, from spam filters to translation engines, begins with this same scrub.

#task("T10-07", "Text Cleaner", mode: "pair", mins: "15", hands: true)[[
  Normalise these four messages exactly as a machine would — lowercase, punctuation stripped, stop-words marked out, stems chopped:
  #v(3.5pt)
  #dtable((" ", "Message"),
    ([M1], [URGENT!!! Your prize is WAITING — claim your FREE prize now]),
    ([M2], [The class test is urgent; the prize-winning project is due tomorrow]),
    ([M3], [FREE workshop: studying smarter, not longer — free entry]),
    ([M4], [Mom says dinner is waiting, don't study late tonight]),
    widths: (0.14fr, 1.86fr),
  )
  #v(4pt)
  *Write each cleaned version here (stems with a dash):*
  #v(2.5pt)
  #grid(columns: (1fr, 1fr), column-gutter: 8pt, row-gutter: 5pt,
    box(fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 8pt, y: 6pt), { text(size: 9.2pt, weight: 800, fill: teal)[M1 CLEAN]; ruled-lines(2, lead: 7.6mm) }),
    box(fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 8pt, y: 6pt), { text(size: 9.2pt, weight: 800, fill: teal)[M2 CLEAN]; ruled-lines(2, lead: 7.6mm) }),
    box(fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 8pt, y: 6pt), { text(size: 9.2pt, weight: 800, fill: teal)[M3 CLEAN]; ruled-lines(2, lead: 7.6mm) }),
    box(fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 8pt, y: 6pt), { text(size: 9.2pt, weight: 800, fill: teal)[M4 CLEAN]; ruled-lines(2, lead: 7.6mm) }),
  )
  #v(4pt)
  *The judgement call:* "urgent" appears in M1 and M2, but means something different in each. What information did normalisation *throw away* — and how might that hurt a spam classifier? #ruled-lines(2, lead: 8.2mm)
]]
#wordpower(15, "normalisation", [Cleaning text so machines can count it: lowercase, no punctuation, stop-words out, stems chopped.])

// ---------------- 2.4 ----------------
#sec(4, "Bag-of-words and TF-IDF: counting your way to meaning")
After cleaning, a message becomes a *bag of words* — order lost, counts kept — placed side by side with every other message in a table: rows are messages, columns are words, cells are counts. From that table, *TF-IDF* asks the sharpening question: which words make THIS message different from the others? Term frequency says how often a word appears here; inverse document frequency discounts words that appear nearly everywhere (like "free" in a folder where every third message shouts it — or is it the reverse?). The arithmetic is one division and one logarithm you need not compute precisely — what matters is the *ratio logic*: common-in-this-message, rare-everywhere-else, means informative; common everywhere means nearly worthless.

#task("T10-08", "Bag-of-Words & TF-IDF by Hand", mode: "pair", mins: "25", hands: true)[[
  Use the four *cleaned* messages from T10-07 (or the provided versions if your teacher hands them out).
  #v(3.5pt)
  *a)* Build the bag-of-words table: one row per message, one column per distinct content word, counts in the cells. (Choose your 8–10 columns as a class so all tables match.)
  #v(3pt)
  #writebox(30mm, label: [BAG-OF-WORDS TABLE — rows M1–M4, your chosen columns])
  *b)* Circle the word with the *highest document frequency* — in how many messages does it appear? What is its value for telling messages apart? #ruled-lines(2, lead: 8mm)
  *c)* Underline the word with the *highest TF-IDF intuition* — frequent in one message, rare elsewhere. Which message does it identify? #ruled-lines(2, lead: 8mm)
  *d)* M2 contains "urgent" sincerely; M1 uses "URGENT!!!" as bait. Both bags contain *urgent* once. What did the bag-of-words model lose — and name one feature a smarter model might add back. #ruled-lines(2, lead: 8mm)
  *e)* A spam filter trained on these four messages gets a new one: "FREE FREE FREE prize claim now!!" Predict its label from your table, and give the table cell(s) that decide it. #ruled-lines(2, lead: 8mm)
]]
#wordpower(16, "bag-of-words", [A table of word counts per message — order lost, frequency kept.])
#wordpower(17, "TF-IDF", [A score that lifts words frequent here but rare elsewhere — the informative ones.])

// ---------------- 2.5 ----------------
#sec(5, "Script bots versus smart bots")
Not every chatbot is an AI system, and the difference is testable. A *script bot* walks a tree a human drew: "press 1 for balance, press 2 for statements" — or its chat-window cousin, matching keywords to canned replies. Ask it something off the tree and it fails the same way every time. A *smart bot* predicts: it scores likely continuations from patterns in text it learned from, which is why it handles novelty — and why it can answer fluently and wrongly at once. The exam-style question is now an engineering one: *which does this task deserve?* Script bots are auditable, predictable and safe where the domain is closed; smart bots flex where language wanders — at the price of inventing, and of needing everything you will build in Chapter 3 to be judged honestly.

#task("T10-09", "Script Bot vs Smart Bot", mode: "group", mins: "20")[[
  Draw both flow diagrams for a *school office enquiry bot* (admission dates, bus routes, fee queries, lost property).
  #v(4pt)
  #grid(columns: (1fr, 1fr), column-gutter: 8pt,
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[DRAWING A — SCRIPT BOT]
      v(3pt)
      text(size: 10.1pt)[Boxes and arrows only: greeting → question type → the exact branches you would write → answers → handoff. Every branch drawn; nothing undrawn can happen.]
      v(3pt)
      drawbox(30mm)
    }),
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[DRAWING B — SMART BOT]
      v(3pt)
      text(size: 10.1pt)[One box that predicts, then the safety rails around it: what it must refuse to answer, when it must hand to a human, how its answers get checked.]
      v(3pt)
      drawbox(30mm)
    }),
  )
  #v(5pt)
  *The design decision:* for THIS office, which bot would you ship — and name the one question a parent could ask that breaks your choice? #ruled-lines(2, lead: 8.4mm)
  *Group verdict:* one argument for script that your group could not refute, and one for smart. Keep both — they return in the Chapter 5 brief.
]]

#myth("Bots understand language.")[They *map* language. A script bot matches patterns to canned replies; a smart bot predicts likely word sequences from statistics. Neither has a referent — no world the words point at. The proof is in T10-08: swap two synonyms a child handles effortlessly and watch the counts barely move. Understanding binds words to the world; models bind words to other words.]

#selfcheck(
  [I can explain what a machine receives — pixels and channel numbers — and why that makes some illusions work],
  [I can run a 3×3 kernel by hand and say what a feature map records],
  [I can normalise text and defend what normalisation throws away],
  [I can build a bag-of-words table and use TF-IDF logic to find the informative word],
  [I can decide where a script bot suffices and where a smart bot earns its risks],
)
#thinkink([A bot I use — school, shop or app. Its honest classification is script/smart because of the moment when …], lines: 2)

#note("Case notes — what changed in my thinking?")[
  Before this chapter "seeing" and "reading" felt like one magic ability. Now I can name the two number-pipelines — … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 2 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*A machine sees only numbers* — 0–255 per channel. Fool the numbers and you have fooled the machine.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Convolution = slide, multiply-and-add, record.* One kernel, one pattern; a CNN is stacks of them.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Normalisation first, counts second, TF-IDF third* — informative means frequent-here-rare-elsewhere.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Script bots recite trees; smart bots predict continuations* — neither understands, and the exam question is which the task deserves.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#chapter-checkpoint(2,
  [Your kernel response for one patch came out NEGATIVE. What did that patch look like — and what does the sign tell the next layer?],
  [After normalisation, "urgent" means the same in M1 and M2 — and that is a loss. Name what was lost and one feature that recovers it.],
  [The office bot question "will the bus wait if the flight is late?" breaks a script bot at the tree, and a smart bot at the truth. Explain both failures.],
)
#case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue about how machines see and read")

#homelink([
  With an adult, find one automated reply in your family's life — a helpline menu, a delivery bot, a complaint auto-response. Run the test together: ask it one question one step outside its script. Write down the exact failure — and whether it failed like a script bot (lost) or a smart bot (fluent nonsense). Bring the receipt of the conversation to class.
])
