#!/usr/bin/env python3
"""Round 2 fills: pre-pledge strips (p7) + post-pledge pocket cards (tail pages)."""

PRE_PLEDGE = {
"ai_handout_c8": '''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[THREE PLACES I WILL SPOT DATA THIS WEEK]
    v(3pt)
    text(size: 9.8pt)[An engineer plans with data that already exists. Name three places data about YOU is produced this week — and tick whether anyone asked:]
    v(4pt)
    grid(columns: (1fr, auto, auto), column-gutter: 8pt, row-gutter: 5pt, align: (horizon, center, center),
      text(size: 9.7pt)[1. #box(width: 82%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt, fill: ink-soft)[asked?],
      text(size: 8.8pt, fill: ink-soft)[aware?],
      text(size: 9.7pt)[2. #box(width: 82%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt)[Y / N],
      text(size: 8.8pt)[Y / N],
      text(size: 9.7pt)[3. #box(width: 82%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt)[Y / N],
      text(size: 8.8pt)[Y / N],
    )
  })''',
"ai_handout_c9": '''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[THREE NUMBERS I WILL DISTRUST THIS WEEK]
    v(3pt)
    text(size: 9.8pt)[An analyst's year starts with suspicion, not cynicism. List three numbers the world will show you this week — a fee, a claim, a score — and name the question you will ask each:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 8pt, row-gutter: 5pt, align: (horizon, horizon),
      text(size: 9.5pt, weight: 800, fill: teal)[1.],
      text(size: 9.7pt)[#box(width: 88%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt, fill: ink-soft)[my question →],
      text(size: 9.7pt)[#box(width: 88%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 9.5pt, weight: 800, fill: teal)[2.],
      text(size: 9.7pt)[#box(width: 88%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt, fill: ink-soft)[my question →],
      text(size: 9.7pt)[#box(width: 88%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 9.5pt, weight: 800, fill: teal)[3.],
      text(size: 9.7pt)[#box(width: 88%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt, fill: ink-soft)[my question →],
      text(size: 9.7pt)[#box(width: 88%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
    )
  })''',
"ai_handout_c10": '''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[MY BOARD-YEAR RHYTHM — THREE PERIODS, THREE PROMISES]
    v(3pt)
    text(size: 9.8pt)[This is a board year, and the designer's edge is rhythm, not cramming. Write the promise you are making for each stretch of the year — reread these lines at every chapter checkpoint:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 8pt, row-gutter: 5pt, align: (horizon, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, font: f-display, size: 8.2pt, weight: 800, "APR–JUL")),
      text(size: 9.7pt)[foundations I will not fake: #box(width: 74%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      box(fill: teal, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, font: f-display, size: 8.2pt, weight: 800, "AUG–NOV")),
      text(size: 9.7pt)[practice I will do under time, honestly: #box(width: 68%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      box(fill: amber, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, font: f-display, size: 8.2pt, weight: 800, "DEC–MAR")),
      text(size: 9.7pt)[revision I will run from my own notes, not borrowed ones: #box(width: 60%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
    )
  })''',
}

POST_PLEDGE = {
"ai_handout": '''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + amber, fill: amber-soft, inset: (x: 11pt, y: 9pt), {
    grid(columns: (auto, 1fr), column-gutter: 8pt, align: (left, horizon),
      ico("search", size: 10.5pt, fill: amber-deep),
      text(font: f-display, size: 11.6pt, weight: 800, fill: amber-deep)[MY QUESTION CARD — cut it out, keep it in your pencil box],
    )
    v(5pt)
    text(size: 10.2pt)[*1. How do I know?* #h(10pt) *2. What is missing?* #h(10pt) *3. Who made this?* #h(10pt) *4. What is the trick here?*]
    v(5.5pt)
    text(size: 9.7pt, style: "italic", fill: ink-soft)[Any time a machine — or an advertisement, or a forward — sounds too smart, the card comes out. Detectives are not people who know everything; they are people who keep asking.]
  })''',
"ai_handout_c8": '''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + amber, fill: amber-soft, inset: (x: 11pt, y: 9pt), {
    grid(columns: (auto, 1fr), column-gutter: 8pt, align: (left, horizon),
      box(fill: amber, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, font: f-display, size: 8.4pt, weight: 800, tracking: 0.1em, "CARD")),
      text(font: f-display, size: 11.6pt, weight: 800, fill: amber-deep)[The engineer's five questions — my pocket copy],
    )
    v(5pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 4.5pt, align: (left, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "1")),
      text(size: 9.8pt)[*How do I know?* — who measured, on what data?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "2")),
      text(size: 9.8pt)[*What is missing?* — which group never got a say?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "3")),
      text(size: 9.8pt)[*Who made this?* — and who profits from my trust?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "4")),
      text(size: 9.8pt)[*Who is missing?* — whose faces were never in the training set?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "5")),
      text(size: 9.8pt)[*What is the trick here?* — what would the honest test have been?],
    )
    v(5.5pt)
    text(size: 9.6pt, style: "italic", fill: ink-soft)[The question I will use most this year, and where I first plan to use it: #box(width: 52%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)]
  })''',
"ai_handout_c9": '''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + amber, fill: amber-soft, inset: (x: 11pt, y: 9pt), {
    grid(columns: (auto, 1fr), column-gutter: 8pt, align: (left, horizon),
      box(fill: amber, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, font: f-display, size: 8.4pt, weight: 800, tracking: 0.1em, "CARD")),
      text(font: f-display, size: 11.6pt, weight: 800, fill: amber-deep)[The analyst's five questions — my pocket copy],
    )
    v(5pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 4.5pt, align: (left, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "1")),
      text(size: 9.8pt)[*How do I know?* — what was measured, how, on whom?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "2")),
      text(size: 9.8pt)[*What is missing?* — which average, and what does it throw away?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "3")),
      text(size: 9.8pt)[*Who made this?* — who gains if I share it without checking?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "4")),
      text(size: 9.8pt)[*Who is missing?* — whose outcome was never counted?],
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "5")),
      text(size: 9.8pt)[*Correlation or cause?* — what else could explain the pattern?],
    )
    v(5.5pt)
    text(size: 9.6pt, style: "italic", fill: ink-soft)[The claim I intend to check first — and the question that will crack it: #box(width: 46%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)]
  })''',
}

