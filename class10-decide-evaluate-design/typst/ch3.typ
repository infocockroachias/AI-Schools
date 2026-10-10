#import "template.typ": *
// ============================================================
//  CHAPTER 3 — JUDGING A MODEL   (tasks 10–14)
// ============================================================
#chapter-opener(3, "Judging a Model", "Is it any good — good for whom, at what, judged how?",
  outcomes: ("10.E1", "10.S1"), strands: ("L",),
  summary: [Accuracy is the most quoted number in AI and the least examined. This chapter replaces the single number with a discipline: split the data so the test is honest, count the four fates of every prediction in a confusion matrix, compute precision and recall, and then make the decision that separates professionals from tourists — choosing which metric the *stakes* demand. You will dismantle a "99% accurate" claim with the base-rate trap, and learn the threshold slider that lets a team tune which error it prefers. By the end, you will never again accept a score without asking who was in the test set, who paid for each error, and what the number is hiding.],
  missions: "T10-10 – T10-14",
  link: "Links: Maths — percentages, ratios, conditional probability · Science — screening tests · Civics — accountability",
  extras: opener-extras(
    words: ("train/test split", "confusion matrix", "precision", "recall", "base rate"),
    warmup: [A message says: "Our AI detects a rare disease with 99% accuracy." Write the ONE question that, if answered, could make that number nearly worthless. Keep it — Section 3.4 answers it.],
    need: ("pencil", "ruler", "one deck of 20 slips (or chits) per pair", "calculator optional"),
  ))

// ---------------- 3.1 ----------------
#sec(1, "The honest exam: train/test split and leakage")
The first rule of judging: *the model must be tested on examples it has never seen.* Split your data — commonly four-fifths to train, one-fifth to test — and freeze the test set like an exam paper in a sealed envelope. The model may look at the training set as often as it likes; the test set gets one visit, at the end. The sin that ruins this is *leakage*: any way the test information sneaks into training — copying test rows into training, choosing features that secretly contain the answer, or tuning the model after peeking at the test score. A leaked test is not a hard exam; it is a photocopy of the answer key, and every percentage it produces is decoration.

#task("T10-10", "Split the Deck", mode: "pair", mins: "15", hands: true)[[
  Take 20 slips: 12 labelled SICK, 8 HEALTHY. Shuffle. Split 16 / 4 — train / test — *before touching anything else*. Your "model" is one rule you will pick by looking at training slips only.
  #v(4pt)
  #grid(columns: (1fr, 1fr), column-gutter: 8pt,
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[STEP BY STEP]
      v(3pt)
      text(size: 10.1pt)[*1.* Count your test deck: how many SICK / HEALTHY? Write it here — this is the answer key you must NOT consult:]
      ruled-lines(1, lead: 8mm)
      text(size: 10.1pt)[*2.* From the 16 training slips, find a rule: "predict SICK if \_\_\_". (There is no feature — decide what base rate alone supports: always-SICK? weighted guess?)]
      ruled-lines(2, lead: 8mm)
      text(size: 10.1pt)[*3.* Apply your rule to the 4 test slips. Predictions vs truth:]
      ruled-lines(2, lead: 8mm)
    }),
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[THEN ARGUE]
      v(3pt)
      text(size: 10.1pt)[*a)* A classmate peeks at the test slips "just to check the rule is reasonable", then keeps it. Which number is now fake, and why exactly?]
      ruled-lines(2, lead: 8mm)
      text(size: 10.1pt)[*b)* Another pair accidentally trained on all 20 slips and scored 95%. On the sealed 4, they might score what?]
      ruled-lines(2, lead: 8mm)
      text(size: 10.1pt)[*c)* Real leakage in the wild: choosing "days in hospital" as a feature to predict "is sick". Why does that feature contain the answer?]
      ruled-lines(2, lead: 8mm)
    }),
  )
  #v(4pt)
  *The sentence to keep:* a test set is a promise you make before you look — and the whole industry of inflated scores is the story of promises made after.
]]
#wordpower(18, "train/test split", [Holding back part of the data so the model is judged only on what it never saw.])

// ---------------- 3.2 ----------------
#sec(2, "The confusion matrix: four fates for every prediction")
Accuracy counts one thing: right or wrong. But a screening tool that misses disease and a spam filter that blocks your admission letter are both "wrong" — and not remotely the same. The confusion matrix splits the wreckage honestly. For a YES/NO model, every case lands in one of four cells: *true positive* (said yes, was yes), *true negative* (said no, was no), *false positive* (cried yes, was no), *false negative* (said no, was yes). From those four counts, every honest metric is a fraction — and the *choice* among them is where ethics enters the mathematics.

#figure-visual("visuals/c10_ch3_confusion-matrix.png", [One table, four fates, five honest numbers. The red strip is the decision most courses skip — and this book refuses to.])

