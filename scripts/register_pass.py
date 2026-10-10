#!/usr/bin/env python3
"""Register pass: age-up the language of Class 8 (builder register) and
'grown-ups' -> 'adults' in c8/c9. Explicit phrase replacements with counts.
Series devices (mission, case, clue, Data Detective task name) are KEPT."""
import re, sys, pathlib

BASE = pathlib.Path("/home/z/my-project/scripts")

def reps_c8():
    return [
        # self-identity: Detective -> Builder (keep the arc line "the detective becomes the builder")
        ("Welcome back, Detective!", "Welcome back, Builder!"),
        ("DETECTIVE DRILL", "BUILDER DRILL"),
        ('#note("Detective\'s note")', '#note("Builder\'s note")'),
        ("A good problem statement sounds boring", "A good problem statement sounds boring"),  # anchor no-op
        ("DETECTIVE'S TOOLKIT — YOU WILL NEED:", "BUILDER'S TOOLKIT — YOU WILL NEED:"),
        ("in your detective kit", "in your builder kit"),
        ("DETECTIVE'S NOTE", "BUILDER'S NOTE"),
        ("Also on patrol:", "Also inside:"),
        ("two detectives — share one book", "two builders — share one book"),
        ("three to four detectives — decide roles", "three to four builders — decide roles"),
        ("I, the undersigned investigator, pledge", "I, the undersigned builder, pledge"),
        ("INVESTIGATOR NAME", "BUILDER NAME"),
        ("INVESTIGATOR'S SIGNATURE", "BUILDER'S SIGNATURE"),
        ("A POSTCARD TO THE CLASS 9 INVESTIGATOR — WHO WILL BE YOU",
         "A POSTCARD TO THE CLASS 9 ANALYST — WHO WILL BE YOU"),
        ("investigators never fake evidence", "builders never fake evidence"),
        ("three cases, one investigator", "three cases, one builder"),
        ("next year's Class 8 detectives", "next year's Class 8 builders"),
        # adults
        ("A Note for Grown-Ups", "A Note for Adults"),
        ("teach a grown-up", "teach an adult"),
        ("to the grown-ups who", "to the adults who"),
        ("note for grown-ups", "note for adults"),
    ]

def reps_c9():
    return [
        ("A Note for Grown-Ups", "A Note for Adults"),
        ("teach a grown-up", "teach an adult"),
        ("to the grown-ups who", "to the adults who"),
        ("note for grown-ups", "note for adults"),
    ]

def apply(folder, reps):
    total = 0
    for f in sorted(pathlib.Path(BASE, folder).glob("*.typ")):
        t = f.read_text()
        orig = t
        for old, new in reps:
            if old == new:
                continue
            n = t.count(old)
            if n:
                t = t.replace(old, new)
                total += n
                print(f"  {folder}/{f.name}: {n}x  {old[:58]!r}")
        if t != orig:
            f.write_text(t)
    return total

if __name__ == "__main__":
    print("== Class 8 register pass ==")
    n8 = apply("ai_handout_c8", reps_c8())
    print("== Class 9 adults pass ==")
    n9 = apply("ai_handout_c9", reps_c9())
    print(f"total replacements: c8={n8} c9={n9}")
    # leftover scan: any remaining 'grown-up' or 'Detective' outside sanctioned uses?
    for folder in ("ai_handout_c8", "ai_handout_c9"):
        print(f"-- leftovers in {folder} --")
        for f in sorted(pathlib.Path(BASE, folder).glob("*.typ")):
            for i, line in enumerate(f.read_text().splitlines(), 1):
                if re.search(r"grown-up|Grown-Up", line) or re.search(r"Detective|DETECTIVE", line):
                    print(f"  {f.name}:{i}: {line.strip()[:100]}")
