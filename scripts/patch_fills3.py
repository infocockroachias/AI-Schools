#!/usr/bin/env python3
"""Round 3 whitespace fills: one purposeful strip per flagged page across the five books."""

def ins(path, anchor, block, before=False):
    src = open(path).read()
    assert anchor in src, (path, anchor[:60])
    if before:
        src = src.replace(anchor, block + "\n" + anchor, 1)
    else:
        src = src.replace(anchor, anchor + "\n" + block, 1)
    open(path, "w").write(src)
    print(path.split("/")[-2], path.split("/")[-1], "filled")

B = "/home/z/my-project/scripts"

# 1. c6 ch1 p14 — home-link after T6-04
ins(f"{B}/ai_handout/ch1.typ",
    '*The class\'s most surprising idea was…* #ruled-lines(1, lead: 8.8mm)\n]',
'''#homelink[Ask a grown-up: "Which one job would you NEVER hand to a machine — and why?" Write their reason, then your smartest counter-question:
#v(3pt)
#ruled-lines(2, lead: 8.2mm)]''')

# 2. c7 ch1 p16 — predict strip after 1.5 intro
ins(f"{B}/ai_handout_c7/ch1.typ",
    "build AI spend most of their time not on the machine, but on *choosing the examples*.",
'''
#note("Predict before you peek")[T7-05 is next. Before you turn anything, predict in one line: what will the ONE wrong example make the machine do? Then check yourself against the task.]
#v(2pt)
#ruled-lines(1, lead: 8.4mm)''')

# 3. c7 ch1 p18 — toolkit earned strip after MY THREE MACHINES table
src = open(f"{B}/ai_handout_c7/ch1.typ").read()
i = src.index("MY THREE MACHINES — NAME THEM, JOB THEM, LIMIT THEM")
# fallback anchor: insert before the next '#note(' or section after the table
nxt = len(src)
for marker in ("\n#note(", "\n// ", "\n#sec("):
    p2 = src.find(marker, i)
    if p2 != -1 and p2 < nxt: nxt = p2
block3 = '''
#v(6pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[CHAPTER 1 TOOLKIT — WHAT I EARNED]
  v(3pt)
  grid(columns: (1fr, 1fr), column-gutter: 10pt, row-gutter: 4.5pt,
    text(size: 9.8pt)[#box(width: 4.2mm, height: 4.2mm, stroke: 0.9pt + ink, radius: 1.5pt) #h(4pt) classification — my example: #box(width: 62%, stroke: (bottom: 0.7pt + ink-soft)) h(3pt)],
    text(size: 9.8pt)[#box(width: 4.2mm, height: 4.2mm, stroke: 0.9pt + ink, radius: 1.5pt) #h(4pt) regression — my example: #box(width: 66%, stroke: (bottom: 0.7pt + ink-soft)) h(3pt)],
    text(size: 9.8pt)[#box(width: 4.2mm, height: 4.2mm, stroke: 0.9pt + ink, radius: 1.5pt) #h(4pt) clustering — my example: #box(width: 65%, stroke: (bottom: 0.7pt + ink-soft)) h(3pt)],
    text(size: 9.8pt)[#box(width: 4.2mm, height: 4.2mm, stroke: 0.9pt + ink, radius: 1.5pt) #h(4pt) train ≠ test — because: #box(width: 60%, stroke: (bottom: 0.7pt + ink-soft)) h(3pt)],
  )
})'''
src = src[:nxt] + block3 + src[nxt:]
open(f"{B}/ai_handout_c7/ch1.typ", "w").write(src)
print("c7 ch1 toolkit strip inserted")

# 4. c7 ch5 p53 — extra drill row
ins(f"{B}/ai_handout_c7/ch5.typ",
    "  [A mango tree gave 12, then 15, then 21, then 26 mangoes each week? Next week?]",
    "  [Our canteen sold 120 plates Monday, 118 Tuesday, 123 Wednesday. Plates on Friday — and how sure?]",
    before=True)

