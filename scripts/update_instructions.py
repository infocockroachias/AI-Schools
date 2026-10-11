#!/usr/bin/env python3
"""Update INSTRUCTIONS.md in class dirs:
1. c8/c9 line: stale "detective's note" -> actual component names
2. c8: task-name rule documents the Data Auditor rename + routine register rule
3. Append "Production pitfalls" section to all five books (bare-h leak QA,
   post-build token scan, register sweep for the verification routine).
"""
from pathlib import Path

BASE = Path("/home/z/my-project/scripts")
DIRS = ["ai_handout", "ai_handout_c7", "ai_handout_c8", "ai_handout_c9", "ai_handout_c10"]

NEXT_SEC = {"ai_handout": 6, "ai_handout_c7": 6, "ai_handout_c8": 9, "ai_handout_c9": 9, "ai_handout_c10": 9}

PITFALLS = """
## {n}. Production pitfalls (zero-tolerance QA)

- **Bare `h()` leak:** inside a markup block `[...]`, text after a `#code(...)`
  call closes is MARKUP again — a bare `h(4pt)` there prints the literal string
  "h(4pt)" on the page (production bug found on the pledge/checklist pages,
  fixed 2026-10 in all five books; 51 instances). Always write `#h(...)`,
  `#v(...)` when a call follows another code call inside markup.
- **Post-build token scan:** after every build, run `pdftotext main.pdf -` and
  grep for leaked tokens (`h(`, `v(`, `pt)`, `box(`, `ruled-lines`, `#`).
  Zero hits is the pass bar before any PDF ships.
- **Register sweep for the verification routine:** from Class 8 up the moves
  are *verify → cross-check → question* (+ *seek the original* from Class 9,
  the "Verify-It Routine"). The Class 6/7 wording "trace / test / smell" must
  never appear in Class 8-10 body text. Task IDs are never renumbered; display
  titles may be aligned to the class register (T8-04 "Data Detective" ->
  "Data Auditor").
"""

for d in DIRS:
    f = BASE / d / "INSTRUCTIONS.md"
    src = f.read_text(encoding="utf-8")
    if "Production pitfalls" in src:
        print(f"{d}: already patched, skip")
        continue
    if d == "ai_handout_c8":
        src = src.replace('knowledge: "detective\'s note" explainers', 'knowledge: "engineer\'s note" explainers')
        src = src.replace(
            'spec (e.g. T8-04 "Data Detective") are kept verbatim regardless of register.',
            'spec are kept verbatim regardless of register; IDs are never renumbered, while\n'
            'display titles may be aligned to the register (T8-04 "Data Detective" -> "Data Auditor").'
        )
    elif d == "ai_handout_c9":
        src = src.replace('knowledge: "detective\'s note" explainers', 'knowledge: "analyst\'s note" explainers')
    f.write_text(src + PITFALLS.format(n=NEXT_SEC[d]), encoding="utf-8")
    print(f"{d}: INSTRUCTIONS.md updated")
