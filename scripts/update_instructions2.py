#!/usr/bin/env python3
"""Add the markup-mode-brackets pitfall bullet after the bare-h bullet
in every class INSTRUCTIONS.md (Production pitfalls section)."""
from pathlib import Path

BASE = Path("/home/z/my-project/scripts")
DIRS = ["ai_handout", "ai_handout_c7", "ai_handout_c8", "ai_handout_c9", "ai_handout_c10"]

ANCHOR = "when a call follows another code call inside markup."
BULLET = """
- **Markup-mode brackets are literal:** `[` and `]` are ordinary TEXT in markup
  mode; they delimit content only in code positions (`#call(...)[body]`, inside
  `grid(...)`/`dtable(...)` arguments). A "nested" `[*bold*]` line inside a task
  body prints the brackets and drops the book font (production bug found in
  Class 7 "Three Checks at the Shop", fixed 2026-10). Write plain markup lines
  instead — verified rendering equivalent (V2 style).
"""

for d in DIRS:
    f = BASE / d / "INSTRUCTIONS.md"
    src = f.read_text(encoding="utf-8")
    if "Markup-mode brackets are literal" in src:
        print(f"{d}: already patched, skip")
        continue
    if ANCHOR in src:
        src = src.replace(ANCHOR, ANCHOR + BULLET, 1)
        f.write_text(src, encoding="utf-8")
        print(f"{d}: bracket pitfall added")
    else:
        print(f"{d}: ANCHOR NOT FOUND — check manually")