# 5. c8 ch1 p15 — loop spotter after LOOP IN ONE MINUTE
src = open(f"{B}/ai_handout_c8/ch1.typ").read()
i = src.index("THE LOOP IN ONE MINUTE")
nxt = len(src)
for marker in ("\n#task(", "\n#note(", "\n// ", "\n#sec(", "\n#wordpower("):
    p2 = src.find(marker, i)
    if p2 != -1 and p2 < nxt: nxt = p2
block5 = '''
#v(4pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[LOOP SPOTTER — RUN THE CYCLE ON YOUR OWN CLASS 7 SURVEY]
  v(3pt)
  text(size: 9.8pt)[Which of the four stages did your Class 7 survey machine do *worst* — and what would Stage 4 (reflect and improve) have changed first?]
  v(3pt)
  #ruled-lines(2, lead: 8mm)
})'''
src = src[:nxt] + block5 + src[nxt:]
open(f"{B}/ai_handout_c8/ch1.typ", "w").write(src)
print("c8 ch1 loop spotter inserted")

# 6. c8 ch3 p40 — match rule in my words
src = open(f"{B}/ai_handout_c8/ch3.typ").read()
i = src.index("*Your turn — one product from my own week:*")
nxt = len(src)
for marker in ("\n#task(", "\n#note(", "\n// ", "\n#sec(", "\n#wordpower("):
    p2 = src.find(marker, i)
    if p2 != -1 and p2 < nxt: nxt = p2
block6 = '''
#v(5pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 10pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[THE MATCHING RULE, IN MY WORDS]
  v(3pt)
  text(size: 9.8pt)[Complete it once, from memory — no peeking at the strip above: "Start from the problem, not the tool, because …"]
  v(3pt)
  #ruled-lines(1, lead: 8.2mm)
})'''
src = src[:nxt] + block6 + src[nxt:]
open(f"{B}/ai_handout_c8/ch3.typ", "w").write(src)
print("c8 ch3 match-rule strip inserted")

# 7. c8 ch4 p53 — court prep after 4.3 intro
ins(f"{B}/ai_handout_c8/ch4.typ",
    "So: court is now in session.",
'''
#v(4pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 10pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[COURT PREP — MY FIRST CASE NOMINATION]
  v(3pt)
  text(size: 9.8pt)[Before the session opens: which real AI decision near you would you bring to this court first, and who should sit in the jury?]
  v(3pt)
  #ruled-lines(2, lead: 8mm)
})''')

# 8. c9 front p8 — first impressions after pocket card
PLEDGE_END = "stroke: (bottom: 0.7pt + ink-soft)) h(6pt)],\n    )\n  })"
src = open(f"{B}/ai_handout_c9/front.typ").read()
i = src.rindex(PLEDGE_END)
block8 = '''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[FIRST IMPRESSIONS — THE ANALYST'S FLIP TEST]
    v(3pt)
    text(size: 9.8pt)[Flip through this book for two minutes, like an auditor meeting a new client. Three things I noticed that I intend to question later:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 5pt, align: (horizon, horizon),
      text(size: 9.5pt, weight: 800, fill: teal)[1.], text(size: 9.7pt)[#box(width: 90%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 9.5pt, weight: 800, fill: teal)[2.], text(size: 9.7pt)[#box(width: 90%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 9.5pt, weight: 800, fill: teal)[3.], text(size: 9.7pt)[#box(width: 90%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
    )
  })'''
src = src[:i] + PLEDGE_END + block8 + src[i+len(PLEDGE_END):]
open(f"{B}/ai_handout_c9/front.typ", "w").write(src)
print("c9 front flip-test inserted")