TAIL_C10 = '''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + amber, fill: amber-soft, inset: (x: 11pt, y: 9pt), {
    grid(columns: (auto, 1fr), column-gutter: 8pt, align: (left, horizon),
      box(fill: amber, radius: 3pt, inset: (x: 6pt, y: 2pt), text(fill: white, font: f-display, size: 8.4pt, weight: 800, tracking: 0.1em, "CARD")),
      text(font: f-display, size: 11.6pt, weight: 800, fill: amber-deep)[The designer's seven questions — my pocket copy],
    )
    v(5pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 4.5pt, align: (left, horizon),
      box(fill: teal, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "1–5")),
      text(size: 9.8pt)[*How do I know? What is missing? Who made this? Who is missing? What is the trick here?*],
      box(fill: amber, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "6")),
      text(size: 9.8pt)[*Who is accountable when it fails — by name, in writing?*],
      box(fill: amber, radius: 3pt, inset: (x: 5.5pt, y: 1.5pt), text(fill: white, weight: 800, size: 9pt, "7")),
      text(size: 9.8pt)[*What evidence would change my mind?* — the line between a designer and a defender.],
    )
    v(5.5pt)
    text(size: 9.6pt, style: "italic", fill: ink-soft)[The system I will run all seven on first: #box(width: 58%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)]
  })
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[BEFORE EVERY CHECKPOINT — MY THREE RE-RATING HABITS]
    v(3pt)
    text(size: 9.8pt)[*1.* Re-rate with evidence, not mood — show the mission that proves the level. #h(8pt) *2.* Keep the old circle visible; the distance is the point. #h(8pt) *3.* One line on what changed my rating — the failure, the fix or the question.]
  })'''

import re
PLEDGE_END = "stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],\n    )\n  })"
PLEDGE_START = "\n  v(13pt)\n  block(width: 100%, breakable: false, radius: 5pt, stroke: 1.1pt + ink, fill: white, inset: (x: 12pt, y: 9pt), {"

for d in ["ai_handout", "ai_handout_c7", "ai_handout_c8", "ai_handout_c9", "ai_handout_c10"]:
    p = f"/home/z/my-project/scripts/{d}/front.typ"
    src = open(p).read()
    changed = []
    if d in PRE_PLEDGE:
        assert PLEDGE_START in src, d
        src = src.replace(PLEDGE_START, "\n" + PRE_PLEDGE[d] + PLEDGE_START, 1)
        changed.append("pre-pledge strip")
    if d == "ai_handout":
        assert PLEDGE_END in src, d
        src = src.replace(PLEDGE_END, PLEDGE_END + POST_PLEDGE[d], 1)
        changed.append("pocket card")
    if d in ("ai_handout_c8", "ai_handout_c9"):
        assert PLEDGE_END in src, d
        src = src.replace(PLEDGE_END, PLEDGE_END + POST_PLEDGE[d], 1)
        changed.append("pocket card")
    if d == "ai_handout_c10":
        # append after the rating-scale strip (end of preface) — anchor on its closing
        anchor = "keep the first circle visible so the distance stays honest.]\n  })"
        assert anchor in src, d
        src = src.replace(anchor, anchor + TAIL_C10, 1)
        changed.append("c10 tail card + habits")
    open(p, "w").write(src)
    print(d, changed)
