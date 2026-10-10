#!/usr/bin/env python3
"""Fill-ratio audit for newly built books (c8/c9)."""
import subprocess, os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from whitespace_audit2 import page_metrics

BOOKS = {sys.argv[1]: sys.argv[2]}
LIMIT = int(sys.argv[3]) if len(sys.argv) > 3 else 28

for tag, pdf in BOOKS.items():
    d = f"/home/z/my-project/scripts/audit_{tag}"
    os.makedirs(d, exist_ok=True)
    for f in os.listdir(d):
        if f.startswith("pg"):
            os.remove(os.path.join(d, f))
    subprocess.run(["pdftoppm", "-png", "-r", "100", pdf, os.path.join(d, "pg")], check=True)
    files = sorted(f for f in os.listdir(d) if f.startswith("pg") and f.endswith(".png"))
    rows = []
    for i, f in enumerate(files, 1):
        m = page_metrics(os.path.join(d, f))
        m["pg"] = i
        rows.append(m)
    rows.sort(key=lambda r: r["fill"])
    print(f"\n===== {tag}: {len(files)} pages, worst {LIMIT} by fill =====")
    print(f"{'pg':>4} {'fill%':>6} {'lastYmm':>8} {'gapMM':>6} verdict")
    for m in rows[:LIMIT]:
        v = "!! VERY EMPTY" if m["fill"] < 55 else ("! empty-ish" if m["fill"] < 70 else ("~ big midgap" if m["gap"] > 45 else "ok"))
        print(f"{m['pg']:>4} {m['fill']:6.1f} {m['last']:8.0f} {m['gap']:6.0f} {v}")
