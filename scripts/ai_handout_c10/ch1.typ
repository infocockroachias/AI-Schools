#import "template.typ": *
// ============================================================
//  CHAPTER 1 — MODELS EXPLAINED   (tasks 01–04)
// ============================================================
#chapter-opener(1, "Models Explained", "What exactly is the machine doing under there?",
  outcomes: ("10.U1", "10.L1"), strands: ("U", "L"),
  summary: [Every AI system you have met since Class 6 — spam filters, recommenders, voice assistants, screening tools — lives somewhere on one map. This chapter draws the map. You will sort ten real products into model families, meet the three great learning strategies (supervised, unsupervised, reinforcement), run all four learning jobs (classification, regression, clustering, association) on a kirana-store case, and then build a neural network the honest way: with your classmates as neurons, weights on paper, and a vote you can watch. No black boxes survive this chapter — and the ones that pretend to, you will now be able to name.],
  missions: "T10-01 – T10-04",
  link: "Links: Maths — functions & relations · Science — neuron models · Economics — market behaviour",
  extras: opener-extras(
    words: ("model family", "supervised learning", "unsupervised learning", "reinforcement learning", "weight"),
    warmup: [Your phone suggests "University" after "Delhi". One honest line: did it LEARN that from examples, or was it typed by hand? Keep the answer — page 4 settles it.],
    need: ("pencil", "ruler", "10 slips of paper"),
  ))

// ---------------- 1.1 ----------------
#sec(1, "The model family map")
Last year's great divide — rule-based versus learning-based — was the first cut. This year we make the map precise enough to place anything on it. *Rule-based* systems follow logic a person typed: every behaviour is visible, testable, and frozen until a human rewrites it. *Learning-based* systems tune themselves from examples — and the learning trunk splits three ways. In *supervised* learning, every training example arrives with the correct answer attached, so the system learns the link from input to known output. In *unsupervised* learning, no answers are supplied; the system searches for structure — groups, co-occurring pairs — that nobody labelled in advance. In *reinforcement* learning, the system acts, receives a reward or penalty, and adjusts its strategy over many rounds, like learning a game by playing it. Deep learning, the word behind most headlines, is not a fourth family: it is a *technique* for building the learning trunk with many stacked layers — which is why it inherits both the power and the data-hunger of that trunk.

#figure-visual("visuals/c10_ch1_model-families-map.png", [The model family map — two trunks, three branches, four jobs. T10-01 puts ten real products on it.])

#task("T10-01", "Model Map", mode: "pair", mins: "15", win: true)[
  Ten products sit in the list below. For each one: *which family, which branch — and what would have to be true about its training data?*
  #v(4pt)
  #grid(columns: (1fr, 1fr), column-gutter: 8pt, row-gutter: 6pt,
    ..range(10).map(i => {
      let items = ("a lift with floor buttons", "a spam filter", "an essay-writing chatbot", "a video app's 'people like you' feed", "a chess program that improves by playing itself", "a weather forecaster that estimates tomorrow's rainfall in mm", "a customer-support bot that only follows scripted menus", "a tool that groups library books by topic, with no labels given", "a kirana store's 'customers who bought rice also bought dal' rule", "a game agent that learns from points and penalties")
      box(fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 8pt, y: 5.5pt), {
        text(weight: 800, size: 10pt, fill: teal, str(i + 1) + ". " + items.at(i))
        v(1.5pt)
        text(size: 8.8pt, fill: ink-soft, style: "italic")[family / branch / one data question]
        ruled-lines(1, lead: 6.8mm)
      })
    })
  )
  #v(5pt)
  *The two hardest calls:* which pair of products will your class argue about most — and what single extra piece of information would settle it? #ruled-lines(2, lead: 8.2mm)
]
#wordpower(1, "rule-based system", [A system whose every behaviour follows rules written entirely by people.])
#wordpower(2, "supervised learning", [Learning from examples that come with correct answers attached.])

// ---------------- 1.2 ----------------
#sec(2, "Three ways to learn — same examples, three different conversations")
The three branches are not three technologies; they are three *conversations with the data*. Supervised learning asks: "here is the question and the answer — find the connection." Unsupervised learning asks: "here is a pile of raw examples — tell me what structure hides inside." Reinforcement learning asks: "here is a world that scores your moves — find a strategy." The same classroom data can feed all three, and each returns a different kind of useful. This is why professionals name the branch *before* collecting data: the branch decides what data is worth having, what "correct" means, and what the system can never tell you.

