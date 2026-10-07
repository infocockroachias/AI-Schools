#import "template.typ": *
// ============================================================
//  BACK MATTER — MY AI WORDS · MY PROGRESS · CERTIFICATE (2 pp)
// ============================================================

// ---------------- GLOSSARY ----------------
#heading(level: 1, numbering: none)[My AI words]
#align(center, text(size: 10.3pt, fill: ink-soft, style: "italic")[The ten words on this case — each one met through an experience, never before.])
#v(10pt)

#let gloss(word, num, def) = box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 9.5pt, y: 8.5pt), stack(spacing: 3.5pt,
  grid(columns: (auto, auto, 1fr), align: (center, center, left), column-gutter: 5pt,
    box(fill: teal-soft, radius: 5pt, inset: (x: 5pt, y: 1.8pt), text(fill: teal, weight: 800, size: 8.4pt, str(num))),
    text(font: f-display, size: 12.7pt, weight: 800, fill: teal, word),
    [],
  ),
  text(size: 9.8pt, def),
  v(3pt),
  text(size: 8.4pt, fill: ink-soft, weight: 700, tracking: 0.05em)[USE IT IN MY OWN SENTENCE: #box(width: 72%, baseline: 30%, line(length: 100%, stroke: 0.55pt + line-soft))],
))

#grid(columns: (1fr, 1fr), column-gutter: 7pt, row-gutter: 6.5pt,
  gloss("algorithm", 1, [An exact list of steps that tells a machine how to do a task, one step at a time.]),
  gloss("automation", 2, [Work done by a machine that repeats fixed steps in the same way every time.]),
  gloss("artificial intelligence", 3, [Technology that lets machines do tasks that seem to need human intelligence.]),
  gloss("training examples", 4, [The examples we show a machine so that it can find patterns by itself.]),
  gloss("data", 5, [Collected facts about the world: numbers, words, pictures and sounds.]),
  gloss("pattern", 6, [Something that repeats in a way we can spot, describe and use.]),
  gloss("prediction", 7, [A smart guess about what comes next, based on a pattern.]),
  gloss("privacy", 8, [Keeping personal information shared only on purpose, with people you trust.]),
  gloss("verify", 9, [To check carefully whether something is true, using evidence and trusted sources.]),
  gloss("digital footprint", 10, [The trail of marks you leave behind when you post, like, share or search online.]),
)
#v(8pt)
#note("Detective's oath")[Machines *predict, match, estimate* — people *design, choose data and stay responsible*. When a machine speaks, I will ask my three questions: *How do I know? What is missing? Who made this?*]

// ---------------- PROGRESS + CERTIFICATE ----------------
#heading(level: 1, numbering: none)[My progress]
#align(center, text(size: 10.3pt, fill: ink-soft, style: "italic")[Shade honestly — detectives never fake evidence.])
#v(10pt)

#text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MY OUTCOME TRACKER — TICK WHEN YOU TRULY CAN DO IT]
#v(5pt)
#grid(columns: (1fr, 1fr), column-gutter: 12pt,
  ican((
    [6.U1 — say what AI is, and tell a learner from a fixed-rule machine],
    [6.U2 — name two human strengths and two machine strengths, with reasons],
    [6.D1 — name the four kinds of data; sort a table; draw a bar chart],
    [6.D2 — show how a simple picture becomes numbers on a grid],
    [6.L1 — find a pattern, predict the next step, say how sure I am],
  )),
  ican((
    [6.L2 — describe the three ways of learning with human stories],
    [6.W1 — point to AI at home, school and neighbourhood, and name its data],
    [6.R1 — use my five safety habits — every day, not just today],
    [6.R2 — explain why an AI answer can be wrong, and how to check it],
    [6.T1 — break a task into exact steps another person can follow],
  )),
)
#v(8pt)

#grid(columns: (1fr, auto), align: (left, right),
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[MY CASE FILES — SHADE A STAR PER CHAPTER FINISHED],
  text(size: 8.4pt, fill: ink-soft, style: "italic")[1 Machines · 2 Data · 3 Patterns · 4 Digital Citizen · 5 Capstone],
)
#v(4pt)
#grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 6pt,
  ..range(5).map(i => box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (y: 7pt), align(center + horizon, star(19pt, fill: teal-soft)) ))
)
#v(10pt)

// certificate panel
#block(width: 100%, box(width: 100%, stroke: 1.6pt + teal, radius: 5pt, inset: (x: 14pt, y: 12pt), {
  box(width: 100%, stroke: 0.5pt + teal-mid, radius: 5pt, inset: (x: 14pt, y: 14pt), {
    align(center)[
      #text(size: 9pt, weight: 800, fill: amber-deep, tracking: 0.22em)[PRATIMAI · AI HANDOUTS · CLASS 6]
      #v(3pt)
      #text(font: f-display, size: 20.9pt, weight: 800, fill: teal)[My AI Detective Certificate]
      #v(5pt)
      #text(size: 10.3pt, style: "italic")[This certifies that detective]
      #v(6pt)
      #line(length: 62%, stroke: 0.8pt + ink-soft)
      #v(2pt)
      #text(size: 8.6pt, fill: ink-soft, weight: 700, tracking: 0.12em)[DETECTIVE NAME]
      #v(6pt)
      #text(size: 10.1pt)[has completed the case file *“AI Around Me”* — Level 1 · NOTICE —
        solved all twenty missions, and promised to keep asking:
        *How do I know? · What is missing? · Who made this?*]
      #v(9pt)
      #grid(columns: (1fr, 1fr, 1fr), column-gutter: 10pt,
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 8.4pt, fill: ink-soft, weight: 700, tracking: 0.1em)[DATE] },
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 8.4pt, fill: ink-soft, weight: 700, tracking: 0.1em)[DETECTIVE'S SIGNATURE] },
        { line(length: 80%, stroke: 0.8pt + ink-soft); v(1.5pt); text(size: 8.4pt, fill: ink-soft, weight: 700, tracking: 0.1em)[GUIDE'S SIGNATURE] },
      )
    ]
  })
}))
#v(6pt)
#align(center, text(size: 8.8pt, fill: ink-soft)[Ready for the next case? Class 7 asks: *“How can a machine learn without being told the rules?”* — bring your badge.])
