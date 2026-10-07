#!/usr/bin/env python3
"""Whitespace audit: render every page, find large vertical empty gaps.

For each page:
  - ink coverage %
  - largest internal vertical gap (consecutive empty rows inside content span)
  - bottom gap (last content row -> bottom edge, footer excluded via bottom window)
Flags pages with gaps > threshold or low coverage.
"""
import subprocess, sys, os
import numpy as np
from PIL import Image

BOOKS = [
    ("c6", "/home/z/my-project/scripts/ai_handout/main.pdf"),
    ("c7", "/home/z/my-project/scripts/ai_handout_c7/main.pdf"),
]
DPI = 100
ROW_INK_MIN = 0.004      # a row is "content" if >=0.4% pixels are ink
GAP_FLAG = 90            # px at 100dpi ~ 23mm internal gap -> flag
BOTTOM_FLAG = 150        # px ~ 38mm empty above bottom margin -> flag
COV_FLAG = 30.0          # % ink coverage below this -> sparse page


def render(pdf, outdir, tag):
    os.makedirs(outdir, exist_ok=True)
    subprocess.run(["pdftoppm", "-png", "-r", str(DPI), pdf, os.path.join(outdir, "pg")],
                   check=True)
    files = sorted(f for f in os.listdir(outdir) if f.startswith("pg") and f.endswith(".png"))
    return [os.path.join(outdir, f) for f in files]


def analyze(path):
    img = np.asarray(Image.open(path).convert("L"), dtype=np.uint8)
    h, w = img.shape
    ink = img < 235                      # non-near-white
    row_ink = ink.mean(axis=1)
    content_rows = np.where(row_ink > ROW_INK_MIN)[0]
    if len(content_rows) == 0:
        return dict(cover=0.0, gap=0, gap_start=0, bottom=0, h=h)
    first, last = content_rows[0], content_rows[-1]
    # internal gaps within [first,last]
    gaps, runs, run_start = [], [], None
    for r in range(first, last + 1):
        if row_ink[r] <= ROW_INK_MIN:
            if run_start is None:
                run_start = r
        else:
            if run_start is not None:
                runs.append((run_start, r - run_start))
                run_start = None
    if run_start is not None:
        runs.append((run_start, last - run_start))
    best = max(runs, key=lambda t: t[1]) if runs else (0, 0)
    bottom_gap = h - last
    cover = ink.mean() * 100
    return dict(cover=cover, gap=best[1], gap_start=best[0], bottom=bottom_gap, h=h)


for tag, pdf in BOOKS:
    outdir = f"/home/z/my-project/scripts/audit_{tag}"
    pages = render(pdf, outdir, tag)
    print(f"\n===== {tag}  ({len(pages)} pages) =====")
    print(f"{'pg':>4} {'cov%':>6} {'gapPx':>6} {'gapMM':>6} {'@yMM':>6} {'botMM':>6}  flag")
    for i, p in enumerate(pages, 1):
        a = analyze(p)
        mm = lambda px: px * 25.4 / DPI
        flags = []
        if a["gap"] > GAP_FLAG:
            flags.append(f"BIG-GAP(mid) at y={mm(a['gap_start']):.0f}mm")
        if a["bottom"] > BOTTOM_FLAG:
            flags.append("BIG-BOTTOM-GAP")
        if a["cover"] < COV_FLAG:
            flags.append("SPARSE")
        fstr = "; ".join(flags)
        print(f"{i:>4} {a['cover']:6.1f} {a['gap']:>6} {mm(a['gap']):6.0f} "
              f"{mm(a['gap_start']):6.0f} {mm(a['bottom']):6.0f}  {fstr}")
print("\n(A4 = 210x297mm; margins ~18mm top/bottom => usable ~261mm)")
