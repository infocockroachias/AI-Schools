#!/usr/bin/env python3
"""Append a 'My Starting Line' pledge block at the end of every journey map
(after the ican() list) to fill the journey-map tail page; c10 gets an extra strip."""

PLEDGE = {
"ai_handout": '''
  v(13pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + ink, fill: white, inset: (x: 12pt, y: 9pt), {
    grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      ico("seed", size: 10.5pt, fill: amber-deep),
      text(font: f-display, size: 12.4pt, weight: 800, fill: teal)[MY STARTING LINE — a pledge to myself],
      text(font: f-display, size: 8.1pt, fill: ink-soft, weight: 800, tracking: 0.12em)[2 MIN],
    )
    v(4.5pt)
    text(size: 10.1pt)[Fill this in *before* Mission 1 — you will read it again on the last page, and see how far the evidence took you.]
    v(5pt)
    text(size: 10.1pt)[One thing I already know about smart machines:] #ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[One question I want this book to answer for me:] #ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[One skill I promise to practise honestly — no copying, no skipping the write-ins:] #ruled-lines(1, lead: 8.6mm)
    v(6pt)
    grid(columns: 2, column-gutter: 16pt,
      text(size: 9.6pt)[Signed: #box(width: 62%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
      text(size: 9.6pt)[Date: #box(width: 55%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
    )
  })''',
"ai_handout_c7": '''
  v(13pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + ink, fill: white, inset: (x: 12pt, y: 9pt), {
    grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      ico("seed", size: 10.5pt, fill: amber-deep),
      text(font: f-display, size: 12.4pt, weight: 800, fill: teal)[MY STARTING LINE — a pledge to myself],
      text(font: f-display, size: 8.1pt, fill: ink-soft, weight: 800, tracking: 0.12em)[2 MIN],
    )
    v(4.5pt)
    text(size: 10.1pt)[Fill this in before Chapter 1 — you will read it again on the last page and check the evidence against the promise.]
    v(5pt)
    text(size: 10.1pt)[Two things I can already do with a learning machine:] #ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[One question about HOW machines learn that I want answered this year:] #ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[One habit I promise to keep — write everything down, even the wrong guesses:] #ruled-lines(1, lead: 8.6mm)
    v(6pt)
    grid(columns: 2, column-gutter: 16pt,
      text(size: 9.6pt)[Signed: #box(width: 62%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
      text(size: 9.6pt)[Date: #box(width: 55%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
    )
  })''',
"ai_handout_c8": '''
  v(13pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + ink, fill: white, inset: (x: 12pt, y: 9pt), {
    grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      box(fill: amber, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, font: f-display, size: 8.4pt, weight: 800, tracking: 0.1em, "DAY 1")),
      text(font: f-display, size: 12.4pt, weight: 800, fill: teal)[My starting line — a pledge to the plan],
      text(font: f-display, size: 8.1pt, fill: ink-soft, weight: 800, tracking: 0.12em)[2 MIN],
    )
    v(4.5pt)
    text(size: 10.1pt)[Fill this in before Chapter 1. On the last page you will re-read it next to your tallies — the gap between the two is this year's proof.]
    v(5pt)
    text(size: 10.1pt)[One real problem near me I would love to scope properly this year:] #ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[The data I suspect that problem already produces, without anyone collecting it:] #ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[My honesty clause — what I will do when a plan of mine fails its own test:] #ruled-lines(1, lead: 8.6mm)
    v(6pt)
    grid(columns: 2, column-gutter: 16pt,
      text(size: 9.6pt)[Signed: #box(width: 62%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
      text(size: 9.6pt)[Date: #box(width: 55%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
    )
  })''',
"ai_handout_c9": '''
  v(13pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + ink, fill: white, inset: (x: 12pt, y: 9pt), {
    grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      box(fill: amber, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, font: f-display, size: 8.4pt, weight: 800, tracking: 0.1em, "DAY 1")),
      text(font: f-display, size: 12.4pt, weight: 800, fill: teal)[My starting line — a pledge to the evidence],
      text(font: f-display, size: 8.1pt, fill: ink-soft, weight: 800, tracking: 0.12em)[2 MIN],
    )
    v(4.5pt)
    text(size: 10.1pt)[Fill this in before Chapter 1. The last page will ask for the year's evidence next to these lines — vague pledges fail audits.]
    v(5pt)
    text(size: 10.1pt)[One number in daily life whose average I now intend to distrust on sight:] #ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[One claim about AI I want to be able to *prove or refute* by June:] #ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[My honesty clause — how I will record results that contradict what I hoped for:] #ruled-lines(1, lead: 8.6mm)
    v(6pt)
    grid(columns: 2, column-gutter: 16pt,
      text(size: 9.6pt)[Signed: #box(width: 62%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
      text(size: 9.6pt)[Date: #box(width: 55%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
    )
  })''',
"ai_handout_c10": '''
  v(13pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + ink, fill: white, inset: (x: 12pt, y: 9pt), {
    grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      box(fill: amber, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, font: f-display, size: 8.4pt, weight: 800, tracking: 0.1em, "DAY 1")),
      text(font: f-display, size: 12.4pt, weight: 800, fill: teal)[My starting line — a pledge to the standard],
      text(font: f-display, size: 8.1pt, fill: ink-soft, weight: 800, tracking: 0.12em)[2 MIN],
    )
    v(4.5pt)
    text(size: 10.1pt)[Fill this in before Chapter 1. The Designer's Certificate at the back will ask for the evidence beside these lines.]
    v(5pt)
    text(size: 10.1pt)[One AI system in my life I intend to be able to *judge* — not just use — by June:] #ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[The metric-vs-cost question I expect to argue about this year, and with whom:] #ruled-lines(1, lead: 8.6mm)
    v(4pt)
    text(size: 10.1pt)[My integrity clause — the line I will not cross with generative tools, in my own words:] #ruled-lines(1, lead: 8.6mm)
    v(6pt)
    grid(columns: 2, column-gutter: 16pt,
      text(size: 9.6pt)[Signed: #box(width: 62%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
      text(size: 9.6pt)[Date: #box(width: 55%, stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],
    )
  })
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[HOW TO USE THE RATING SCALE — THE DESIGNER'S READING HABIT]
    v(3pt)
    text(size: 9.8pt)[Rate with *evidence*, not mood: a level you cannot demonstrate in the back tracker is a level you do not own yet. Designers rate low on purpose and show the fix — that habit, more than any single answer, is what the board year rewards. Re-rate after every chapter checkpoint; keep the first circle visible so the distance stays honest.]
  })''',
}

for d, block in PLEDGE.items():
    p = f"/home/z/my-project/scripts/{d}/front.typ"
    src = open(p).read()
    i = src.index("ican((")
    # find the closing of the ican list: the next "\n  ))" after i
    j = src.index("\n  ))", i) + len("\n  ))")
    src = src[:j] + block + src[j:]
    open(p, "w").write(src)
    print(d, "starting-line pledge appended")
