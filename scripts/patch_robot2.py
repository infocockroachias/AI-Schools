#!/usr/bin/env python3
"""Redesign pixel-ai bitmap: visor robot (unmistakably AI, friendly) in all five templates."""

OLD_BITMAP = '''  let bot = (
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
  )'''

NEW_BITMAP = '''  let bot = (
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

OLD_LOOP = '''  let cells = {
    let out = ()
    for r in range(10) { for c in range(10) {'''
NEW_LOOP = '''  let cells = {
    let out = ()
    for r in range(11) { for c in range(12) {'''

OLD_GRID = "  grid(columns: (cell,) * 10, rows: (cell,) * 10, inset: 0pt, stroke: none, ..cells)"
NEW_GRID = "  grid(columns: (cell,) * 12, rows: (cell,) * 11, inset: 0pt, stroke: none, ..cells)"

import os
BASE = "/home/z/my-project/scripts"
for d in ["ai_handout", "ai_handout_c7", "ai_handout_c8", "ai_handout_c9", "ai_handout_c10"]:
    p = f"{BASE}/{d}/template.typ"
    src = open(p).read()
    assert OLD_BITMAP in src and OLD_LOOP in src and OLD_GRID in src, d
    src = src.replace(OLD_BITMAP, NEW_BITMAP).replace(OLD_LOOP, NEW_LOOP).replace(OLD_GRID, NEW_GRID)
    open(p, "w").write(src)
    print(d, "robot redesigned")
