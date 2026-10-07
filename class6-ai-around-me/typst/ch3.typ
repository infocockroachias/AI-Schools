#import "template.typ": *
// ============================================================
//  CHAPTER 3 — PATTERNS & DECISIONS   (7 pp · tasks 10–13)
// ============================================================
#chapter-opener(3, "Patterns & Decisions", "How does a machine decide what to do next?",
  outcomes: ("6.L1", "6.T1", "6.R2"), strands: ("L", "T"),
  link: "Links: Maths — number patterns · English — clear questions")

// ---------------- 3.1 ----------------
#sec(1, "Patterns are clues")
A detective's sharpest tool is not a magnifying glass — it is *noticing*. A pattern is something that repeats in a way you can spot and use: day after night after day, 2-4-6-8, the same chorus after each verse. Machines live on patterns. A learning machine studies its *training examples*, and every *pattern* it finds becomes a rule it can use to make a *prediction* — a smart guess about what comes next. Notice the order: first the pattern, then the prediction, then a guess about how sure it is. You will do all three in the next mission, exactly like a machine, on paper.

#wordpower(6, "pattern", [Something that repeats in a way we can spot, describe and use.])
#wordpower(7, "prediction", [A smart guess about what comes next, based on a pattern.])

#task("T6-10", "Pattern Hunt", mode: "alone", mins: "10")[
  For each strip: write what comes next, then shade how sure you are (one circle = a wild guess, two = fairly sure, three = I could defend it in court).
  #v(5pt)
  #dtable(("The clues", "My prediction", "How sure?"),
    ([2 · 4 · 6 · 8 · ?], [ ], conf()),
    ([A · B · A · B · A · ?], [ ], conf()),
    ([● ■ ● ■ ● ■ ?], [ ], conf()),
    ([M · T · W · T · ?  (days of the week!)], [ ], conf()),
    ([1 · 2 · 4 · 8 · ?  (beware — this one doubles!)], [ ], conf()),
    ([J · F · M · A · ?  (months!)], [ ], conf()),
    widths: (72mm, 30mm, 40mm),
  )
  #v(5pt)
  *Which pattern fooled the most detectives in your class? Why?* #ruled-lines(1, lead: 8mm)
  *A pattern from my own life (clap rhythm, bus timings, cricket over…):* #ruled-lines(1, lead: 8mm)
]
#myth("AI knows everything — it is always right.")[
  A machine can only *predict* from patterns in the data it was given. If its data missed something, or was one-sided, it will make a wrong prediction — and still say it confidently. “Confident” and “correct” are two different words, and detectives never confuse them.]

// ---------------- 3.2 ----------------
#sec(2, "Guess my rule")
Here is a party trick that is secretly machine learning. One player thinks of a secret rule — say, “only even numbers may pass”. The others *test* the rule by offering numbers, and the rule-keeper answers only YES or NO. Slowly, from these *labelled examples*, the players work out the hidden pattern. That is exactly how a learning machine trains: test, answer, adjust, test again. Play at least two rounds with different rule-keepers.

