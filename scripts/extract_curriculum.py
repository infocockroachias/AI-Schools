#!/usr/bin/env python3
"""Extract chapter-opener metadata (title, summary, missions, link, words) from all class .typ sources."""
import re, os, glob

BASE = "/home/z/my-project/scripts"
classes = {
    "ai_handout": "Class 6",
    "ai_handout_c7": "Class 7",
    "ai_handout_c8": "Class 8",
    "ai_handout_c9": "Class 9",
    "ai_handout_c10": "Class 10",
}

def parse_files(d):
    out = []
    files = sorted(glob.glob(os.path.join(BASE, d, "ch*.typ")))
    for f in files:
        text = open(f, encoding="utf-8").read()
        # find chapter-opener calls (multi-line)
        for m in re.finditer(r'#chapter-opener\((\d+),\s*"([^"]+)",\s*"([^"]*)",(.*?)\)\)\n', text, re.S):
            num, title, question, body = m.groups()
            summ = re.search(r'summary:\s*\[(.*?)\]', body, re.S)
            missions = re.search(r'missions:\s*"([^"]*)"', body)
            link = re.search(r'link:\s*"([^"]*)"', body)
            words = re.search(r'words:\s*\((.*?)\)', body, re.S)
            word_list = re.findall(r'"([^"]+)"', words.group(1)) if words else []
            out.append({
                "file": os.path.basename(f), "num": int(num), "title": title,
                "question": question,
                "summary": re.sub(r'\s+', ' ', summ.group(1)).strip() if summ else "",
                "missions": missions.group(1) if missions else "",
                "link": link.group(1) if link else "",
                "words": word_list,
            })
    return out

for d, label in classes.items():
    print(f"\n{'='*70}\n{label}  ({d})\n{'='*70}")
    # class theme from main.typ
    mt = open(os.path.join(BASE, d, "main.typ")).read()
    t = re.search(r'cover-title:\s*"([^"]*)"', mt)
    s = re.search(r'cover-subtitle:\s*"([^"]*)"', mt)
    lvl = re.search(r'cover-meta:\s*\("([^"]*)",\s*"([^"]*)"', mt)
    print(f"THEME: {t.group(1) if t else '?'}")
    print(f"SUBTITLE: {s.group(1) if s else '?'}")
    print(f"LVL: {lvl.group(1) if lvl else '?'} | {lvl.group(2) if lvl else '?'}")
    for ch in parse_files(d):
        print(f"\n--- CH {ch['num']}: {ch['title']}  [{ch['file']}]  missions {ch['missions']}")
        print(f"    Q: {ch['question']}")
        print(f"    LINK: {ch['link']}")
        print(f"    WORDS: {', '.join(ch['words'])}")
        print(f"    SUMMARY: {ch['summary'][:400]}")