#task("T10-03", "Scenario Sort", mode: "group", mins: "15")[[
  Six scenarios are on the cards your teacher holds (or below). For each: *supervised, unsupervised, or reinforcement — and the one sentence that justifies it.*
  #v(4pt)
  #dtable(("Scenario", "My call", "The deciding sentence"),
    ([A tuition app marks practice answers right or wrong, then predicts which topics a student will fail], [], []),
    ([A city bus planner finds that weekend trips naturally fall into five rider groups it never named], [], []),
    ([A delivery drone learns routes by earning points for speed and losing them for crashes], [], []),
    ([A clinic labels 5,000 X-rays 'healthy' or 'needs review' and trains a checker], [], []),
    ([A music app discovers overnight that listeners of one singer often also save a second singer], [], []),
    ([A robot vacuum improves its room-coverage path as battery penalties and praise accumulate], [], []),
    widths: (1.6fr, 0.6fr, 1.4fr),
  )
  #v(5pt)
  *The trap to discuss:* two of these scenarios could plausibly run on a different branch. Which two — and what would change in the data collection if we switched? #ruled-lines(2, lead: 8.2mm)
]]
#wordpower(3, "unsupervised learning", [Finding structure in examples that carry no labels at all.])
#wordpower(4, "reinforcement learning", [Learning a strategy by acting, then adjusting to rewards and penalties.])

// ---------------- 1.3 ----------------
#sec(3, "The four learning jobs")
Inside the branches, systems do one of four *jobs*. *Classification* outputs a category: spam or not, healthy or needs-review. *Regression* outputs a number on a scale: tomorrow's demand in crates, marks to expect. *Clustering* outputs groups nobody pre-named: your class sorted by sleep habits, riders sorted by trip shape. *Association* outputs pairings: people who buy rice also buy dal. Classification and regression are supervised jobs; clustering and association are unsupervised jobs. When you meet a product, naming its job is the fastest route to its limits — a classifier has never heard of a number, and a regression will happily estimate a category if you let it.

#task("T10-04", "Market-Basket (Kirana Store) Associations", mode: "pair", mins: "15")[[
  The Karim kirana store's last 8 bills:
  #v(3pt)
  #dtable(("Bill", "Items bought together"),
    ([1], [rice, dal, oil]), ([2], [rice, dal, soap]), ([3], [rice, dal]), ([4], [bread, jam]),
    ([5], [rice, soap, oil]), ([6], [bread, jam, milk]), ([7], [rice, dal, soap]), ([8], [bread, milk]),
    widths: (0.3fr, 1.7fr),
  )
  #v(4pt)
  *a)* Count pair frequencies. Which two-item pair is the strongest association, and what is its confidence as a percentage of bills containing the first item? #ruled-lines(2, lead: 8mm)
  *b)* A sales app suggests "add soap" to every rice purchase. How often would it be wrong, using these bills? #ruled-lines(2, lead: 8mm)
  *c)* What is the *smallest change* to bill 3 or 4 that would break the rule — and does that worry you about rules built on 8 bills? #ruled-lines(2, lead: 8mm)
  *d)* Name one shop decision this association supports — and one it must NOT decide alone. #ruled-lines(2, lead: 8mm)
]]
#wordpower(5, "classification", [A learning job whose output is a category from a fixed list.])
#wordpower(6, "regression", [A learning job whose output is a number on a scale.])
#wordpower(7, "clustering", [A learning job that finds groups nobody named in advance.])
#wordpower(8, "association", [A learning job that finds items that keep appearing together.])

// ---------------- 1.4 ----------------
#sec(4, "Neural networks: layers of weighted votes")
Strip away the mystique and a neural network is arithmetic you can run. Each *neuron* multiplies its inputs by numbers called *weights*, adds the results, and passes the total through a simple squashing rule. Neurons sit in *layers*; each layer's outputs become the next layer's inputs. Training is nothing more mysterious than the slow search for better numbers in the lines. The power comes from stacking: early layers answer tiny questions (an edge in one corner of a photo, a frequent pair of syllables), and deeper layers combine those answers into bigger ones (a face, a phrase, an intent). The costs are just as real: deep stacks need enormous data, their reasoning resists simple explanation, and their confidence is not conscience.