# 9. c9 ch2 p22 — headline three-faces after Motive detector strip
src = open(f"{B}/ai_handout_c9/ch2.typ").read()
i = src.index("Motive detector, one glance")
nxt = len(src)
for marker in ("\n#task(", "\n#note(", "\n// ", "\n#sec(", "\n#wordpower("):
    p2 = src.find(marker, i)
    if p2 != -1 and p2 < nxt: nxt = p2
block9 = '''
#v(5pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[TODAY'S NUMBER, THREE FACES]
  v(3pt)
  text(size: 9.8pt)[Copy one number-claim from this week's news and run the three-face check on it — competence, method, motive — then name the face that decided you:]
  v(4pt)
  grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 4.5pt, align: (left, horizon),
    text(size: 9.5pt, weight: 800, fill: teal)[claim], text(size: 9.7pt)[#box(width: 90%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
    text(size: 9.5pt, weight: 800, fill: teal)[faces], text(size: 9.7pt)[competence #box(width: 24%, stroke: (bottom: 0.7pt + ink-soft)) #h(6pt) method #box(width: 24%, stroke: (bottom: 0.7pt + ink-soft)) #h(6pt) motive #box(width: 24%, stroke: (bottom: 0.7pt + ink-soft)) h(3pt)],
    text(size: 9.5pt, weight: 800, fill: teal)[decider], text(size: 9.7pt)[#box(width: 90%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
  )
})'''
src = src[:nxt] + block9 + src[nxt:]
open(f"{B}/ai_handout_c9/ch2.typ", "w").write(src)
print("c9 ch2 three-faces inserted")

# 10. c9 ch4 p52 — verify-it receipt after the figure
ins(f"{B}/ai_handout_c9/ch4.typ",
    '#figure-visual("visuals/c9_ch4_verifyit-flowchart.png", [The Verify-It routine as a three-phase flow: meet the claim, run the checks, deliver the verdict — with sources attached.], width: 92%)',
'''
#v(4pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 10pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[MY VERIFY-IT RECEIPT — ONE CLAIM FROM MY FAMILY GROUP]
  v(3pt)
  grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 4.5pt, align: (left, horizon),
    text(size: 9.5pt, weight: 800, fill: teal-deep)[claim], text(size: 9.7pt)[#box(width: 89%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
    text(size: 9.5pt, weight: 800, fill: teal-deep)[check], text(size: 9.7pt)[the one check that decided it: #box(width: 66%, stroke: (bottom: 0.7pt + ink-soft)) h(3pt)],
    text(size: 9.5pt, weight: 800, fill: teal-deep)[verdict], text(size: 9.7pt)[SHARE or DOUBT — and the one line I sent back: #box(width: 57%, stroke: (bottom: 0.7pt + ink-soft)) h(3pt)],
  )
})''', before=True)

# 11. c9 ch5 p65 — road to class 10
src = open(f"{B}/ai_handout_c9/ch5.typ").read()
i = src.index("THE LAST CLUE OF CASE 4")
nxt = len(src)
for marker in ("\n#task(", "\n#note(", "\n// ", "\n#sec("):
    p2 = src.find(marker, i)
    if p2 != -1 and p2 < nxt: nxt = p2
block11 = '''
#v(6pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 10pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[ROAD TO CLASS 10 — WHAT I CARRY FORWARD]
  v(3pt)
  text(size: 9.8pt)[One tool from this year I will carry into Class 10 — and the one habit that makes it actually work:]
  v(3pt)
  #ruled-lines(2, lead: 8mm)
})'''
src = src[:nxt] + block11 + src[nxt:]
open(f"{B}/ai_handout_c9/ch5.typ", "w").write(src)
print("c9 ch5 road strip inserted")

