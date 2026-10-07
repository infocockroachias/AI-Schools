#import "template.typ": *
// ============================================================
//  CHAPTER 4 — BE A SMART DIGITAL CITIZEN   (6 pp · tasks 14–17)
// ============================================================
#chapter-opener(4, "Be a Smart Digital Citizen", "How do I enjoy the online world — and stay safe, kind and honest?",
  summary: [Smart detectives stay safe, kind and honest — online as everywhere. You will sort personal information with a privacy traffic light, cook unguessable practice passphrases, run the three-check Real-or-Fake detector on suspect cards, and follow one drawing's digital footprint as it travels the internet.],
  missions: "T6-14 – T6-17",
  outcomes: ("6.R1", "6.R2"), strands: ("R",),
  link: "Links: Social Science — community life · English — checking facts")

// ---------------- 4.1 ----------------
#sec(1, "Privacy: my information, my choice")
Every time you use a game, an app or a website, somebody is collecting *data* — and some of that data is *about you*. Your name, your school, your street, your photos, even your jokes: this is *personal information*, and you get to decide who may see it. *Privacy* means keeping personal things shared only on purpose, with people you trust. Machines that learn from data cannot judge what *should* stay private — that judgement is a human job, and from today it is yours.

#wordpower(8, "privacy", [Keeping personal information shared only on purpose, with people you trust.])

#task("T6-14", "Privacy Traffic Light", mode: "alone", mins: "10")[
  Sort the ten items into three lights. GREEN = okay to share freely · YELLOW = ask a grown-up first · RED = never share with apps, strangers or websites. Write each item's number in the right column.
  #v(5pt)
  #dtable(("The ten items",),
    ([1 my favourite colour   ·   2 my full name and school   ·   3 a photo of my home street   ·   4 my favourite game   ·   5 my phone number   ·   6 a drawing I made of a cat   ·   7 my home address   ·   8 my best friend's secret   ·   9 my password   ·   10 my class timetable],),
    widths: (1fr),
  )
  #v(5pt)
  #grid(columns: (1fr, 1fr, 1fr), column-gutter: 6pt,
    ..range(3).map(i => {
      let cols = ((green, "GREEN", "share freely"), (rgb("#D9A400"), "YELLOW", "ask a grown-up first"), (red, "RED", "never share"))
      let items = (([4], [1], [6], [10]), ([2], [8]), ([3], [5], [7], [9]))
      // NOTE: students write here — boxes stay empty
      box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8pt, y: 7pt), stack(spacing: 3pt,
        grid(columns: (auto, auto), column-gutter: 4pt, align: (center, left),
          circle(radius: 5.5pt, fill: cols.at(i).at(0)),
          { text(weight: 800, size: 11pt, fill: cols.at(i).at(0), cols.at(i).at(1)); v(0.5pt); text(size: 8.1pt, fill: ink-soft, cols.at(i).at(2)) },
        ),
        writebox(36mm),
      ))
    })
  )
  #v(4pt)
  *One item was hard to place, because…* #ruled-lines(2, lead: 8.8mm)
]
#note("Detective's note")[Strangers online are exactly like strangers anywhere: mostly ordinary people, sometimes not. The rule does not change — personal information goes only to people your grown-ups trust, no matter how friendly a screen looks.]

// ---------------- 4.2 ----------------
#sec(2, "Passphrases: long and strange wins")
A short password like `riya123` is cracked in seconds by a machine that simply tries every combination — that machine is doing *automation*, fixed steps, millions per minute. What defeats it is a *passphrase*: three or more *unrelated* words glued together, long enough that guessing would take centuries. The strange words do not need to make sense — they need to be *long, unrelated to you, and known only by you*.

