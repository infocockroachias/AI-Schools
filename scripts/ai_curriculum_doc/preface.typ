// ============================================================
//  PRATIMAI · The AI Curriculum — Preface (one full page)
// ============================================================
#import "template.typ": *

#let lead(txt) = {
  v(5pt)
  text(font: f-display, size: 9.4pt, weight: 800, tracking: 0.16em, fill: amber-deep, upper(txt))
  v(5pt)
}

#let preface-page = {
  set text(size: 10.6pt)
  set par(spacing: 1.14em)
  grid(columns: (auto, 1fr), column-gutter: 12pt, align: (left, horizon),
    text(font: f-display, size: 22pt, weight: 800, fill: teal, "Preface"),
    line(length: 100%, stroke: 1.2pt + amber),
  )
  v(9pt)
  text(size: 10.6pt, style: "italic", fill: ink-soft, [A note from the PRATIMA AI Curriculum Team on how this five-year course is designed — and why.])
  v(6pt)

  lead("Why we built this curriculum")
  prose[Every child already lives with artificial intelligence. It picks the next video, reroutes the school bus around traffic, and answers the question a cousin whispers to a phone. What most children never get is the chance to look underneath — to see that a “smart” machine is following steps or learning from examples, that its knowledge comes from data, and that it can be wrong in ways adults miss. We built this curriculum to give every child that chance, from Class 6 to Class 10. The design follows what we know about how children learn: concrete before abstract, doing before defining, talking before testing. So nothing here starts with a definition; everything starts with something a child can hold, sort, measure or argue about.]

  lead("What schools are usually offered")
  prose[Schools looking for AI education usually meet one of three things. First, a textbook of definitions to memorise — accurate, perhaps, but inert for a twelve-year-old. Second, a coding course that needs a laboratory, licensed software and screens many classrooms cannot spare, which quietly divides children into those who have and those who do not. Third, material adapted from adult corporate training and dressed down with cartoons. All three share one flaw: they teach *about* machines instead of teaching children to *think* — carefully, honestly and with their own hands — about what those machines really do.]

  lead("How we are different")
  prose[Our answer is a five-year journey built on five commitments. *Paper first:* all 96 missions run on pencil, paper and conversation — no laboratory, no screens, no child left behind by cost. *One role per year:* the Detective who notices, the Investigator who operates, the Engineer who plans the cycle, the Analyst who reasons with the mathematics, and the Designer who evaluates and designs responsibly. *Human versus machine, side by side:* students write a paragraph and compare it with one a machine wrote, judge contests between people and programs, and discover where human judgment genuinely beats pattern-matching — and where it does not. *Ethics woven through:* fairness, honesty, privacy and accountability appear in every year, because children meet AI's failures as often as its magic. *Rooted in this country:* kirana stores, monsoon data and neighbourhood surveys — the examples are the students' own world.]

  lead("Our activities and tasks")
  prose[Every chapter runs on missions — structured written activities a pair or team completes in class: running a human robot, auditing an unfair dataset, holding a courtroom trial for an AI mistake, dismantling a “99% accurate” claim. Each year closes with a capstone: a neighbourhood investigation, a class-built prediction machine, a defended project proposal, an SDG-linked brief, a responsible-design pitch to a board of judges. Assessment is formative throughout — feedback in the margins, a badge earned each year, a portfolio by Class 10 — because our goal is confidence, not examination fear.]

  lead("Where our students end up")
  prose[A student who walks the full journey can do something rare: notice the systems around them, operate their core ideas with their own hands, plan an AI project the way professionals do, reason with the mathematics underneath, and finally judge and design such systems responsibly — defending every choice with evidence. They will not all become AI engineers, and they should not need to. But every one of them will study, work and vote in a world full of these machines. We want them meeting that world awake: curious, careful and unafraid to ask how it really works. That is the end goal — and every mission in the five books was built to serve it.]

  v(8pt)
  block(width: 100%, {
    line(length: 100%, stroke: 0.6pt + line-soft)
    v(5pt)
    grid(columns: (1fr, auto),
      text(font: f-display, size: 9.2pt, weight: 800, tracking: 0.14em, fill: ink-soft, "THE AI CURRICULUM · CLASS 6–10 · FIVE BOOKS, ONE JOURNEY"),
      text(size: 9.8pt, style: "italic", fill: teal, "The PRATIMA AI Curriculum Team"),
    )
  })
}
