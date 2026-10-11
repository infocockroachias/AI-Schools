#!/usr/bin/env python3
"""Replace pixel-heart with pixel-ai (robot head) in all five class templates; fix metadata keywords."""
import re

BASE = "/home/z/my-project/scripts"
DIRS = ["ai_handout", "ai_handout_c7", "ai_handout_c8", "ai_handout_c9", "ai_handout_c10"]

OLD_START = "// small pixel-heart motif (title page) — a picture really is numbers!"
OLD_END = "  grid(columns: (cell,) * 8, rows: (cell,) * 8, inset: 0pt, stroke: none, ..cells)\n}"

NEW_FN = '''// small pixel-AI motif (title page) — a friendly robot face, a picture really is numbers!
#let pixel-ai(cell, tone: amber, tone2: teal) = {
  let bot = (
    (0,0,0,0,2,2,0,0,0,0),
    (0,0,0,0,2,2,0,0,0,0),
    (0,1,1,1,1,1,1,1,1,0),
    (1,1,1,1,1,1,1,1,1,1),
    (1,1,0,0,1,1,0,0,1,1),
    (1,1,0,0,1,1,0,0,1,1),
    (1,1,1,1,1,1,1,1,1,1),
    (1,1,1,0,0,0,0,1,1,1),
    (1,1,1,1,1,1,1,1,1,1),
    (0,1,1,1,1,1,1,1,1,0),
  )
  let cells = {
    let out = ()
    for r in range(10) { for c in range(10) {
      let v = bot.at(r).at(c)
      out.push(if v == 1 { rect(width: cell, height: cell, fill: tone, radius: 0pt, stroke: none) } else if v == 2 { rect(width: cell, height: cell, fill: tone2, radius: 0pt, stroke: none) } else { [] })
    } }
    out
  }
  grid(columns: (cell,) * 10, rows: (cell,) * 10, inset: 0pt, stroke: none, ..cells)
}'''

for d in DIRS:
    p = f"{BASE}/{d}/template.typ"
    src = open(p).read()
    i0 = src.index(OLD_START)
    i1 = src.index(OLD_END) + len(OLD_END)
    src = src[:i0] + NEW_FN + src[i1:]
    # usage sites
    src = src.replace("align(center, pixel-heart(3.1mm))", "align(center, pixel-ai(2.6mm))")
    src = src.replace("pixel-heart(2.4mm)", "pixel-ai(2.0mm)")
    # stray references in comments of front matter will be handled separately
    # metadata keywords: drop 'machiatto'
    src = src.replace('"PRATIMAI", "machiatto"', '"PRATIMAI", "AI literacy"')
    open(p, "w").write(src)
    print(d, "updated")
