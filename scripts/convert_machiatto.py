#!/usr/bin/env python3
"""Convert PRATIMAI handout content modules to the machiatto edition.
- font sizes x1.1 (10% increase for Classes 6-7 readers)
- ruled-line leads x1.1
- box anatomy -> machiatto (radius 5pt, 1pt ink-family strokes)
- insert section headings into c6 capstone chapter
- back matter: chap.update + display headings -> real unnumbered level-1 headings
"""
import re, sys, pathlib

def scale_sizes(text):
    def rep(m):
        val = float(m.group(1))
        new = round(val * 1.1, 1)
        if new == int(new): new = int(new)
        return f"size: {new}pt"
    return re.sub(r"size:\s*([0-9.]+)pt", rep, text)

def scale_leads(text):
    def rep(m):
        val = float(m.group(1))
        new = round(val * 1.1, 1)
        if new == int(new): new = int(new)
        return f"lead: {new}mm"
    return re.sub(r"lead:\s*([0-9.]+)mm", rep, text)

BORDER_RULES = [
    (r"stroke:\s*0\.8pt \+ line-soft", "stroke: 0.9pt + ink-soft"),
    (r"stroke:\s*0\.7pt \+ line-soft", "stroke: 0.9pt + ink-soft"),
    (r"stroke:\s*0\.8pt \+ teal-mid",  "stroke: 0.9pt + ink-soft"),
    (r"stroke:\s*\(left: 3pt \+ teal\)",  "stroke: 1pt + ink"),
    (r"stroke:\s*\(left: 3pt \+ amber\)", "stroke: 1pt + ink"),
    (r"radius:\s*0pt", "radius: 5pt"),
]

def convert(path, is_ch5=False):
    p = pathlib.Path(path)
    t = p.read_text()
    orig = t
    t = scale_sizes(t)
    t = scale_leads(t)
    for pat, rep in BORDER_RULES:
        t = re.sub(pat, rep, t)
    p.write_text(t)
    return orig != t

def insert_secs_c5(path):
    p = pathlib.Path(path)
    t = p.read_text()
    anchor1 = '#grid(columns: (1fr, 1fr), column-gutter: 7pt,\n  block(width: 100%, breakable: false, radius: 5pt, stroke: 0.9pt + ink-soft, fill: white, inset: (x: 10pt, y: 8pt), {\n    text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[GROUP ROLES'
    t = t.replace(anchor1, '#sec(1, "Run a real survey")\n' + anchor1, 1)
    anchor2 = '#task("T6-19"'
    t = t.replace(anchor2, '#sec(2, "Design a helper machine")\n\n' + anchor2, 1)
    anchor3 = '#task("T6-20"'
    t = t.replace(anchor3, '#sec(3, "Close the case")\n\n' + anchor3, 1)
    p.write_text(t)

HEADING_SPOTS = [
    # (old opener block start, title, italic subtitle)
    ('My AI words',
     'The ten words on this case — each one met through an experience, never before.'),
    ('My progress',
     'Shade honestly — detectives never fake evidence.'),
]

def convert_back(path):
    p = pathlib.Path(path)
    t = p.read_text()
    for title, sub in HEADING_SPOTS:
        # pattern: #chap.update("TITLE")\n#pagebreak()\n\n#grid(... big display heading ...)\n#v(NNpt)
        pat = re.compile(
            r'#chap\.update\("' + re.escape(title) + r'"\)\s*#pagebreak\(\)\s*'
            r'#grid\(columns: \(auto, 1fr\), column-gutter: 9pt.*?\)\s*#v\([0-9.]+pt\)',
            re.S)
        repl = ('#heading(level: 1, numbering: none)[' + title + ']\n'
                '#align(center, text(size: 10.3pt, fill: ink-soft, style: "italic")[' + sub + '])\n'
                '#v(10pt)')
        t, n = pat.subn(repl, t)
        print(f"  back-heading '{title}': {n} replacement(s)")
    p.write_text(t)

if __name__ == "__main__":
    base = sys.argv[1] if len(sys.argv) > 1 else "/home/z/my-project/scripts/ai_handout"
    for f in ["ch1.typ", "ch2.typ", "ch3.typ", "ch4.typ", "ch5.typ", "ch6_back.typ"]:
        changed = convert(f"{base}/{f}")
        print(f"{f}: {'converted' if changed else 'unchanged'}")
    insert_secs_c5(f"{base}/ch5.typ")
    print("ch5: sections inserted")
    convert_back(f"{base}/ch6_back.typ")
    print("ch6_back: headings converted")
