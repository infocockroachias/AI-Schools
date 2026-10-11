#!/usr/bin/env python3
"""Front matter pass 2: new acknowledgements (3 teams, brick by brick), psychology-of-learning
note in preface, role-correct greetings/arcs in front matter. Final role names used here;
global role pass runs afterwards and will not touch these texts."""

BASE = "/home/z/my-project/scripts"

TEAMS_PARA = (
    "This series was built brick by brick by three teams working as one. The *AI research team* checked "
    "every explanation against how machines really learn, so nothing in this book is a myth wearing a "
    "friendly font. The *academic team* walked every chapter beside the school syllabus, so each game "
    "quietly trains a skill that examinations will ask for later. And the *child-psychology team* shaped "
    "the pace of every page: short missions for young attention, quick wins that open every chapter, "
    "confidence circles that make honesty feel safe, and space to write on every task — because an idea "
    "worked by the hand is remembered by the mind. Alongside them, curriculum reviewers guarded the "
    "\"unplugged\" promise: not one mission in this series asks for a phone, an account or a password."
)

NOTE_KIDS = '''note("Why this book works the way it does")[
    #text(size: 9.8pt)[Your brain learns by *doing*, not by reading about doing. That is why every chapter opens with a quick win, explains only after you have tried, and asks you to *write* — writing pulls an idea from half-known to known. The confidence circles are not decoration: asking *how sure am I?* is a real thinking skill (psychologists call it metacognition), and it is the same habit scientists use. Missions are short because attention works in sprints. Ideas return in later chapters on purpose — like meeting a stranger twice, until they feel like a friend. And nothing here can be failed: a wrong answer you go on to check is just a clue you found early.]
  ]'''

NOTE_TEENS = '''note("Why this book works the way it does")[
    #text(size: 9.8pt)[This handbook is built around how teenage brains actually learn. Every chapter opens with a quick win — motivation first, theory second. You *do* before you *define*: each idea is met through an experience before it is named, because memory hooks onto action. The confidence circles train metacognition — knowing how sure you are is a skill, and honest rating makes it stronger. Tasks are time-boxed because attention works in sprints; ideas return across chapters on purpose, because a second meeting is what turns exposure into understanding; and every task leaves space to write, because producing your own answer beats re-reading every time. Nothing here can be failed: a wrong answer you go on to check is a clue found early.]
  ]'''

ACKS = {
"ai_handout": [
"""#let ack-text = [
  To the teachers and their Classes 6 and 7 who piloted every mission with pencils, paper
  and great patience — your classroom notes shaped this book. You told us which tasks made
  the room go quiet with thinking, which ones made it erupt in argument, and where the
  instructions needed one more example. Every one of those notes made a page here better.

  """ + TEAMS_PARA + """

  Thanks go as well to the designers of Nunito and Baloo 2, whose friendly letterforms keep
  pages of hard thinking feeling light. And finally, to the detective holding this book:
  every confidence circle, empty line and doodle box in here was left blank on purpose —
  because the last author of this case file is you.
]""",
],
"ai_handout_c7": [
"""#let ack-text = [
  To the teachers and their Classes 6 and 7 who piloted every mission with pencils, paper
  and great patience — your classroom notes shaped this book. You told us which tasks made
  the room go quiet with thinking, which ones made it erupt in argument, and where the
  instructions needed one more example. Every one of those notes made a page here better.

  """ + TEAMS_PARA + """

  Thanks go as well to the designers of Nunito and Baloo 2, whose friendly letterforms keep
  pages of hard thinking feeling light. And finally, to the AI Trainer holding this book:
  every confidence circle, empty line and blank chart in here was left empty on purpose —
  because the last author of this training log is you.
]""",
],
"ai_handout_c8": [
"""#let ack-text = [
  To the Classes 6 and 7 investigators whose case files came back covered in pencil, arrows and
  honest confidence circles — this book is built on your evidence. Your teachers told us which
  missions turned a quiet classroom into a planning meeting, where the instructions needed one
  more worked example, and which questions made the whole class argue productively for ten
  minutes. Every note shaped a page here.

  """ + TEAMS_PARA + """

  Thanks go as well to the designers of Nunito and Baloo 2, whose friendly letterforms keep
  pages of hard planning feeling light. And finally, to the AI Engineer holding this book:
  every blank table, empty checklist and half-drawn cycle map in here was left open on
  purpose — because on a real project, the plan is never handed to you. The next plan in
  this file is yours.
]""",
],
"ai_handout_c9": [
"""#let ack-text = [
  To the Classes 6, 7 and 8 investigators whose case files walked the whole road with us — from spotting
  learning machines to planning them on paper. Your notebooks convinced us that school students can run
  real statistics, real probability and real graph criticism when the numbers belong to problems they
  care about. This book finally hands you the engine room: the mathematics under the machine.

  To the maths teachers who read every mission and said "yes — but make the outlier crueler, make the
  dice honest, make the best-fit line earn itself": thank you. You protected the book from fake maths
  and from the greater sin, boring maths. And to the adults who will be asked "is the AI's average the
  same as MY average?" at the dinner table: by the last page, your student will answer you with a
  worked example.

  """ + TEAMS_PARA + """

  Thanks go as well to the designers of Nunito and Baloo 2, whose friendly letterforms keep
  pages of hard reasoning feeling light. Finally, to the AI Analyst holding this book: every
  dice roll you have not rolled yet, every line you have not drawn yet and every graph you
  have not yet caught lying is the real content of this case file. We only set the stage.
  You bring the evidence.
]""",
],
"ai_handout_c10": [
"""#let ack-text = [
  To the Classes 6, 7, 8 and 9 students who carried this series on their shoulders — the detectives
  who counted pixel grids, the builders who audited guest lists, the analysts who voted with rulers
  and dice — this final book is yours. Your teachers reported the moments that turned practice into
  conviction: the day a class argued for a full period about which metric a screening tool should
  chase, the proposal that failed its own fairness check and survived anyway. Those reports became
  the chapters that follow.

  To the curriculum reviewers who tested every mission against the promise that a board-year student
  needs *understanding, not another cram book*: thank you for holding the line. Nothing here asks you
  to memorise a syllabus; everything here makes the syllabus make sense. And to the adults who will
  be asked, over dinner, "who is responsible when a machine decides?" — this book trains a student
  to answer with a framework, an evidence table and an honest limit, and to keep their voice calm
  while doing it.

  """ + TEAMS_PARA + """

  Thanks go as well to the designers of Nunito and Baloo 2, whose friendly letterforms keep
  pages of hard argument feeling clear. Finally, to the AI Designer holding this copy: the
  last book of a series is a promise kept in public. Judge us gently, and send us what
  you find.
]""",
],
}

