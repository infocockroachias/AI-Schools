#!/usr/bin/env python3
"""Scan all class PDFs for text glitches: stray brackets, stray **, duplicated sentences."""
import pypdfium2 as pdfium, re, sys

BOOKS = {
 'c6': '/home/z/my-project/download/PRATIMAI_AI_Handout_Class6_AI_Around_Me.pdf',
 'c7': '/home/z/my-project/download/PRATIMAI_AI_Handout_Class7_How_Machines_Learn.pdf',
 'c8': '/home/z/my-project/download/PRATIMAI_AI_Handout_Class8_Build_the_AI_Cycle.pdf',
 'c9': '/home/z/my-project/download/PRATIMAI_AI_Handout_Class9_The_Logic_Under_the_Magic.pdf',
 'c10':'/home/z/my-project/download/PRATIMAI_AI_Handout_Class10_Decide_Evaluate_Design.pdf',
}

for k, path in BOOKS.items():
    pdf = pdfium.PdfDocument(path)
    print(f"===== {k} ({len(pdf)}pp) =====")
    for i in range(len(pdf)):
        txt = pdf[i].get_textpage().get_text_bounded()
        # stray asterisks (bold markers that leaked)
        for m in re.finditer(r"\*\*", txt):
            s = max(0, m.start()-60)
            print(f"  p{i+1} STRAY** : ...{txt[s:m.end()+60]!r}...")
        # task body starting with stray bracket (rendered as "[ " or "] " after task title)
        for m in re.finditer(r"MIN\s*\n\s*[\[\]]\s", txt):
            s = max(0, m.start()-20)
            print(f"  p{i+1} BRACKET-LEAK: ...{txt[s:m.end()+70]!r}...")
        # duplicated sentence heuristic: same 40+ char chunk twice within 400 chars
        flat = re.sub(r"\s+", " ", txt)
        for m in re.finditer(r"([A-Z][a-z'][^\.\?\!]{35,90}[a-z\?\!\.\”\"]) ?(?=.{0,3}\1)", flat):
            print(f"  p{i+1} DUP? : {m.group(1)[:70]!r}")
