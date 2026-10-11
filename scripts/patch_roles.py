#!/usr/bin/env python3
"""Role pass: c7 detective->AI Trainer, c8 builder->AI Engineer, c9 Analyst polish,
c10 Designer polish. Ordered replacements with leftover verification."""
import re, glob

BASE = "/home/z/my-project/scripts"

def apply(d, pairs, files=None):
    paths = sorted(glob.glob(f"{BASE}/{d}/*.typ"))
    for p in paths:
        src = open(p).read()
        orig = src
        for old, new, _watch in pairs:
            src = src.replace(old, new)
        if src != orig:
            open(p, "w").write(src)
            print(f"  {d}/{p.split('/')[-1]}: updated")
    # leftover scan
    for p in paths:
        src = open(p).read()
        for w in pairs[0][2]:  # watch words
            for i, ln in enumerate(src.split("\n")):
                if re.search(w, ln):
                    print(f"    LEFTOVER {p.split('/')[-1]}:{i+1}: {ln.strip()[:90]}")

print("== c7: detective -> AI Trainer ==")
apply("ai_handout_c7", [
    ("Chart Detective", "Chart Traps", [r"[Dd]etective"]),
    ("the chart detective's hardest truth", "the chart pro's hardest truth", [r"[Dd]etective"]),
    ("a chart detective knows", "a chart pro knows", [r"[Dd]etective"]),
    ("a data detective asks", "a data trainer asks", [r"[Dd]etective"]),
    ("Detective A looks", "Trainer A looks", [r"[Dd]etective"]),
    ("Detective B looks", "Trainer B looks", [r"[Dd]etective"]),
    ("a detective in your group", "a trainer in your group", [r"[Dd]etective"]),
    ("Bonus detective move", "Bonus trainer move", [r"[Dd]etective"]),
    ("like a detective)", "like a trainer)", [r"[Dd]etective"]),
    ("The detective's move", "The trainer's move", [r"[Dd]etective"]),
    ("a detective who understands it", "a trainer who understands it", [r"[Dd]etective"]),
    ("What the detective found", "What the trainer found", [r"[Dd]etective"]),
    ("the detective's question is not", "the trainer's question is not", [r"[Dd]etective"]),
    ("Detective's note", "Trainer's note", [r"[Dd]etective"]),
    ("Detective's oath", "Trainer's oath", [r"[Dd]etective"]),
    ("Welcome back, Detective!", "Welcome back, Trainer!", [r"[Dd]etective"]),
    ("Read me first, Detective.", "Read me first, Trainer.", [r"[Dd]etective"]),
    ("two detectives —", "two trainers —", [r"[Dd]etective"]),
    ("three to four detectives", "three to four trainers", [r"[Dd]etective"]),
    ("your detective kit", "your trainer kit", [r"[Dd]etective"]),
    ("Detectives read numbers first", "Trainers read numbers first", [r"[Dd]etective"]),
    ("// detective note (info box)", "// note (info box)", [r"[Dd]etective"]),
    ("detectives", "trainers", [r"[Dd]etective"]),
    ("Detectives", "Trainers", [r"[Dd]etective"]),
    ("detective", "trainer", [r"[Dd]etective"]),
    ("Detective", "Trainer", [r"[Dd]etective"]),
])

print("== c8: builder -> AI Engineer ==")
apply("ai_handout_c8", [
    ("BUILDER DRILL", "ENGINEER'S DRILL", [r"[Bb]uilder"]),
    ("BUILDER'S TOOLKIT", "ENGINEER'S TOOLKIT", [r"[Bb]uilder"]),
    ("SCOPE LIKE A BUILDER BEFORE THE DIAGRAM", "SCOPE LIKE AN ENGINEER BEFORE THE DIAGRAM", [r"[Bb]uilder"]),
    ("BUILDER GROWTH WORTH PRAISING", "ENGINEER GROWTH WORTH PRAISING", [r"[Bb]uilder"]),
    ("My Builder's Certificate", "My AI Engineer's Certificate", [r"[Bb]uilder"]),
    ("BUILDER NAME", "ENGINEER NAME", [r"[Bb]uilder"]),
    ("BUILDER'S SIGNATURE", "ENGINEER'S SIGNATURE", [r"[Bb]uilder"]),
    ("Builder's note", "Engineer's note", [r"[Bb]uilder"]),
    ("BUILDER'S NOTE", "ENGINEER'S NOTE", [r"[Bb]uilder"]),
    ("Builder's oath", "Engineer's oath", [r"[Bb]uilder"]),
    ("builder kit", "engineer kit", [r"[Bb]uilder"]),
    ("builders never fake evidence", "engineers never fake evidence", [r"[Bb]uilder"]),
    ("three cases, one builder", "three cases, one engineer", [r"[Bb]uilder"]),
    ("next year's Class 8 builders", "next year's Class 8 engineers", [r"[Bb]uilder"]),
    ("the detective becomes the builder", "the investigator becomes the engineer", [r"[Dd]etective|[Bb]uilder"]),
    ("like a data detective (counting", "like a data auditor (counting", [r"[Dd]etective"]),
    ("is detective work; *fixing* it is builder work", "is audit work; *fixing* it is engineer work", [r"[Dd]etective|[Bb]uilder"]),
    ("Guest List Detective", "Guest List Audit", [r"[Dd]etective"]),
    ("the detective's first question", "the auditor's first question", [r"[Dd]etective"]),
    ("two builders —", "two engineers —", [r"[Bb]uilder"]),
    ("three to four builders", "three to four engineers", [r"[Bb]uilder"]),
    ("When your builder is stuck", "When your engineer is stuck", [r"[Bb]uilder"]),
    ("That is exactly what builders do", "That is exactly what engineers do", [r"[Bb]uilder"]),
    ("// detective note (info box)", "// note (info box)", [r"[Dd]etective"]),
    ("builders", "engineers", [r"[Bb]uilder"]),
    ("Builders", "Engineers", [r"[Bb]uilder"]),
    ("builder's", "engineer's", [r"[Bb]uilder"]),
    ("builder", "engineer", [r"[Bb]uilder"]),
    ("Builder", "Engineer", [r"[Bb]uilder"]),
])

print("== c9: Analyst polish ==")
apply("ai_handout_c9", [
    ("ANALYST DRILL", "ANALYST'S DRILL", [r"ANALYST DRILL"]),
    ("My Analyst's Certificate", "My AI Analyst's Certificate", [r"Analyst's Certificate"]),
])

print("== c10: Designer polish ==")
apply("ai_handout_c10", [
    ("My Designer's Certificate", "My AI Designer's Certificate", [r"Designer's Certificate"]),
    ("your analyst kit", "your designer kit", [r"analyst kit"]),
])
