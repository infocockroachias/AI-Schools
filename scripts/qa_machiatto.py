#!/usr/bin/env python3
"""QA gate for the PRATIMAI machiatto-edition handouts."""
import subprocess, re, sys, os
from PIL import Image

CLS = sys.argv[1] if len(sys.argv) > 1 else "c6"
CFG = {
    "c6": dict(pdf="/home/z/my-project/scripts/ai_handout/main.pdf",
               title="AI Around Me", codes=[f"T6-{i:02d}" for i in range(1, 21)],
               terms=["algorithm", "automation", "artificial intelligence", "training examples",
                      "data", "pattern", "prediction", "privacy", "verify", "digital footprint"],
               chapters=5),
    "c7": dict(pdf="/home/z/my-project/scripts/ai_handout_c7/main.pdf",
               title="How Machines Learn", codes=[f"T7-{i:02d}" for i in range(1, 18)],
               terms=["classification", "regression", "clustering", "training set", "test set", "feature",
                      "frequency", "recommendation", "structured data", "trend", "sample", "bias",
                      "misinformation", "accountability"],
               chapters=5),
    "c8": dict(pdf="/home/z/my-project/scripts/ai_handout_c8/main.pdf",
               title="Build the AI Cycle", codes=[f"T8-{i:02d}" for i in range(1, 18)],
               terms=["problem statement", "AI project cycle", "dataset", "sampling", "representation",
                      "fairness", "consent", "privacy", "nearest neighbour", "accuracy", "no-code tool",
                      "classifier", "text generator", "hallucination", "misinformation", "responsible use"],
               chapters=5),
    "c9": dict(pdf="/home/z/my-project/scripts/ai_handout_c9/main.pdf",
               title="The Logic Under the Magic", codes=[f"T9-{i:02d}" for i in range(1, 22)],
               terms=["deep learning", "rule-based system", "learning-based system", "problem scoping",
                      "stakeholder", "system map", "qualitative data", "quantitative data", "unstructured data",
                      "privacy", "security", "mean", "median", "mode", "probability", "correlation",
                      "line of best fit", "nearest neighbour", "generative AI", "deepfake"],
               chapters=5),
}[CLS]
OUT = f"/tmp/qa_mach_{CLS}"
os.makedirs(OUT, exist_ok=True)
ok = fail = 0

def check(name, passed, note=""):
    global ok, fail
    tag = "PASS" if passed else "FAIL"
    if passed: ok += 1
    else: fail += 1
    print(f"[{tag}] {name}" + (f" — {note}" if note else ""))

PDF = CFG["pdf"]
info = subprocess.run(["pdfinfo", PDF], capture_output=True, text=True).stdout
title = re.search(r"Title:\s*(.*)", info)
pages = int(re.search(r"Pages:\s*(\d+)", info).group(1))
check("metadata title set", bool(title and CFG["title"] in title.group(1)), title.group(1) if title else "")
check("page count in machiatto budget (40-66)", 40 <= pages <= 66, f"{pages} pages")
size = re.search(r"Page size:\s*([\d.]+) x ([\d.]+)", info)
w_pt, h_pt = float(size.group(1)), float(size.group(2))
check("A4 page size", abs(w_pt - 595.3) < 2 and abs(h_pt - 841.9) < 2, f"{w_pt:.1f}x{h_pt:.1f}pt")

fonts = subprocess.run(["pdffonts", PDF], capture_output=True, text=True).stdout.splitlines()[2:]
emb = [l for l in fonts if l.strip()]
notemb = [l.split()[0] for l in emb if " no " in " " + l]
check("all fonts embedded", len(notemb) == 0, f"{len(emb)} fonts, non-embedded: {notemb or 'none'}")

subprocess.run(["pdftoppm", "-png", "-r", "50", PDF, f"{OUT}/p"], check=True)
pngs = sorted(os.listdir(OUT))
check("render count matches", len(pngs) == pages)
blank, edge = [], []
for i, f in enumerate(pngs, 1):
    im = Image.open(f"{OUT}/{f}").convert("L")
    w, h = im.size
    px = im.load()
    dark = sum(1 for y in range(0, h, 3) for x in range(0, w, 3) if px[x, y] < 200)
    if dark < 30:
        blank.append(i)
    margin = 8  # machiatto margins are 17mm ≈ 33px at 50dpi; nothing should print within 8px
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

txt = subprocess.run(["pdftotext", PDF, "-"], capture_output=True, text=True).stdout
leaks = []
for pat in [r"#(?:grid|place|box|task|note)\(", r"\bwidth:\s*\d+mm", r"\bfill:\s*teal", r"\.at\(", r"^text\(size", r"^box\(width"]:
    if re.search(pat, txt):
        leaks.append(pat)
check("no literal code leaks in text", not leaks, f"leaks: {leaks or 'none'}")

codes = CFG["codes"]
missing = [c for c in codes if c not in txt]
check(f"all {len(codes)} task codes present", not missing, f"missing: {missing or 'none'}")
terms = CFG["terms"]
missing_t = [t for t in terms if t.lower() not in txt.lower()]
check(f"all {len(terms)} vocabulary terms present", not missing_t, f"missing: {missing_t or 'none'}")

def flex(s):  # tracked-caps labels extract with letter spacing
    return re.compile(r"\s*".join(re.escape(c) for c in s))

chapters = len(re.findall(r"^In this chapter$", txt, re.M))
check(f"minitoc on all {CFG['chapters']} chapters", chapters == CFG["chapters"], f"found {chapters}")

for feat in ["GUIDING QUESTION", "MYTH BUSTER", "THINK & INK", "HOME LINK", "Self-check"]:
    check(f"component present: {feat}", bool(flex(feat).search(txt)))

print(f"\nSummary: {ok} PASS · {fail} FAIL")
sys.exit(1 if fail else 0)
