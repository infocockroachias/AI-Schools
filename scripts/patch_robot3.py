#!/usr/bin/env python3
"""pixel-ai v3: boxy robot with ears + visor band. 14x11 grid."""

OLD_BITMAP = '''  let bot = (
    (0,0,0,0,0,2,2,0,0,0,0,0),
    (0,0,0,0,0,1,1,0,0,0,0,0),
    (0,1,1,1,1,1,1,1,1,1,1,0),
    (1,1,1,1,1,1,1,1,1,1,1,1),
    (1,1,1,1,1,1,1,1,1,1,1,1),
    (1,2,2,2,2,2,2,2,2,2,2,1),
    (1,2,0,0,2,2,0,0,2,2,2,1),
    (1,2,2,2,2,2,2,2,2,2,2,1),
    (1,1,1,1,1,1,1,1,1,1,1,1),
    (0,1,1,1,1,1,1,1,1,1,1,0),
    (0,0,1,1,1,1,1,1,1,1,0,0),
  )'''

NEW_BITMAP = '''  let bot = (
    (0,0,0,0,0,0,2,2,0,0,0,0,0,0),
    (0,0,0,0,0,0,1,1,0,0,0,0,0,0),
    (0,1,1,1,1,1,1,1,1,1,1,1,1,0),
    (0,1,1,1,1,1,1,1,1,1,1,1,1,0),
    (0,1,1,1,1,1,1,1,1,1,1,1,1,0),
    (1,1,2,2,2,2,2,2,2,2,2,2,1,1),
    (1,1,2,0,0,2,2,0,0,2,2,2,1,1),
    (1,1,2,2,2,2,2,2,2,2,2,2,1,1),
    (0,1,1,1,1,1,1,1,1,1,1,1,1,0),
    (0,1,1,1,1,1,1,1,1,1,1,1,1,0),
    (0,0,1,1,1,1,1,1,1,1,1,1,0,0),
  )'''

OLD_LOOP = "    for r in range(11) { for c in range(12) {"
NEW_LOOP = "    for r in range(11) { for c in range(14) {"
OLD_GRID = "  grid(columns: (cell,) * 12, rows: (cell,) * 11, inset: 0pt, stroke: none, ..cells)"
NEW_GRID = "  grid(columns: (cell,) * 14, rows: (cell,) * 11, inset: 0pt, stroke: none, ..cells)"

BASE = "/home/z/my-project/scripts"
for d in ["ai_handout", "ai_handout_c7", "ai_handout_c8", "ai_handout_c9", "ai_handout_c10"]:
    p = f"{BASE}/{d}/template.typ"
    src = open(p).read()
    assert OLD_BITMAP in src and OLD_LOOP in src and OLD_GRID in src, d
    src = src.replace(OLD_BITMAP, NEW_BITMAP).replace(OLD_LOOP, NEW_LOOP).replace(OLD_GRID, NEW_GRID)
    src = src.replace("align(center, pixel-ai(2.6mm))", "align(center, pixel-ai(2.3mm))")
    src = src.replace("pixel-ai(2.0mm)", "pixel-ai(1.8mm)")
    open(p, "w").write(src)
    print(d, "v3 applied")
