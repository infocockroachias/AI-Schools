#!/usr/bin/env python3
"""Contact sheets of flagged pages, 6 per sheet, with page labels."""
import sys
from PIL import Image, ImageDraw

def sheet(tag, pages, out):
    thumbs = []
    for p in pages:
        img = Image.open(f"/home/z/my-project/scripts/audit_{tag}/pg-{p:02d}.png")
        img = img.resize((img.width // 3, img.height // 3))
        d = ImageDraw.Draw(img)
        d.rectangle([0, 0, 120, 40], fill="red")
        d.text((8, 8), f"{tag} p{p}", fill="white")
        thumbs.append(img)
    w, h = thumbs[0].size
    cols, rows = 3, (len(thumbs) + 2) // 3
    canvas = Image.new("RGB", (cols * w + (cols + 1) * 8, rows * h + (rows + 1) * 8), "gray")
    for i, t in enumerate(thumbs):
        r, c = divmod(i, cols)
        canvas.paste(t, (8 + c * (w + 8), 8 + r * (h + 8)))
    canvas.save(out)
    print(out, canvas.size)

c6 = [5, 3, 35, 32, 37, 41, 42, 2, 25, 16, 33, 8, 24, 20, 17, 45, 7, 18, 1, 27, 11, 46]
c7 = [55, 46, 3, 5, 45, 36, 18, 27, 49, 8, 17, 53, 26, 35, 2, 12, 32, 7, 51, 44, 23]

groups6 = [c6[i:i+6] for i in range(0, len(c6), 6)]
for k, g in enumerate(groups6, 1):
    sheet("c6", g, f"/home/z/my-project/scripts/audit_c6/sheet6_{k}.png")
groups7 = [c7[i:i+6] for i in range(0, len(c7), 6)]
for k, g in enumerate(groups7, 1):
    sheet("c7", g, f"/home/z/my-project/scripts/audit_c7/sheet7_{k}.png")