ANCHORS = {
    "ai_handout":     ("write, draw, tick, cross out and try again.]\n  v(8pt)", NOTE_KIDS),
    "ai_handout_c7":  ("write, draw, tick, cross out and try again.]\n  v(8pt)", NOTE_KIDS),
    "ai_handout_c8":  ("This book belongs to you: write, draw, cross out, improve.]\n  v(8pt)", NOTE_TEENS),
    "ai_handout_c9":  ("a suspicious mind are the complete toolkit.]\n  v(8pt)", NOTE_TEENS),
    "ai_handout_c10": ("the floor this book builds on.]\n\n  v(10pt)", NOTE_TEENS),
}

import re
for d, ack in ACKS.items():
    p = f"{BASE}/{d}/front.typ"
    src = open(p).read()

    # 1. replace whole ack-text block
    src, n = re.subn(r"#let ack-text = \[.*?\n\]", ack[0], src, count=1, flags=re.S)
    assert n == 1, (d, "ack")

    # 2. insert psychology note after welcome anchor
    anchor, note = ANCHORS[d]
    i = src.index(anchor) + len(anchor)
    src = src[:i] + "\n  v(8pt)\n\n  " + note + src[i:]

    open(p, "w").write(src)
    print(d, "ack + psychology note done")

# 3. role-correct greetings / arcs in front matter
edits = {
    "ai_handout_c8": [
        ("Welcome back, Builder!", "Welcome back, Engineer!"),
        ("professional builders plan on whiteboards and paper", "professional engineers plan on whiteboards and paper"),
    ],
    "ai_handout_c9": [
        ("Now comes the question every honest builder eventually faces", "Now comes the question every honest engineer eventually faces"),
    ],
    "ai_handout_c10": [
        ("Welcome back, Analyst. Four years of evidence sit behind you: in Class 6 you *spotted* learning machines, in Class 7 you *operated* them, in Class 8 you *planned and defended* them, in Class 9 you explained *why they work and when they fail*. This year the questions grow up one last time:",
         "Welcome back, Designer. Four years of evidence sit behind you: in Class 6 you *spotted* learning machines, in Class 7 you *operated* them, in Class 8 you *planned and defended* them, in Class 9 you explained *why they work and when they fail*. This year the questions grow up one last time:"),
        ("This is the year the analyst becomes the designer.", "This is the year you take the AI Designer's seat for good."),
    ],
}
for d, pairs in edits.items():
    p = f"{BASE}/{d}/front.typ"
    src = open(p).read()
    for old, new in pairs:
        assert old in src, (d, old[:50])
        src = src.replace(old, new)
    open(p, "w").write(src)
    print(d, "greetings/arcs adjusted")