#task("T6-15", "Password Recipe", mode: "pair", mins: "10")[
  Cook up a *practice* passphrase using the recipe: pick one word from each column, add your favourite two-digit number and a symbol. Example: “Rickshaw-Monsoon-Pencil-42!”. Write it, then rate it. *Never write your real password anywhere — and never show this page's passphrase to anyone outside your pair.*
  #v(5pt)
  #dtable(("Pick one from each column", "A", "B", "C"),
    ([], [Rickshaw], [Monsoon], [Pencil]),
    ([], [Cricket], [Thunder], [Mango]),
    ([], [Peacock], [Banyan], [Lantern]),
    ([], [Kite], [Pepper], [Compass]),
    widths: (34mm, 1fr, 1fr, 1fr),
  )
  #v(2pt)
  *Our practice passphrase:* #ruled-lines(1, lead: 9.4mm)
  *Two reasons it is strong:* #ruled-lines(2, lead: 8.8mm)
  #v(2pt)
  #grid(columns: (1fr, 1fr), column-gutter: 7pt,
    box(fill: amber-soft, radius: 5pt, inset: 7pt, text(size: 9.7pt)[*Too weak:* names, birthdays, phone numbers, “123456”, your favourite team — machines guess these first.]),
    box(fill: teal-faint, radius: 5pt, inset: 7pt, text(size: 9.7pt)[*Strong:* 12+ characters, unrelated words, mixed with numbers and symbols, changed if ever shared.]),
  )
  #v(5pt)
  #block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 8pt, y: 7pt), {
    text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.08em)[DETECTIVE DRILL · RATE THESE TWO PRACTICE PASSPHRASES]
    v(3pt)
    dtable(("The practice passphrase", "Strong or weak?", "Why?"),
      ([riya123], [ ], [ ]),
      ([Rickshaw-Monsoon-Pencil-42!], [ ], [ ]),
      ([AJAY2015], [ ], [ ]),
      ([Green-Onion-Tiger-77?], [ ], [ ]),
      widths: (58mm, 30mm, 1fr),
    )
  }))
]

// ---------------- 4.3 ----------------
#sec(3, "Real or fake? Be the detector")
The online world is full of edited photos, forwarded rumours and — increasingly — pictures and text made by AI. None of this means the internet is bad; it means every good detective needs a checking routine. Professionals call it *verification*, and it needs only three questions: *Where is it from? (source) · What is the evidence? · How does it try to make me feel?* If a message makes your heart race — fear, anger, “forward this NOW!” — that rushing feeling is exactly when you should slow down and verify.

#wordpower(9, "verify", [To check carefully whether something is true, using evidence and trusted sources.])

#note("Detective's note — AI answers can be wrong")[
  An AI answer can be wrong for a simple reason: the machine *predicts* from patterns in its training data, it does not *know* things the way people do. If its data was one-sided, messy or old, its answer will show it. One way to check any answer — human or machine: *verify with a second source* before you believe or forward it.] 

#task("T6-16", "Real or Fake Detective", mode: "group", mins: "15")[
  Your teacher shows three printed cards (or use these three suspects). Apply the three checks to each: *source · evidence · emotion*. Give a verdict: REAL, FAKE, or NOT SURE — and “not sure” is an honest detective's answer when evidence is missing!
  #v(4pt)
  #grid(columns: (1fr, 1fr, 1fr), column-gutter: 6pt,
    ..range(3).map(i => {
      let cards = (
        ("CARD A", [A photo of a dog — but it has five legs and very odd fur. Forwarded with “Amazing new breed!”.], ),
        ("CARD B", [“Forward this to 10 friends in 10 minutes or your account will be closed tomorrow!!!”], ),
        ("CARD C", [A poster claims “Scientists say our city's air is the cleanest ever” — with no scientist's name, no date, no source.], ),
      )
      box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: 8pt, stack(spacing: 3pt,
        text(font: f-display, fill: teal, weight: 800, size: 9.5pt, tracking: 0.1em, cards.at(i).at(0)),
        text(size: 9.8pt, cards.at(i).at(1)),
      ))
    })
  )
  #v(5pt)
  #dtable(("Card", "Our verdict (REAL / FAKE / NOT SURE)", "Which check helped most?"),
    ([A], [ ], [ ]),
    ([B], [ ], [ ]),
    ([C], [ ], [ ]),
    widths: (16mm, 1fr, 1fr),
  )
  #v(4pt)
  *One thing on this page that a machine might believe but a detective should doubt:* #ruled-lines(1, lead: 8.8mm)
  #v(3pt)
  #drawbox(34mm, label: "design one more suspect card — swap with another pair and detect theirs!")
]

// ---------------- 4.4 ----------------
#sec(4, "Your digital footprint")
Imagine walking on a beach of soft sand: every step leaves a mark, and some marks stay long after you have gone. Everything you post, like, share or search leaves a mark too — a *digital footprint*. Footprints are not automatically bad: your kind comments and your good work can travel far and make people smile. But a footprint is hard to erase — one screenshot, one forward, and a moment you meant for two friends can be standing in front of a whole school. Post like the whole world is watching, because one day it might be.

