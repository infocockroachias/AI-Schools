#import "template.typ": *
// ============================================================
//  CHAPTER 4 — ETHICS, GOVERNANCE & SOCIETY   (tasks 15–18)
// ============================================================
#chapter-opener(4, "Ethics, Governance & Society", "Who decides — and who answers when the decision harms?",
  outcomes: ("10.R1", "10.R2"), strands: ("R", "W"),
  summary: [Chapters 1–3 gave you the machinery; this chapter gives it a conscience and a courtroom. You will run a medical-triage tool through the four bioethics principles that doctors have argued with for decades, conduct a full algorithm audit — bias, transparency, accountability, each with evidence — map your privacy rights against your responsibilities, and face generative AI as the integrity question it truly is: what may a machine write in your name, and what must never leave your hands? The chapter's quiet thesis: "legal" and "ethical" are different words, and the space between them is where every professional you will ever meet does their real work.],
  missions: "T10-15 – T10-18",
  link: "Links: Biology — medical ethics · Civics — rights & governance · Economics — labour markets · English — reasoned argument",
  extras: opener-extras(
    words: ("accountability", "transparency", "data minimisation", "integrity"),
    warmup: [A hospital deploys a triage tool that cuts waiting times by 30% — and quietly ranks one neighbourhood's patients lower. Which single word names what must happen next? Keep your answer for Section 4.2.],
    need: ("pencil", "sticky notes", "your Chapter 3 metric choices", "one news item about an AI decision"),
  ))

// ---------------- 4.1 ----------------
#sec(1, "Four principles, one case: the ethics frame with teeth")
Medicine arrived at its four principles after decades of real harm: *autonomy* (people choose for themselves), *beneficence* (actively do good), *non-maleficence* (do no harm), *justice* (fair shares of benefit and burden). AI inherits all four the day a model starts ranking, triaging or recommending for people. The frame's power is its honesty: a design can satisfy two principles and fail the others, and the failure is specific enough to fix. Run the four questions *before* deployment — after deployment, you are not designing any more; you are apologising.

#figure-visual("visuals/c10_ch4_four-principles.png", [The four principles as an instrument panel. Each needle must move; two green dials do not make a safe flight.])

#task("T10-15", "Four Principles Case", mode: "group", mins: "25")[[
  The case: a city hospital trials a triage tool that reads patient files and ranks who should be seen first. Waiting time drops 30% overall. Complaints say patients from the old town clinic rank lower, the tool's reasoning is not shown to doctors, and nobody at the hospital can say who owns its errors.
  #v(4pt)
  #dtable(("Principle", "Verdict: pass / strained / fails", "The specific evidence from the case"),
    ([Autonomy], [], []),
    ([Beneficence], [], []),
    ([Non-maleficence], [], []),
    ([Justice], [], []),
    widths: (0.7fr, 0.9fr, 1.9fr),
  )
  #v(5pt)
  *a)* Your group's single strongest fix, chosen from ALL four rows — and which principle it repairs. #ruled-lines(2, lead: 8.2mm)
  *b)* The hospital says "overall benefit is 30%, so deploy". Which principle is that argument using as a shield — and what does the frame answer? #ruled-lines(2, lead: 8.2mm)
  *c)* Name the one group whose voice is missing from this case entirely — and the question you would put to them. #ruled-lines(2, lead: 8.2mm)
]]
#wordpower(24, "accountability", [A named person or body that answers for a system's decisions — in writing, in advance.])

// ---------------- 4.2 ----------------
#sec(2, "The algorithm audit: bias, transparency, accountability")
An audit is what professionals do instead of arguing. *Bias*: compare outcomes across groups — does the model serve one community's accents, faces, postcodes measurably worse? *Transparency*: can the people affected find out what the system considers and why — at least the factors, if not the code? *Accountability*: is there a named owner, an appeal route, a log? A tool can be accurate and still fail an audit — that is the gap between the syllabus question and the news story. Auditing is a skill with a shape: claim, evidence, verdict, fix — the same shape your lab reports have used for years.

#task("T10-16", "Algorithm Audit Report", mode: "group", mins: "30", hands: true)[[
  Audit ONE system your group knows (a recommendation feed, a helpline bot, a school CCTV alert, an exam proctoring tool — invented details allowed, real names not required).
  #v(4pt)
  #grid(columns: (1fr, 1fr), column-gutter: 8pt, row-gutter: 6pt,
    box(fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[BIAS — WHO SERVES WORSE?]
      text(size: 9.4pt, fill: ink-soft, style: "italic")[Name the groups; state the measurable difference you suspect; say how you would test it.]
      ruled-lines(4, lead: 7.6mm)
    }),
    box(fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[TRANSPARENCY — CAN THEY SEE IN?]
      text(size: 9.4pt, fill: ink-soft, style: "italic")[What can an affected person find out about the decision — factors, data, appeal? What is hidden?]
      ruled-lines(4, lead: 7.6mm)
    }),
    box(fill: teal-faint, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[ACCOUNTABILITY — WHO ANSWERS?]
      text(size: 9.4pt, fill: ink-soft, style: "italic")[Named owner? Appeal route? Log of decisions? Write who SHOULD own it, by role.]
      ruled-lines(4, lead: 7.6mm)
    }),
    box(fill: amber-soft, radius: 5pt, stroke: 0.6pt + line-soft, inset: (x: 9pt, y: 7pt), {
      text(size: 9pt, weight: 800, fill: amber-deep, tracking: 0.1em)[VERDICT & ONE FIX]
      text(size: 9.4pt, fill: ink-soft, style: "italic")[Ship / fix-first / stop. The single change that most improves the audit — and who must approve it.]
      ruled-lines(4, lead: 7.6mm)
    }),
  )
  #v(4pt)
  *Present in 90 seconds:* your verdict, your fix, and the one question you could not answer from outside the system. Unanswerable questions go on the class wall — they are Chapter 5 material.
]]
#wordpower(25, "transparency", [Whether affected people can see what a system considers and why — at least the factors.])