#task("T6-11", "Guess My Rule", mode: "group", mins: "15")[
  One detective keeps a secret rule (examples your teacher may offer: *only even numbers · numbers bigger than 20 · numbers with a 3 in them · the letter must be a vowel*). Everyone else offers tests and records them below. When you think you know it, write the rule and let the rule-keeper grade you with a tick or cross.
  #v(4pt)
  #dtable(("Example I offered", "YES (allowed) or NO (not allowed)"),
    ([#box(width: 60mm, line(length: 100%, stroke: 0.55pt + line-soft))], [ ]),
    ([#box(width: 60mm, line(length: 100%, stroke: 0.55pt + line-soft))], [ ]),
    ([#box(width: 60mm, line(length: 100%, stroke: 0.55pt + line-soft))], [ ]),
    ([#box(width: 60mm, line(length: 100%, stroke: 0.55pt + line-soft))], [ ]),
    ([#box(width: 60mm, line(length: 100%, stroke: 0.55pt + line-soft))], [ ]),
    ([#box(width: 60mm, line(length: 100%, stroke: 0.55pt + line-soft))], [ ]),
    ([#box(width: 60mm, line(length: 100%, stroke: 0.55pt + line-soft))], [ ]),
    widths: (1fr, 52mm),
  )
  #v(5pt)
  *Our final guess at the rule:* #ruled-lines(1, lead: 8mm)
  *How many tests did we need before we were sure? Did any test mislead us?* #ruled-lines(2, lead: 8mm)
]
#note("Detective's note")[Did you notice? You never *told* the rule-keeper's rule to the group — they learned it from labelled examples, just like a machine. And just like a machine, you might have learned a rule that is *nearly* right. More tests = more confidence.]

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (x: 10pt, y: 8pt), {
  text(size: 8.4pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · TRACE THE MACHINE]
  v(2pt)
  text(size: 9.2pt)[This little machine sorts numbers using an exact *algorithm*. Trace each test number through it, step by step, and write what the machine answers.]
  v(3pt)
  grid(columns: (1fr, 1fr), column-gutter: 7pt,
    box(fill: teal-faint, radius: 0pt, inset: 8pt, stack(spacing: 3pt,
      text(size: 8.4pt, weight: 800, fill: teal, tracking: 0.06em, "THE MACHINE'S ALGORITHM"),
      text(size: 9.2pt)[
        #grid(columns: (auto, 1fr), column-gutter: 5pt, align: (center, left),
          box(fill: teal, radius: 0pt, inset: (x: 4.5pt, y: 1.4pt), text(fill: white, weight: 800, size: 7.6pt, "1")), [Look at the number.],
          box(fill: teal, radius: 0pt, inset: (x: 4.5pt, y: 1.4pt), text(fill: white, weight: 800, size: 7.6pt, "2")), [*If* it is even, answer “E” and stop.],
          box(fill: teal, radius: 0pt, inset: (x: 4.5pt, y: 1.4pt), text(fill: white, weight: 800, size: 7.6pt, "3")), [*If* it is odd *and* bigger than 10, answer “OB”.],
          box(fill: teal, radius: 0pt, inset: (x: 4.5pt, y: 1.4pt), text(fill: white, weight: 800, size: 7.6pt, "4")), [Otherwise, answer “OS”.],
        )
      ],
    )),
    box(fill: white, stroke: 0.7pt + line-soft, radius: 0pt, inset: 8pt, stack(spacing: 3pt,
      text(size: 8.4pt, weight: 800, fill: amber-deep, tracking: 0.06em, "TEST IT WITH…"),
      dtable(("Test number", "Machine's answer"),
        ([7], [ ]), ([12], [ ]), ([23], [ ]), ([48], [ ]), ([9], [ ]),
        widths: (34mm, 1fr),
      ),
    )),
  )
  v(4pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[*Which question should the machine ask FIRST to finish fastest — even, or bigger-than-10? Why?* #box(width: 78mm, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))]
}))

// ---------------- 3.3 ----------------
#sec(3, "If-then: the question tree")
When a machine must *decide*, it often follows a chain of if-then questions: *if* the answer to Question 1 is yes, go left; *if* no, go right. You already use if-then thinking every day: *if* it is raining, take the umbrella; *if* the light is red, wait. People draw this chain as a *question tree*, and playing “20 Questions” is exactly this — each good question splits the possibilities in half. A question tree is also a kind of *algorithm*: exact steps that anyone — human or machine — can follow to the same answer. The better each question splits the suspects, the shorter the tree.

#box(width: 100%, height: 62mm, {
  // connectors
  place(top + left, line(start: (88mm, 13mm), end: (46mm, 28mm), stroke: 0.8pt + teal-mid))
  place(top + left, line(start: (88mm, 13mm), end: (130mm, 28mm), stroke: 0.8pt + teal-mid))
  place(top + left, line(start: (46mm, 39mm), end: (24mm, 51mm), stroke: 0.8pt + teal-mid))
  place(top + left, line(start: (46mm, 39mm), end: (68mm, 51mm), stroke: 0.8pt + teal-mid))
  place(top + left, line(start: (130mm, 39mm), end: (108mm, 51mm), stroke: 0.8pt + teal-mid))
  place(top + left, line(start: (130mm, 39mm), end: (152mm, 51mm), stroke: 0.8pt + teal-mid))
  // yes / no labels
  place(top + left, dx: 59mm, dy: 17mm, text(size: 7.6pt, weight: 800, fill: green)[YES])
  place(top + left, dx: 113mm, dy: 17mm, text(size: 7.6pt, weight: 800, fill: red)[NO])
  place(top + left, dx: 27mm, dy: 42mm, text(size: 7.6pt, weight: 800, fill: green)[YES])
  place(top + left, dx: 60mm, dy: 42mm, text(size: 7.6pt, weight: 800, fill: red)[NO])
  place(top + left, dx: 111mm, dy: 42mm, text(size: 7.6pt, weight: 800, fill: green)[YES])
  place(top + left, dx: 144mm, dy: 42mm, text(size: 7.6pt, weight: 800, fill: red)[NO])
  // nodes
  place(top + left, dx: 68mm, dy: 2mm, box(width: 40mm, fill: teal, radius: 0pt, inset: (y: 3.5pt), align(center, text(fill: white, size: 8.6pt, weight: 800)[Does it fly?])))
  place(top + left, dx: 26mm, dy: 30mm, box(width: 40mm, fill: teal-mid, radius: 0pt, inset: (y: 3.5pt), align(center, text(fill: white, size: 8.6pt, weight: 800)[Does it have feathers?])))
  place(top + left, dx: 110mm, dy: 30mm, box(width: 40mm, fill: teal-mid, radius: 0pt, inset: (y: 3.5pt), align(center, text(fill: white, size: 8.6pt, weight: 800)[Does it live in water?])))
  place(top + left, dx: 9mm, dy: 52mm, box(width: 30mm, fill: amber-soft, radius: 0pt, stroke: 0.7pt + amber, inset: (y: 3.5pt), align(center, text(fill: amber-deep, size: 8.8pt, weight: 800)[CROW])))
  place(top + left, dx: 53mm, dy: 52mm, box(width: 30mm, fill: amber-soft, radius: 0pt, stroke: 0.7pt + amber, inset: (y: 3.5pt), align(center, text(fill: amber-deep, size: 8.8pt, weight: 800)[BUTTERFLY])))
  place(top + left, dx: 93mm, dy: 52mm, box(width: 30mm, fill: amber-soft, radius: 0pt, stroke: 0.7pt + amber, inset: (y: 3.5pt), align(center, text(fill: amber-deep, size: 8.8pt, weight: 800)[FISH])))
  place(top + left, dx: 137mm, dy: 52mm, box(width: 30mm, fill: amber-soft, radius: 0pt, stroke: 0.7pt + amber, inset: (y: 3.5pt), align(center, text(fill: amber-deep, size: 8.8pt, weight: 800)[CAT])))
})

#task("T6-12", "20-Questions Tree", mode: "pair", mins: "15")[
  Your six suspects: *cow · crow · fish · snake · cat · frog*. Draw a yes/no question tree that tells all six apart. Start every branch from one top question. The pair whose tree needs the *fewest* questions on average wins the round.
  #v(4pt)
  #drawbox(96mm, label: "draw your question tree here")
  #v(4pt)
  #dtable(("Animal", "Questions needed", "Animal", "Questions needed"),
    ([Cow], [ ], [Snake], [ ]),
    ([Crow], [ ], [Cat], [ ]),
    ([Fish], [ ], [Frog], [ ]),
    widths: (1fr, 34mm, 1fr, 34mm),
  )
  #v(4pt)
  *Our best first question (it split the suspects most evenly):* #ruled-lines(1, lead: 8mm)
  *A question that turned out to be useless, and why:* #ruled-lines(1, lead: 8mm)
]

// ---------------- 3.4 ----------------
#sec(4, "How sure am I?")
Real AI systems never just answer — they answer with a *confidence*: “cat, 62% sure”. Sometimes a machine is very confident and very wrong; sometimes it is unsure and right. People fall for the same trap: we shout answers we are proud of, and whisper the ones we doubt. Detectives practise *saying how sure they are*, out loud, every single time. It is the thinking habit that keeps humans — not machines — in charge of the judging.

#task("T6-13", "Sure or Not Sure?", mode: "class", mins: "10")[
  Your teacher reads six machine-style answers. For each one, mark its number on the confidence line where you think it belongs. Then the class debates the two that everyone placed differently.
  #v(6pt)
  #dtable(("#", "The machine says…", "Its claimed confidence"),
    ([1], [“The next number in 2-4-6-8 is 10.”], [95%]),
    ([2], [“This photo has a cat in it.”], [62%]),
    ([3], [“Tomorrow's highest temperature: 31°C.”], [78%]),
    ([4], [“Your name starts with the letter A.”], [40%]),
    ([5], [“This email is spam.”], [99%]),
    ([6], [“‘Recieve’ is the correct spelling.”], [97%]),
    ([7], [“Your class will have a test on Thursday.”], [55%]),
    ([8], [“The sun will rise tomorrow morning.”], [100%]),
    widths: (10mm, 1fr, 40mm),
  )
  #v(8pt)
  #box(width: 100%, height: 26mm, {
    let y0 = 14mm
    place(top + left, dx: 4mm, dy: y0, line(length: 168mm, stroke: 1pt + ink))
    for p in range(11) {
      let x = 4mm + p * 16.8mm
      place(top + left, dx: x, dy: y0 - 1.6mm, line(start: (0mm, 0mm), end: (0mm, 3.2mm), stroke: 0.7pt + ink-soft))
    }
    place(top + left, dx: 0mm, dy: y0 + 4mm, text(size: 7.6pt, weight: 800, fill: ink-soft)[0% — total guess])
    place(top + left, dx: 78mm, dy: y0 + 4mm, text(size: 7.6pt, weight: 800, fill: ink-soft)[50%])
    place(top + left, dx: 148mm, dy: y0 + 4mm, text(size: 7.6pt, weight: 800, fill: ink-soft)[100% — certain])
    place(top + left, dx: 4mm, dy: 1mm, text(size: 8.4pt, weight: 800, fill: teal)[Write each statement number where its confidence belongs →])
  })
  #v(4pt)
  *Statement #6 was 97% confident — and wrong! One reason a confident answer can still be wrong:* #ruled-lines(1, lead: 8mm)
  #v(3pt)
  #block(width: 100%, box(width: 100%, fill: white, stroke: 0.7pt + line-soft, radius: 0pt, inset: (x: 8pt, y: 7pt), {
    text(size: 8.4pt, weight: 800, fill: teal, tracking: 0.08em)[CLASS DEBATE — THE TWO WE PLACED DIFFERENTLY]
    v(2.5pt)
    text(size: 9.2pt)[Statement numbers we argued about: #h(6pt) #box(width: 14mm, baseline: 40%, line(length: 100%, stroke: 0.55pt + line-soft)) #h(4pt) and #h(4pt) #box(width: 14mm, baseline: 40%, line(length: 100%, stroke: 0.55pt + line-soft)) #h(8pt) The argument was worth it because… #box(width: 62mm, baseline: 40%, line(length: 100%, stroke: 0.55pt + line-soft))]
  }))
]

#thinkink([When my first prediction today was wrong, the real reason was … Next time before I answer, I will check by …], lines: 2)

#pagebreak()

#sec("", "Chapter 3 wrap-up — my case summary")
#block(width: 100%, box(width: 100%, fill: white, stroke: 0.8pt + line-soft, radius: 0pt, inset: (x: 10pt, y: 8pt), [
  #text(size: 8.4pt, weight: 800, fill: teal, tracking: 0.1em)[MY PATTERN GALLERY — PATTERNS I NOTICED THIS WEEK]
  #v(4pt)
  #grid(columns: (1fr, 1fr), column-gutter: 7pt,
    drawbox(34mm, label: "a pattern from nature or art"),
    drawbox(34mm, label: "a pattern from home or school"),
  )
  #v(5pt)
  *A pattern I found and the prediction it let me make:* #ruled-lines(2, lead: 8mm)
]))

#selfcheck(
  [I can find a pattern, predict what comes next, and say how sure I am],
  [I can test a hidden rule with examples until I am confident — like a machine trains],
  [I can draw a yes/no question tree that another pair can follow without my help],
  [I can explain why a confident answer is not always a correct answer],
)

#block(width: 100%, box(width: 100%, fill: teal-faint, radius: 0pt, stroke: (left: 2.5pt + teal, top: 0.6pt + line-soft, right: 0.6pt + line-soft, bottom: 0.6pt + line-soft), inset: (left: 11pt, right: 11pt, y: 8pt), [
  #text(font: f-display, size: 8.4pt, weight: 800, fill: teal-deep, tracking: 0.12em)[CHAPTER 3 CLUES — SAY IT BACK]
  #v(4pt)
  *A pattern* is … #ruled-lines(1, lead: 7.8mm)
  *A prediction* is … #ruled-lines(1, lead: 7.8mm)
  *Before I answer any question,* I will say how … #ruled-lines(1, lead: 7.8mm)
]))