#task("T10-11", "Confusion Matrix from 100 Cases", mode: "pair", mins: "20", hands: true)[[
  A uniform-check vision model ran on 100 students. Results: it flagged 50; 44 were genuinely out of uniform, 6 were dressed fine and wrongly flagged. Of the 50 it cleared, 40 were genuinely fine and 10 were out of uniform but missed.
  #v(4pt)
  *a)* Fill the matrix (TP / FP / FN / TN), labelling rows truth, columns prediction — and say what "positive" means in this setup. #writebox(24mm)
  *b)* Compute: accuracy, precision, recall. Show every fraction. #writebox(22mm)
  *c)* The sports teacher proposes the opposite: "flag anyone borderline". Predict what happens to FP, FN, precision and recall — direction only, no numbers. #ruled-lines(2, lead: 8mm)
  *d)* Who is harmed by each cell of YOUR matrix — name the person in each, and what they lose. #writebox(22mm)
]]
#wordpower(19, "confusion matrix", [The 2×2 table of what a model said versus what was true.])

// ---------------- 3.3 ----------------
#sec(3, "Choosing the metric: precision, recall and the stakes")
*Precision* measures the yes-column: of everything the model flagged, how much was real. *Recall* measures the yes-truth: of everything real, how much the model caught. They pull against each other — catch harder and you gain recall while false alarms erode precision; relax and precision climbs while misses grow. There is no universal winner; there is only *the cost of each error in this context*. Screening for a lethal disease: a missed case can kill, a false alarm costs one more test — chase recall. Blocking messages: a blocked admission letter is a disaster, a missed spam is a shrug — chase precision. A cheating detector chasing recall accuses innocents; a fraud detector chasing precision misses frauds. The metric is the ethical position, written as arithmetic.

#task("T10-12", "Precision vs Recall: Which Matters?", mode: "group", mins: "20")[[
  Three deployments, three debates. For each: *which metric should the team chase — and what error, in plain words, are they choosing to tolerate?*
  #v(4pt)
  #dtable(("Deployment", "Metric to chase", "The error we accept — and why"),
    ([1 · Cancer screening tool for a village health camp], [], []),
    ([2 · Spam filter for the principal's office inbox], [], []),
    ([3 · Exam cheating detector flagging papers for review], [], []),
    widths: (1.2fr, 0.7fr, 1.6fr),
  )
  #v(5pt)
  *The debate your teacher will love:* one member argues the OPPOSITE choice for row 1 — under what real-world constraint (medicine shortage? stigma? cost of the confirmatory test?) could their argument win? #ruled-lines(3, lead: 8.4mm)
  *The sentence to keep:* a metric is not a preference — it is a written record of whom the design is willing to hurt, and how often.
]]
#wordpower(20, "precision", [Of everything flagged, the fraction that was real — the cost of false alarms.])
#wordpower(21, "recall", [Of everything real, the fraction that was caught — the cost of misses.])

// ---------------- 3.4 ----------------
#sec(4, "The base-rate trap: why “99% accurate” can be almost useless")
Here is the trap that catches newsreaders, investors and principals alike. A rare disease affects 1 person in 1,000. A test is "99% accurate" — it is right about everyone, sick or healthy, 99 times in 100. Test 1,000 people: about 10 are sick. The test catches nearly all of them — but its 1% error rate also accuses about 10 *healthy* people. Look at the positives: roughly 10 true, roughly 10 false. Half the alarms are wrong. The base rate — how rare the condition is to begin with — quietly governs what a positive *means*. The general law: with rare conditions, even excellent tests produce mostly false alarms, and the rarer the condition, the worse the odds behind the headline.

#task("T10-13", "“99% Accurate”? The Base-Rate Trap", mode: "alone", mins: "15", win: true)[[
  Work the numbers. Disease affects 1 in 1,000. Test: 99% accurate both ways (it correctly reports 99% of the sick as sick, and 99% of the healthy as healthy).
  #v(3.5pt)
  *a)* In a tested population of 10,000: how many are truly sick? Truly healthy? #ruled-lines(2, lead: 8mm)
  *b)* How many true positives? How many false positives? (Show the two multiplications.) #ruled-lines(2, lead: 8mm)
  *c)* Of all people who test positive, what fraction is actually sick? Write it as a fraction and a percentage. #ruled-lines(2, lead: 8mm)
  *d)* Rewrite the advert in one honest sentence: "99% accurate — and yet …" #ruled-lines(2, lead: 8mm)
  *e)* Now the disease doubles to 2 in 1,000. What happens to your answer to (c) — and what does that tell you about base rates? #ruled-lines(2, lead: 8mm)
]]
#wordpower(22, "base rate", [How common a condition is before any test — the prior that quietly governs every positive.])

#myth("Accuracy is enough.")[Accuracy blends four different fates into one number — and hides who paid. A model that says "healthy" to everyone scores 99.9% on a population where the disease affects 1 in 1,000, while missing every single case. After this chapter you read four numbers, not one: the confusion matrix, then the metric the stakes choose.]

// ---------------- 3.5 ----------------
#sec(5, "The threshold slider: tuning which error you prefer")
Most models do not answer "yes" or "no"; they output a *score* — 0.82, 0.47, 0.63 — and a threshold line converts scores into decisions: above the line, flag; below, pass. Slide the threshold down and you flag more: recall rises, precision falls. Slide it up: precision rises, recall falls. The slider is where the Chapter 3 argument becomes an engineering act — the screening tool and the spam filter could share the same model and differ only in where the line sits. Choosing a threshold *is* choosing your false-positive budget, in public, with numbers attached.

