#!/usr/bin/env python3
"""Register pass 2: leftovers. c9 drill labels -> ANALYST DRILL; home-task
'grown-up' -> 'adult' in both; template label fixes."""
import re, pathlib

BASE = pathlib.Path("/home/z/my-project/scripts")

def apply(folder, reps):
    total = 0
    for f in sorted(pathlib.Path(BASE, folder).glob("*.typ")):
        t = f.read_text(); orig = t
        for old, new in reps:
            n = t.count(old)
            if n:
                t = t.replace(old, new); total += n
                print(f"  {folder}/{f.name}: {n}x  {old[:56]!r}")
        if t != orig: f.write_text(t)
    return total

c8 = [
    ("With a grown-up, pick one app", "With an adult, pick one app"),
    ("With a grown-up, find one forwarded", "With an adult, find one forwarded"),
    ("show a grown-up what you discovered", "show an adult what you discovered"),
    ("note to grown-ups", "note to adults"),
]
c9 = [
    ("DETECTIVE DRILL", "ANALYST DRILL"),
    ("DETECTIVE'S TOOLKIT", "ANALYST'S TOOLKIT"),
    ("DETECTIVE'S NOTE", "ANALYST'S NOTE"),
    ("Also on patrol:", "Also inside:"),
    ("With a grown-up, take ONE number", "With an adult, take ONE number"),
    ("With a grown-up, pick one repeated", "With an adult, pick one repeated"),
    ("Teach a grown-up the four moves", "Teach an adult the four moves"),
    ("show a grown-up what you discovered", "show an adult what you discovered"),
    ("note to grown-ups", "note to adults"),
    ("#note(\"Detective's note\")", "#note(\"Analyst's note\")"),
    ("detective kit", "analyst kit"),
]

print("== c8 pass 2 =="); n1 = apply("ai_handout_c8", c8)
print("== c9 pass 2 =="); n2 = apply("ai_handout_c9", c9)
print(f"total: c8={n1} c9={n2}")
for folder in ("ai_handout_c8", "ai_handout_c9"):
    print(f"-- leftovers {folder} --")
    for f in sorted(pathlib.Path(BASE, folder).glob("*.typ")):
        for i, line in enumerate(f.read_text().splitlines(), 1):
            if re.search(r"grown-up|Grown-Up|detective|DETECTIVE|investigator", line, re.I):
                print(f"  {f.name}:{i}: {line.strip()[:110]}")
