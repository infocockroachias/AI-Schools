#!/usr/bin/env python3
"""Icon pass for Class 6/7: self-contained Font Awesome 6 icon helper + tasteful icons
on task headers (clock/star), note titles (bulb), Word Power (book), Myth Buster (ban),
work-mode chips (user/pair/group/class/home)."""

ICO_BLOCK = '''
// ico() — tiny icon helper (Font Awesome 6 Free solid, bundled in fonts/)
#let ico-map = (
  search: "\\u{f002}", user: "\\u{f007}", pair: "\\u{f500}", group: "\\u{f0c0}",
  class: "\\u{f51c}", home: "\\u{f015}", star: "\\u{f005}", clock: "\\u{f017}",
  book: "\\u{f518}", bulb: "\\u{f0eb}", ban: "\\u{f05e}", shield: "\\u{f3ed}",
  hand: "\\u{f256}", robot: "\\u{f544}", pencil: "\\u{f303}", eye: "\\u{f06e}",
  seed: "\\u{f4d8}", gear: "\\u{f013}", flask: "\\u{f0c3}", scale: "\\u{f24e}",
)
#let ico(key, size: 8.5pt, fill: amber-deep) = text(font: "Font Awesome 6 Free", weight: 900, size: size, fill: fill, ico-map.at(key))
'''

OLD_TASK_CELL = '''        {
          if win { box(width: 5pt, height: 5pt, fill: amber, baseline: 28%); h(4pt); text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em, "QUICK WIN"); h(7pt) }
          text(font: f-display, fill: ink-soft, weight: 800, size: 8.1pt, tracking: 0.12em, upper(mode) + " · " + mins + " MIN")
        },'''
NEW_TASK_CELL = '''        {
          if win { ico("star", size: 8.4pt); h(4pt); text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em, "QUICK WIN"); h(7pt) }
          ico("clock", size: 7.8pt, fill: ink-soft)
          h(3.5pt)
          text(font: f-display, fill: ink-soft, weight: 800, size: 8.1pt, tracking: 0.12em, upper(mode) + " · " + mins + " MIN")
        },'''

OLD_WP = '''  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[WORD POWER · #str(n)]'''
NEW_WP = '''  { ico("book", size: 8.4pt, fill: amber-deep); h(4pt); text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[WORD POWER · #str(n)] }'''

OLD_MYTH = '''      box(width: 5.5pt, height: 5.5pt, fill: teal, baseline: 28%),
      text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em, "MYTH BUSTER"),'''
NEW_MYTH = '''      ico("ban", size: 8.8pt, fill: teal-deep),
      text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em, "MYTH BUSTER"),'''

OLD_NOTE = '''    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em, upper(title))'''
NEW_NOTE = '''    { ico("bulb", size: 8.4pt, fill: amber-deep); h(4.5pt); text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em, upper(title)) }'''

CHIP_ICONS = [
    ("chip[ALONE],", '{ ico("user", size: 9pt, fill: teal); h(4.5pt); chip[ALONE] },'),
    ("chip[PAIR],", '{ ico("pair", size: 9pt, fill: teal); h(4.5pt); chip[PAIR] },'),
    ("chip[GROUP],", '{ ico("group", size: 9pt, fill: teal); h(4.5pt); chip[GROUP] },'),
    ("chip[CLASS],", '{ ico("class", size: 9pt, fill: teal); h(4.5pt); chip[CLASS] },'),
    ("chip[HOME],", '{ ico("home", size: 9pt, fill: teal); h(4.5pt); chip[HOME] },'),
]

QW_SAMPLE_OLD = "#box(width: 5pt, height: 5pt, fill: amber, baseline: 28%) #h(4pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em)[QUICK WIN]"
QW_SAMPLE_NEW = "#ico(\"star\", size: 8.4pt) #h(4pt) #text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em)[QUICK WIN]"

import re
for d in ["ai_handout", "ai_handout_c7"]:
    tp = f"/home/z/my-project/scripts/{d}/template.typ"
    src = open(tp).read()
    assert OLD_TASK_CELL in src, (d, "task cell")
    src = src.replace(OLD_TASK_CELL, NEW_TASK_CELL)
    assert OLD_WP in src, (d, "wordpower")
    src = src.replace(OLD_WP, NEW_WP)
    assert OLD_MYTH in src, (d, "myth")
    src = src.replace(OLD_MYTH, NEW_MYTH)
    assert OLD_NOTE in src, (d, "note")
    src = src.replace(OLD_NOTE, NEW_NOTE)
    # insert ico helper before "// task activity box"
    assert "// task activity box" in src
    src = src.replace("// task activity box", ICO_BLOCK + "\n// task activity box", 1)
    open(tp, "w").write(src)
    print(d, "template icons done")

    fp = f"/home/z/my-project/scripts/{d}/front.typ"
    src = open(fp).read()
    n = 0
    for old, new in CHIP_ICONS:
        if old in src:
            src = src.replace(old, new); n += 1
    if QW_SAMPLE_OLD in src:
        src = src.replace(QW_SAMPLE_OLD, QW_SAMPLE_NEW); n += 1
    open(fp, "w").write(src)
    print(d, f"front icons done ({n} spots)")
