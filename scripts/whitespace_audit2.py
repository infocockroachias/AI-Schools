#!/usr/bin/env python3
"""Whitespace audit v2: exclude footer band, measure content fill ratio."""
import numpy as np
from PIL import Image
import os, json

DPI = 100
BOOKS = {"c6": 47, "c7": 56}
FOOTER_ZONE_MM = 20      # ignore bottom 20mm (folio band) when finding last content row
USABLE_MM = 297 - 20 - 20  # ~ top margin to footer zone

def page_metrics(path):
    img = np.asarray(Image.open(path).convert("L"), dtype=np.uint8)
    h, w = img.shape
    ink = img < 235
    row_ink = ink.mean(axis=1)
    footer_rows = int(FOOTER_ZONE_MM * DPI / 25.4)
    limit = h - footer_rows
    content_rows = np.where(row_ink[:limit] > 0.004)[0]
    if len(content_rows) == 0:
        return dict(fill=0.0, last=0, cover=0.0)
    first, last = content_rows[0], content_rows[-1]
    # biggest internal gap
    gaps, run_start = [], None
    for r in range(first, last + 1):
        if row_ink[r] <= 0.004:
            if run_start is None: run_start = r
        else:
            if run_start is not None:
                gaps.append((run_start, r - run_start)); run_start = None
    if run_start is not None:
        gaps.append((run_start, last - run_start))
    biggap = max(gaps, key=lambda t: t[1]) if gaps else (0, 0)
    mm = lambda px: px * 25.4 / DPI
    return dict(
        fill=(last - first) / limit * 100,
        first=mm(first), last=mm(last),
        cover=ink.mean() * 100,
        gap=mm(biggap[1]), gap_y=mm(biggap[0]),
    )

def _main():
    for tag, n in BOOKS.items():
        d = f"/home/z/my-project/scripts/audit_{tag}"
        rows = []
        for i in range(1, n + 1):
            p = os.path.join(d, f"pg-{i:02d}.png")
            m = page_metrics(p)
            m["pg"] = i
            rows.append(m)
        rows.sort(key=lambda r: r["fill"])
        print(f"\n===== {tag}: pages by fill ratio (worst first) =====")
        print(f"{'pg':>4} {'fill%':>6} {'ink%':>6} {'lastYmm':>8} {'gapMM':>6} {'@y':>5}  verdict")
        for m in rows:
            verdict = ""
            if m["fill"] < 55: verdict = "!! VERY EMPTY"
            elif m["fill"] < 70: verdict = "!  empty-ish"
            elif m["gap"] > 45: verdict = "~  big mid gap"
            print(f"{m['pg']:>4} {m['fill']:6.1f} {m['cover']:6.1f} {m['last']:8.0f} "
                  f"{m['gap']:6.0f} {m['gap_y']:5.0f}  {verdict}")
        bad = [m["pg"] for m in rows if m["fill"] < 70]
        print(f"\n{tag}: pages with fill<70%: {bad}")

if __name__ == "__main__":
    _main()
