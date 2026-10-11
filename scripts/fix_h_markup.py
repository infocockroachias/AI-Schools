#!/usr/bin/env python3
"""
Fix Typst markup leak: bare `h(Npt)` rendered as literal text on PDF pages.

Root cause: inside a Typst markup block [...], after a code call like
`#box(...)` closes with `)`, the parser returns to MARKUP mode. A following
bare `h(4pt)` is therefore printed as literal text "h(4pt)" on the page
instead of being parsed as spacing code. Fix: prefix with `#`.

Pattern is strictly `) h(Npt)` — code-context uses (`; h(4pt)`, `= h(4pt)`,
standalone in {..} blocks) never match this signature, so the rewrite is safe.
Applies to all five class books.
"""
import re
from pathlib import Path

BASE = Path("/home/z/my-project/scripts")
DIRS = ["ai_handout", "ai_handout_c7", "ai_handout_c8", "ai_handout_c9", "ai_handout_c10"]
PAT = re.compile(r"\) h\((\d+(?:\.\d+)?)pt\)")

total = 0
for d in DIRS:
    for f in sorted((BASE / d).glob("*.typ")):
        src = f.read_text(encoding="utf-8")
        out, n = PAT.subn(r") #h(\1pt)", src)
        if n:
            f.write_text(out, encoding="utf-8")
            print(f"{d}/{f.name}: {n} fix(es)")
            total += n
print(f"TOTAL: {total} bare h() leaks fixed")