#task("T10-14", "Threshold Slider on Paper", mode: "pair", mins: "15", hands: true)[[
  Ten patients scored by one model: A 0.94, B 0.88, C 0.71, D 0.66, E 0.55, F 0.49, G 0.38, H 0.30, I 0.22, J 0.11. Truth: A, B, C, D, G are sick; the rest healthy.
  #v(4pt)
  #dtable(("Threshold", "Flagged as sick", "TP · FP · FN · TN", "Precision", "Recall"),
    ([0.9], [], [], [], []),
    ([0.6], [], [], [], []),
    ([0.3], [], [], [], []),
    widths: (0.45fr, 0.9fr, 1fr, 0.6fr, 0.6fr),
  )
  #v(4pt)
  *a)* Complete the table. One row as a worked example for your partner, the rest verified by a second pencil. #ruled-lines(1, lead: 8mm)
  *b)* You are the health-camp lead from T10-12 row 1. Mark your chosen threshold with a star — and defend it against the pair who chose differently. #ruled-lines(2, lead: 8.2mm)
  *c)* The principal (T10-12 row 3's world) borrows your slider. Which end do they move it — and what do they write in their justification? #ruled-lines(2, lead: 8.2mm)
]]
#wordpower(23, "threshold", [The score line that turns a model's number into a yes-or-no decision.])

#selfcheck(
  [I can split data so the test stays honest — and name the leakages that fake a score],
  [I can build a confusion matrix from raw results and compute accuracy, precision and recall from it],
  [I can choose a metric for a context and defend it with the cost of each error],
  [I can dismantle a "99% accurate" headline using the base-rate trap],
  [I can predict what moving a threshold does to precision and recall — before computing it],
)
#thinkink([A headline score I have believed this year. After this chapter, the question I now bring to any such number is …], lines: 2)

#note("Case notes — what changed in my thinking?")[
  Before this chapter, a good percentage felt like a verdict. Now I treat every score as the beginning of … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 3 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Freeze the test set first* — a promise made before looking. Leakage is any backdoor from test to training.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Four fates, not one:* TP, FP, FN, TN. Every honest metric is a fraction of this matrix.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Precision buys trust in alarms; recall buys coverage of the truth* — the stakes pick which one you chase.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Rare condition + good test = mostly false alarms.* The base rate quietly governs what a positive means.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#chapter-checkpoint(3,
  [The uniform model's recall rose from 88% to 96% overnight. Name two things that could explain it — one honest, one that should get the model suspended.],
  [A village camp screens 5,000 people for a condition affecting 1 in 200, with a 98%-accurate test. Roughly how many false alarms — and why does the camp need to plan for them?],
  [Why is "we chose recall" NOT the same as "we chose the best metric"? Answer with the word 'cost' and one real stakeholder.],
)
#v(6pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 1pt + ink, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[THE METRIC CHEAT CARD — CUT IT OUT MENTALLY, KEEP IT FOREVER]
  v(4pt)
  dtable(("When the harm is…", "…the metric to chase", "The sentence I will say in the meeting"),
    ([a miss ruins a life (disease, smoke alarm, fraud loss)], [*recall* — catch nearly everything], ["We accept more false alarms; here is the budget for them."]),
    ([a false alarm ruins a life (accusation, blocked letter, locked account)], [*precision* — almost never cry wolf], ["We accept some misses; here is the human backstop for them."]),
    ([both errors cost real money, no lives], [*F1* — the balanced default], ["We optimise the balance and re-check each quarter."]),
    widths: (1.25fr, 0.85fr, 1.35fr),
  )
  v(3pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[And under every card, the Chapter 3 promise: the test set was sealed FIRST, the base rate was checked, and somebody owns each of the four cells by name.]
})
#v(6pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[RE-RATE YOURSELF — CHAPTER 3 EDITION]
  v(2.5pt)
  grid(columns: (1fr, 1fr), column-gutter: 8pt, row-gutter: 4pt,
    text(size: 9.6pt)[Split the deck, sealed first: E · D · P · A],
    text(size: 9.6pt)[Build the matrix, four fates: E · D · P · A],
    text(size: 9.6pt)[Choose the metric for the stakes: E · D · P · A],
    text(size: 9.6pt)[Dismantle a "99%" headline: E · D · P · A],
  )
  v(2.5pt)
  text(size: 9.4pt, fill: ink-soft, style: "italic")[Any row you would not circle P or A yet — name the mission you will re-run before the capstone:]
  ruled-lines(1, lead: 8mm)
})
#case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue about judging a model")

#homelink([
  With an adult, find one health, weather or safety claim in this week's news that quotes an accuracy or a percentage. Together, apply the base-rate question: rare or common, tested on whom, and what does a positive actually mean here? Write the one-line verdict you would print under the headline — and bring it for the Chapter 4 wall.
])
