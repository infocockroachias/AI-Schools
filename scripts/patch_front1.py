#!/usr/bin/env python3
"""Front matter pass 1: licence page, imprint table, colophon — remove toolchain mentions,
PRATIMA AI ownership + collaboration agreement. Applies to all five classes."""
import re

BASE = "/home/z/my-project/scripts"
DIRS = ["ai_handout", "ai_handout_c7", "ai_handout_c8", "ai_handout_c9", "ai_handout_c10"]

LICENCE_NEW = (
    "This handbook is © #datetime.today().display(\"[year]\") *PRATIMA AI*. All rights reserved. The title, "
    "the missions, the activities, the stories, the diagrams and the design of this series are the "
    "intellectual property of PRATIMA AI. No part of this book may be copied, reproduced, sold, "
    "redistributed or republished in any form without the written permission of PRATIMA AI. Schools and "
    "educators who would like to collaborate with the series — through adoption programmes, translations "
    "or local editions — are warmly welcome to contact PRATIMA AI and sign a collaboration agreement."
)

DTABLE_NEW = '''dtable(("You MAY", "You may NOT"),
      ([ photocopy pages for use in your own registered classroom ], [ sell this book or any copy of it ]),
      ([ use the missions with your students, on paper ], [ remove the credit lines or the licence ]),
      ([ recommend the series to other schools and teachers ], [ claim the activities are your own invention ]),
      ([ contact PRATIMA AI to sign a collaboration agreement ], [ use the series to advertise any product or service ]),
      widths: (1fr, 1fr),'''

COLOPHON_NEW = {
    "ai_handout": "Set in *Nunito* and *Baloo 2* on warm paper stock. Both typefaces are used under the SIL Open Font Licence. Every chart, grid, diagram and pixel drawing in this book is drawn as crisp vector art, so each page prints cleanly at any size.",
    "ai_handout_c7": "Set in *Nunito* and *Baloo 2* on warm paper stock. Both typefaces are used under the SIL Open Font Licence. Every chart, grid, diagram and pixel drawing in this book is drawn as crisp vector art, so each page prints cleanly at any size.",
    "ai_handout_c8": "Set in *Nunito* and *Baloo 2* on warm paper stock. Both typefaces are used under the SIL Open Font Licence. The book's diagrams are printed as crisp, high-resolution figures, and every page was reviewed individually before this edition went to press.",
    "ai_handout_c9": "Set in *Nunito* and *Baloo 2* on warm paper stock. Both typefaces are used under the SIL Open Font Licence. The book's diagrams are printed as crisp, high-resolution figures, and every page was reviewed individually before this edition went to press.",
    "ai_handout_c10": "Set in *Nunito* and *Baloo 2* on warm paper stock. Both typefaces are used under the SIL Open Font Licence. The book's diagrams are printed as crisp, high-resolution figures, and every page was reviewed individually before this edition went to press.",
}

for d in DIRS:
    p = f"{BASE}/{d}/front.typ"
    src = open(p).read()
    orig = src

    # 1. licence opening paragraph
    src, n = re.subn(r"This handbook is ©.*?for its own learners\.", LICENCE_NEW, src, count=1, flags=re.S)
    assert n == 1, (d, "licence para")

    # 2. dtable rows
    src, n = re.subn(r"dtable\(\(\"You MAY\", \"You may NOT\"\),.*?widths: \(1fr, 1fr\),", DTABLE_NEW, src, count=1, flags=re.S)
    assert n == 1, (d, "dtable")

    # 3. imprint lines
    src, n = re.subn(r"\[\*Author:\*\], \[[^\]]*\],", "[*Author:*], [PRATIMA AI · Research & Curriculum Team],", src, count=1)
    assert n == 1, (d, "author")
    src, n = re.subn(r"\[\*Published by:\*\], \[[^\]]*\],", "[*Published by:*], [PRATIMA AI],", src, count=1)
    assert n == 1, (d, "publisher")
    src, n = re.subn(r"\[\*Edition:\*\], \[[^\]]*\],", "[*Edition:*], [First Edition · 1.0],", src, count=1)
    assert n == 1, (d, "edition")

    # 4. colophon inner text
    i0 = src.index("text(size: 9.4pt, fill: ink-soft)[")
    i1 = src.index("  })", i0)
    src = src[:i0] + f"text(size: 9.4pt, fill: ink-soft)[\n      {COLOPHON_NEW[d]}\n    " + src[i1:]

    assert src != orig
    open(p, "w").write(src)
    print(d, "licence/imprint/colophon rewritten")

# sanity: no toolchain words remain in any front.typ
import subprocess
for d in DIRS:
    out = subprocess.run(["grep", "-in", "typst\|machiatto\|visualgeneration\|MIT licence", f"{BASE}/{d}/front.typ"], capture_output=True, text=True).stdout
    print(d, "->", "CLEAN" if not out.strip() else out)
