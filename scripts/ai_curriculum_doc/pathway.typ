// ============================================================
//  PRATIMAI · The AI Curriculum — closing pathway page
// ============================================================
#import "template.typ": *

#let pathway-row(level, cls, role, focus, cap) = (
  text(font: f-display, size: 9.6pt, weight: 800, fill: teal, level),
  text(font: f-display, size: 12pt, weight: 800, fill: ink, cls),
  text(font: f-display, size: 10.2pt, weight: 800, fill: amber-deep, role),
  text(size: 9.7pt, fill: ink, focus),
  text(size: 9.7pt, weight: 700, fill: teal, cap),
)

#let pathway-page = {
  pagebreak()
  grid(columns: (auto, 1fr), column-gutter: 12pt, align: (left, horizon),
    text(font: f-display, size: 22pt, weight: 800, fill: teal, "The Five-Year Pathway at a Glance"),
    line(length: 100%, stroke: 1.2pt + amber),
  )
  v(9pt)
  prose[Five books, one climb. Each year revisits the same five ideas — data, learning, fairness, evaluation and design — one level deeper, in a new role, with harder missions and more honest questions. The subjects already on the timetable carry the content: AI becomes a lens through which mathematics, language, science and social studies are used, not an extra subject to squeeze in.]

  v(6pt)
  table(
    columns: (58pt, 40pt, 92pt, 1fr, 108pt),
    align: (left, center, left, left, left),
    inset: (x: 8pt, y: 7.5pt),
    stroke: none,
    fill: (x, y) => if y == 0 { teal-deep } else if calc.odd(y) { teal-faint } else { white },
    table.header(
      text(font: f-display, size: 8.4pt, weight: 800, tracking: 0.12em, fill: white, "LEVEL"),
      text(font: f-display, size: 8.4pt, weight: 800, tracking: 0.12em, fill: white, "CLASS"),
      text(font: f-display, size: 8.4pt, weight: 800, tracking: 0.12em, fill: white, "STUDENTS BECOME"),
      text(font: f-display, size: 8.4pt, weight: 800, tracking: 0.12em, fill: white, "YEAR FOCUS"),
      text(font: f-display, size: 8.4pt, weight: 800, tracking: 0.12em, fill: white, "CAPSTONE"),
    ),
    ..pathway-row("1 · NOTICE", "6", "AI Detective", [Spotting smart machines; data as the food of AI; patterns and predictions; safety and honesty online], [My Neighbourhood AI Investigation]),
    ..pathway-row("2 · SORT & PREDICT", "7", "AI Investigator", [Running classification, regression and clustering; machines that see, read and recommend; bias, fakes and accountability], [Class Survey Machine]),
    ..pathway-row("3 · BUILD THE CYCLE", "8", "AI Engineer", [The AI project cycle; data audits, sampling and consent; accuracy and no-code tools; responsible use], [The AI Project Proposal]),
    ..pathway-row("4 · REASON", "9", "AI Analyst", [The mathematics under AI; data literacy and lying graphs; generative AI as mechanism and ethics], [The SDG-linked AI Brief]),
    ..pathway-row("5 · EVALUATE & DESIGN", "10", "AI Designer", [Model families; kernels and text tables; precision, recall and base rates; governance and responsible design], [The Responsible AI Design Brief]),
  )

  v(13pt)
  grid(columns: 3, column-gutter: 9pt,
    block(radius: 5pt, fill: white, stroke: 0.8pt + line-soft, inset: (x: 11pt, y: 10pt), width: 100%, breakable: false, {
      lab("route", "How the spiral works")
      v(5pt)
      text(size: 9.8pt, fill: ink)[Each book stands alone, but the journey does not: Class 7 opens by using what Class 6 noticed, and Class 10 audits everything the four earlier years built. Skills return at greater depth — charts in Class 6 become confusion matrices in Class 10.]
    }),
    block(radius: 5pt, fill: white, stroke: 0.8pt + line-soft, inset: (x: 11pt, y: 10pt), width: 100%, breakable: false, {
      lab("award", "How learning is assessed")
      v(5pt)
      text(size: 9.8pt, fill: ink)[Formative only. Every mission ends in reflection, every chapter in a recap, and every year in a badge — or, in Class 10, a portfolio. Capstones are judged live by classmates, panels and boards, so students practise defending evidence, not memorising answers.]
    }),
    block(radius: 5pt, fill: white, stroke: 0.8pt + line-soft, inset: (x: 11pt, y: 10pt), width: 100%, breakable: false, {
      lab("pencil", "What a school needs")
      v(5pt)
      text(size: 9.8pt, fill: ink)[Printed handouts, pencils, and a curious classroom. No laboratory, no screens, no annual licence — every child receives the same book and the same chance. A year of AI literacy costs the price of a workbook, because opportunity should never depend on infrastructure.]
    }),
  )

  v(13pt)
  block(width: 100%, radius: 6pt, fill: teal-deep, inset: (x: 14pt, y: 11pt), breakable: false, {
    grid(columns: (auto, 1fr), column-gutter: 12pt, align: (left, horizon),
      ico("robot", size: 13pt, fill: teal-soft),
      {
        text(font: f-display, size: 11.5pt, weight: 800, fill: white, "Bring the AI Curriculum to your school")
        v(2.5pt)
        text(size: 9.8pt, fill: teal-soft, "The five handouts in this series — one per class, 6 to 10 — are ready for adoption. Review a full copy, speak with our academic and psychology teams, and let us plan the rollout together.")
      },
    )
  })
}