// ---------------- 4.3 ----------------
#sec(3, "Privacy: your rights and your responsibilities")
Privacy is not secrecy; it is *control over your own story*. A working set of rights, in plain language: to know what is collected; to reach it and correct it; to know whom it was shared with; to withdraw; and to have it deleted when the purpose ends. India's data-protection law (the DPDP Act, 2023) gives these ideas legal form — verify the current rules with your teacher before quoting section numbers in an exam, because this print may outlive a regulation. The counterweight is *data minimisation*, the designer's discipline: collect only what the purpose needs, keep it only as long as the purpose lives. Every field you delete is a field that can never leak, never be subpoenaed, never be reused against its subject.

#task("T10-17", "Privacy Rights Scenarios", mode: "pair", mins: "15")[[
  For each scenario: which right is in play — and what should happen next?
  #v(4pt)
  #dtable(("Scenario", "Right in play", "What should happen"),
    ([A learning app keeps student error-logs 'forever for research', with no delete option], [], []),
    ([A class group photo is fed to a face-tagging service without asking the students], [], []),
    ([A delivery app shares your exact address with three 'partners' you never named], [], []),
    ([You ask a platform what data it holds; it replies with an advert], [], []),
    widths: (1.5fr, 0.7fr, 1.3fr),
  )
  #v(5pt)
  *The designer's turn:* your Chapter 5 brief will collect data from real people. Write your *minimisation list* now — every field you will NOT collect, and the one sentence of consent you will use. #ruled-lines(3, lead: 8.4mm)
]]
#wordpower(26, "data minimisation", [Collect only what the purpose needs; keep it only while the purpose lives.])

// ---------------- 4.4 ----------------
#sec(4, "Generative AI and integrity — plus the career map")
Generative AI writes essays, solves sums, drafts applications — and this year it sits in every exam hall in the country. Integrity is the design question, not the policing one: *what is schoolwork for?* If the purpose is the judgement you build while doing it, then outsourcing the judgement empties the task while leaving it technically complete. The honest line most professionals draw: AI may draft, suggest and explain; the student must be able to defend every claim it produced, and must say what they used. That same honesty is the career skill. Roles are reshaping rather than vanishing — data work, model evaluation, AI oversight, domain-expert-plus-tools. Chapter 5 closes the series with your personal map.

#task("T10-18", "Future Jobs & Skills", mode: "alone", mins: "15")[[
  *a)* Pick three roles you might want at 25 (engineer, doctor, teacher, designer, civil servant, farmer-entrepreneur, anything). For each, write: which parts of the job a model could draft — and which parts stay human because they carry judgement or responsibility. #writebox(26mm)
  *b)* Name the one skill that grows MORE valuable in all three of your rows. Defend the claim in one sentence. #ruled-lines(2, lead: 8.2mm)
  *c)* The honest risk: name one task in your dream role that could shrink — and what you would do about it *on purpose*. #ruled-lines(2, lead: 8.2mm)
  *d)* Your integrity line for this exam year: complete "I will use AI to help me …, and I will never let it …" #ruled-lines(2, lead: 8.2mm)
]]

#myth("If it is legal, it is ethical.")[Law is the floor, not the ceiling — it codifies what a society has agreed to punish, slowly and after the harm. The four principles ask what you should do while the law catches up: the triage tool in T10-15 could pass every current regulation and still fail justice. Every audit you run in life will find its hardest questions in the legal-but-wrong zone.]

#selfcheck(
  [I can run the four principles over an AI case and say exactly where each one bites],
  [I can audit a system for bias, transparency and accountability — with evidence, not vibes],
  [I can list my privacy rights and apply data minimisation to a design of my own],
  [I can state an integrity line for generative AI that I could defend to my examiners],
  [I can point at the legal-ethical gap in a real news case and name what should change],
)
#thinkink([A system I use that is probably legal and probably unfair. If I audited it (T10-16), the first thing I would find is …], lines: 2)

#note("Case notes — what changed in my thinking?")[
  Before this chapter "ethics" felt like opinions. Now it has four questions, an audit shape and a verdict — and the part I now see everywhere is … #ruled-lines(2, lead: 8.4mm)
]

#note("Chapter 4 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Four principles:* autonomy, beneficence, non-maleficence, justice. Run all four; two green dials do not make a safe flight.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Audit shape:* claim, evidence, verdict, fix — for bias, transparency and accountability in turn.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Privacy is control, and minimisation is the designer's discipline* — every field you delete is a field that can never leak.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Integrity line:* AI may draft and explain; you must be able to defend every claim — and say what you used.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#chapter-checkpoint(4,
  [The hospital calls its triage tool 'a doctor-support aid' to relax the rules. Which principle does that label touch first — and does the label survive contact with the case?],
  [Give one privacy right the learning app violated and ONE action a student could reasonably take this week.],
  [Why does "the law allows it" end an argument in a courtroom but not in a design review? Answer with the four-principles frame.],
)
#case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue about ethics and governance")

#homelink([
  With an adult, read ONE page of a real privacy policy or app permission screen — any service your family uses. Together, find: one field collected that the purpose does not need (minimisation miss), and one right you cannot locate (knowledge gap). Bring the page; Chapter 5's consent clause starts there.
])