# 12. c10 front p9 — model shelf after re-rating habits
ins(f"{B}/ai_handout_c10/front.typ",
    "keep the old circle visible; the distance is the point. #h(8pt) *3.* One line on what changed my rating — the failure, the fix or the question.]\n  })",
'''
  v(9pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 0.9pt + ink-soft, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[MY MODEL SHELF — THREE PRODUCTS I WILL JUDGE FIRST]
    v(3pt)
    text(size: 9.8pt)[For Chapter 1: name three AI products you actually use, and one data question you will ask of each when the family map opens:]
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 5pt, align: (horizon, horizon),
      text(size: 9.5pt, weight: 800, fill: teal)[1.], text(size: 9.7pt)[#box(width: 87%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt, fill: ink-soft)[data Q], text(size: 9.7pt)[#box(width: 89%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 9.5pt, weight: 800, fill: teal)[2.], text(size: 9.7pt)[#box(width: 87%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt, fill: ink-soft)[data Q], text(size: 9.7pt)[#box(width: 89%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 9.5pt, weight: 800, fill: teal)[3.], text(size: 9.7pt)[#box(width: 87%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
      text(size: 8.8pt, fill: ink-soft)[data Q], text(size: 9.7pt)[#box(width: 89%, stroke: (bottom: 0.7pt + ink-soft)) h(4pt)],
    )
  })''')

# 13. c10 ch1 p20 — model map re-check after case journal
src = open(f"{B}/ai_handout_c10/ch1.typ").read()
i = src.index("MY CASE JOURNAL — TODAY'S SHARPEST CLUE ABOUT MODEL FAMILIES")
nxt = len(src)
for marker in ("\n#task(", "\n#note(", "\n// ", "\n#sec(", "\n#huva("):
    p2 = src.find(marker, i)
    if p2 != -1 and p2 < nxt: nxt = p2
block13 = '''
#v(6pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 10pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[MODEL MAP RE-CHECK — TWO FRESH PRODUCTS, NO PEEKING]
  v(3pt)
  grid(columns: (1fr, 1fr), column-gutter: 8pt,
    block(width: 100%, radius: 4pt, fill: white, stroke: 0.8pt + ink-soft, inset: (x: 8pt, y: 6pt), {
      text(size: 9.6pt, weight: 800, fill: teal)[A queue-scanning app at the temple prasad counter]
      v(2pt)
      text(size: 9.3pt)[family · branch · one data question:]
      v(2pt)
      #ruled-lines(2, lead: 7.6mm)
    }),
    block(width: 100%, radius: 4pt, fill: white, stroke: 0.8pt + ink-soft, inset: (x: 8pt, y: 6pt), {
      text(size: 9.6pt, weight: 800, fill: teal)[A cricket coach app that learns your bowling action]
      v(2pt)
      text(size: 9.3pt)[family · branch · one data question:]
      v(2pt)
      #ruled-lines(2, lead: 7.6mm)
    }),
  )
})'''
src = src[:nxt] + block13 + src[nxt:]
open(f"{B}/ai_handout_c10/ch1.typ", "w").write(src)
print("c10 ch1 re-check inserted")

# 14. c10 ch4 p48 — integrity line final wording after ch4 clues' case journal
src = open(f"{B}/ai_handout_c10/ch4.typ").read()
i = src.index("CHAPTER 4 CLUES — POCKET THESES")
j = src.index("The clue I would tell my family tonight", i)
nxt = len(src)
for marker in ("\n#task(", "\n#note(", "\n// ", "\n#sec("):
    p2 = src.find(marker, j)
    if p2 != -1 and p2 < nxt: nxt = p2
block14 = '''
#v(6pt)
#block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, inset: (x: 10pt, y: 8pt), {
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[MY INTEGRITY LINE — FINAL WORDING]
  v(3pt)
  text(size: 9.8pt)[You wrote a first draft on the journey-map page. Now — one chapter wiser, and with the four principles in hand — write the version you will actually keep:]
  v(3pt)
  #ruled-lines(2, lead: 8.2mm)
})'''
src = src[:nxt] + block14 + src[nxt:]
open(f"{B}/ai_handout_c10/ch4.typ", "w").write(src)
print("c10 ch4 integrity strip inserted")
