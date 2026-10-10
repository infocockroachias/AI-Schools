#!/usr/bin/env python3
"""QA gate for the PRATIMAI Class 7 handout (mirrors the Class 6 pdf_qa checks)."""
import subprocess, re, sys, os
from PIL import Image

PDF = "/home/z/my-project/scripts/ai_handout_c7/main.pdf"
OUT = "/tmp/qa_c7"
os.makedirs(OUT, exist_ok=True)
ok = fail = warn = 0

def check(name, passed, note=""):
    global ok, fail, warn
    tag = "PASS" if passed else "FAIL"
    if passed: ok += 1
    else: fail += 1
    print(f"[{tag}] {name}" + (f" — {note}" if note else ""))

def warnitem(name, note):
    global warn
    warn += 1
    print(f"[WARN] {name} — {note}")

# 1. metadata
info = subprocess.run(["pdfinfo", PDF], capture_output=True, text=True).stdout
title = re.search(r"Title:\s*(.*)", info)
pages = int(re.search(r"Pages:\s*(\d+)", info).group(1))
check("metadata title set", bool(title and "How Machines Learn" in title.group(1)), title.group(1) if title else "")
check("page count = 40 (spec target)", pages == 40, f"{pages} pages")
size = re.search(r"Page size:\s*([\d.]+) x ([\d.]+)", info)
w_pt, h_pt = float(size.group(1)), float(size.group(2))
check("A4 page size", abs(w_pt - 595.3) < 2 and abs(h_pt - 841.9) < 2, f"{w_pt:.1f}x{h_pt:.1f}pt")

# 2. fonts embedded
fonts = subprocess.run(["pdffonts", PDF], capture_output=True, text=True).stdout.splitlines()[2:]
emb = [l for l in fonts if l.strip()]
notemb = [l.split()[0] for l in emb if " no " in " " + l]
check("all fonts embedded", len(notemb) == 0, f"{len(emb)} fonts, non-embedded: {notemb or 'none'}")

# 3. render pages, blank + overflow scan
subprocess.run(["pdftoppm", "-png", "-r", "50", PDF, f"{OUT}/p"], check=True)
pngs = sorted(os.listdir(OUT))
check("render count matches", len(pngs) == pages)
blank, edge = [], []
for i, f in enumerate(pngs, 1):
    im = Image.open(f"{OUT}/{f}").convert("L")
    w, h = im.size
    px = im.load()
    dark = sum(1 for y in range(0, h, 3) for x in range(0, w, 3) if px[x, y] < 200)
    if dark < 30 and i != 1:  # cover is full-bleed dark by design
        blank.append(i)
    # content pages: no ink within 10px of edge (cover p1 exempt: full-bleed)
    if i != 1:
        margin = 10
        ink = 0
        for x in range(0, w, 2):
            for y in list(range(0, margin, 2)) + list(range(h - margin, h, 2)):
                if px[x, y] < 160: ink += 1
        for y in range(0, h, 2):
            for x in list(range(0, margin, 2)) + list(range(w - margin, w, 2)):
                if px[x, y] < 160: ink += 1
        if ink > 40: edge.append(i)
check("no blank pages", not blank, f"blank: {blank or 'none'}")
check("no content overflow into margins", not edge, f"pages with edge ink: {edge or 'none'}")

# 4. literal-leak scan in extracted text
txt = subprocess.run(["pdftotext", PDF, "-"], capture_output=True, text=True).stdout
leaks = []
for pat in [r"#(?:grid|place|text|box|task|note)\(", r"\bwidth:\s*\d+mm", r"\bfill:\s*teal", r"\.at\(", r"\bnone\b.*=>"]:
    if re.search(pat, txt):
        leaks.append(pat)
check("no literal code leaks in text", not leaks, f"leaks: {leaks or 'none'}")

# 5. vocabulary budget + task codes present
codes = [f"T7-{i:02d}" for i in range(1, 18)]
missing = [c for c in codes if c not in txt]
check("all 17 task codes present", not missing, f"missing: {missing or 'none'}")
terms = ["classification", "regression", "clustering", "training set", "test set", "feature",
         "frequency", "recommendation", "structured data", "trend", "sample", "bias",
         "misinformation", "accountability"]
missing_t = [t for t in terms if t.lower() not in txt.lower()]
check("all 14 vocabulary terms present", not missing_t, f"missing: {missing_t or 'none'}")

# 6. answers not beside tasks (heuristic: no "Answer" heading inside chapters, only back matter)
ans_pages = []
per = txt.split("\f")
for i, pg in enumerate(per, 1):
    if re.search(r"answer hints", pg, re.IGNORECASE):
        ans_pages.append(i)
check("answer hints only in back matter", ans_pages and all(p >= 39 for p in ans_pages), f"on pages {ans_pages}")

print(f"\nSummary: {ok} PASS · {fail} FAIL · {warn} warn")
sys.exit(1 if fail else 0)
