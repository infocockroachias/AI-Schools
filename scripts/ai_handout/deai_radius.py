#!/usr/bin/env python3
"""De-AI pass 1: square all rounded corners in chapter modules.
Protects circle(radius: ...) which is a shape, not a corner style."""
import re, pathlib

BASE = pathlib.Path("/home/z/my-project/scripts/ai_handout")
FILES = ["ch0_front.typ", "ch1.typ", "ch2.typ", "ch3.typ", "ch4.typ", "ch5.typ", "ch6_back.typ"]

GUARD = "\x00CIRC\x00"
total = 0
for name in FILES:
    p = BASE / name
    s = p.read_text(encoding="utf-8")
    s = s.replace("circle(radius:", f"circle({GUARD}:")
    before = s
    # tuple forms: radius: (top-right: 30pt, ...)
    s, n1 = re.subn(r"radius:\s*\([^()]*\)", "radius: 0pt", s)
    # scalar forms: radius: 6pt / 999pt / 1.2pt
    s, n2 = re.subn(r"radius:\s*[0-9.]+pt", "radius: 0pt", s)
    s = s.replace(f"circle({GUARD}:", "circle(radius:")
    p.write_text(s, encoding="utf-8")
    n = n1 + n2
    total += n
    print(f"{name}: {n} radii squared ({n1} tuple, {n2} scalar)")
print(f"TOTAL: {total}")
