#!/usr/bin/env python3
"""Render given pages of a PDF to PNGs. Usage: render_page.py <pdf> <pages e.g. 13,14-16> [outdir] [scale]"""
import sys, os
import pypdfium2 as pdfium

pdf_path = sys.argv[1]
pages = []
for part in sys.argv[2].split(","):
    if "-" in part:
        a, b = part.split("-")
        pages.extend(range(int(a), int(b) + 1))
    else:
        pages.append(int(part))
outdir = sys.argv[3] if len(sys.argv) > 3 else "/home/z/my-project/scripts/page_renders"
scale = float(sys.argv[4]) if len(sys.argv) > 4 else 2.0

os.makedirs(outdir, exist_ok=True)
pdf = pdfium.PdfDocument(pdf_path)
base = os.path.splitext(os.path.basename(pdf_path))[0][:24]
for p in pages:
    page = pdf[p - 1]
    img = page.render(scale=scale).to_pil()
    out = os.path.join(outdir, f"{base}_p{p:02d}.png")
    img.save(out)
    print(out, img.size)