#wordpower(10, "digital footprint", [The trail of marks you leave behind when you post, like, share or search online.])

#task("T6-17", "Footprint Walk", mode: "alone", mins: "10")[
  Follow one imaginary post — “You post a drawing for the school contest” — and watch it travel. For each hop, note *who can see it now* and whether you could still take it back.
  #v(5pt)
  #dtable(("Hop", "Who can see my drawing now?", "Can I take it back? (YES / NO)"),
    ([1 · I post it for the contest], [ ], [ ]),
    ([2 · My class group forwards it], [ ], [ ]),
    ([3 · My teacher saves it for the website], [ ], [ ]),
    ([4 · The school website shows it], [ ], [ ]),
    ([5 · A cousin shares it to family far away], [ ], [ ]),
    ([6 · Unknown accounts copy it], [ ], [ ]),
    widths: (58mm, 1fr, 44mm),
  )
  #v(4pt)
  *One habit that keeps a footprint kind and small:* #ruled-lines(1, lead: 8.8mm)
  *My footprint promise this month:* #ruled-lines(2, lead: 8.8mm)
]

// kindness + habits
#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · WRITE THE KIND REPLY]
  v(2pt)
  text(size: 10.1pt)[A classmate posts one of these in the class group. What is a kind, helpful reply? Write one — it must pass the T.H.I.N.K. check!]
  v(3pt)
  dtable(("The post…", "My kind reply"),
    ([“I came last in the spelling test. I am so bad at everything.”], [ ]),
    ([“Look at this photo I took of our school garden!”], [ ]),
    ([“Nobody wants to be my science partner.”], [ ]),
    widths: (62mm, 1fr),
  )
}))
#block(width: 100%, box(width: 100%, fill: teal, radius: 5pt, clip: true, inset: (x: 11pt, y: 9pt), {
  text(font: f-display, size: 13.2pt, weight: 800, fill: white)[Before you post — run the T.H.I.N.K. check]
  v(4pt)
  grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 5pt,
    ..range(5).map(i => {
      let letters = ("T", "H", "I", "N", "K")
      let words = ("Is it True?", "Is it Helpful?", "Is it Inspiring?", "Is it Necessary?", "Is it Kind?")
      box(fill: white.transparentize(88%), radius: 5pt, inset: (x: 5pt, y: 5pt), stack(spacing: 2pt,
        text(font: f-display, fill: amber, size: 16.5pt, weight: 800, letters.at(i)),
        text(size: 8.6pt, fill: white, words.at(i)),
      ))
    })
  )
  v(4pt)
  text(size: 9.2pt, fill: rgb("#CFE3E8"), style: "italic")[If any answer is NO — hold the post, detective. Screens can be big; kindness is bigger.]
}))
#v(4pt)
#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, weight: 800, fill: teal-deep, tracking: 0.12em)[MY FIVE SAFETY HABITS — SAY THEM OUT LOUD]
  v(3pt)
  grid(columns: (1fr, 1fr, 1fr, 1fr, 1fr), column-gutter: 4pt,
    ..range(5).map(i => {
      let habits = ("Private info stays private", "Long, strange passphrases", "Think before posting", "Be kind — always", "Check before believing")
      stack(spacing: 2.5pt,
        align(center, box(fill: teal-soft, radius: 5pt, width: 15pt, height: 15pt, align(center + horizon, text(fill: teal, weight: 800, size: 9.5pt, str(i + 1))))),
        align(center, text(size: 8.5pt, weight: 700, fill: ink, habits.at(i))),
      )
    })
  )
}))
#myth("Bigger screen = smarter machine.")[
  Smartness comes from *data and patterns*, not screen size. A tiny speaker can run a powerful learner, and a giant TV can be completely ordinary. Judge a machine by what it *learned from* — never by how big it looks.]

#selfcheck(
  [I can sort personal information into share / ask-first / never-share, and explain why],
  [I can build a strong practice passphrase — and I know never to write my real one down],
  [I can run the three checks (source · evidence · emotion) on anything doubtful],
  [I can explain my digital footprint to a younger student in two sentences],
  [I use the T.H.I.N.K. check before I post — and I can prove it],
)
#thinkink([One habit I will start this week is … because last week I saw / did …], lines: 3)