#figure-visual("visuals/c10_ch1_neural-network.png", [One small network. Every line is a weight; bold lines dominate the vote. Training = searching for better numbers in the lines.])

#task("T10-02", "Human Neural Network", mode: "class", mins: "30", hands: true)[[
  Your class becomes the network. Three students are *inputs* holding a number card each (0 to 5). Four students are the *hidden layer*. Two are *outputs*.
  #v(4pt)
  *Round 1 — the forward pass.* Each hidden student picks one weight (0 to 1) per input, multiplies, adds, and writes the total. Output students repeat the step. *Record the whole pass in the table:*
  #v(3pt)
  #grid(columns: (1.4fr, 1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 5pt, row-gutter: 4.5pt,
    align: center,
    text(size: 9pt, weight: 800, fill: teal-deep)[connection], text(size: 9pt, weight: 800, fill: teal-deep)[h1], text(size: 9pt, weight: 800, fill: teal-deep)[h2], text(size: 9pt, weight: 800, fill: teal-deep)[h3], text(size: 9pt, weight: 800, fill: teal-deep)[h4], text(size: 9pt, weight: 800, fill: teal-deep)[out],
    ..(("x1 · value, weight, product"), ("x2 · value, weight, product"), ("x3 · value, weight, product"), ("hidden total passed on")).map(s => grid(columns: (1fr,), gutter: 0pt, box(fill: white, stroke: 0.7pt + line-soft, radius: 4pt, inset: (x: 6pt, y: 4pt), text(size: 9.2pt, s))))
  )
  #v(5pt)
  *Round 2 — train it.* The class sets a goal ("output y1 should exceed y2 for today's inputs"). Adjust ONE weight per trial. Run the pass again. How many trials to reach the goal? #ruled-lines(2, lead: 8.2mm)
  *Round 3 — the honest verdict.* What did the network do that a single if-then rule could not — and what did it do *worse* than the rule? #ruled-lines(2, lead: 8.2mm)
]]
#wordpower(9, "weight", [The adjustable number a neuron multiplies an input by — the 'strength' of a connection.])
#wordpower(10, "layer", [A row of neurons whose outputs feed the next row — depth comes from stacking.])

#myth("More layers always means smarter.")[More layers mean *more combinations*, not more sense. Depth helps only when the data is rich enough to feed every layer — otherwise deeper networks memorise noise and confidently mislabel. The honest sentence: layers buy *capacity*, and capacity must be paid for in data.]

#selfcheck(
  [I can place any product on the model-family map and defend the placement with one data question],
  [I can tell supervised, unsupervised and reinforcement apart by what each asks of its data],
  [I can name all four learning jobs and match each to a decision a shop or school could make],
  [I can run a forward pass by hand and explain what a weight does to the vote],
  [I can say what depth buys a network — and what it costs],
)
#thinkink([A system in my life I once called "smart". After this chapter, its honest description is a family, a branch and a job — they are …], lines: 2)

#note("Case notes — what changed in my thinking?")[
  Before this chapter I sorted machines by how impressive they sounded. Now I sort them by … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 1 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Two trunks first:* rule-based (a person wrote it) versus learning-based (it found the pattern). Every other word on the map is inside the learning trunk.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Three conversations with data:* supervised (answers attached), unsupervised (no labels), reinforcement (scored moves). Name the branch before collecting.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Four jobs:* classification (a category), regression (a number), clustering (un-named groups), association (appearing-together pairs).],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*A neural network* is layers of weighted votes — power from stacking, cost in data and explainability.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#chapter-checkpoint(1,
  [A chess app "that got better the more it played" and a lift controller are both 'AI' on your map. Name the placement of each — and the one question that separates them.],
  [The clinic X-ray checker (T10-03) is supervised. What exactly were the labels, and what could the system never learn from that dataset?],
  [In your human neural network, output y1 beat y2 after one weight changed. Explain — in the language of votes — why that small change could flip a decision.],
)
#case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue about model families")
