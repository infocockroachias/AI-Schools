#import "template.typ": *
// ============================================================
//  CHAPTER 3 — AI AT WORK IN INDIA   (7 pp · tasks 10–12)
// ============================================================
#chapter-opener(3, "AI at Work in India", "Where is AI already working — and how do I read its report card?",
  outcomes: ("7.W2", "7.D1"), strands: ("W", "D"),
  summary: [Learning machines are already your neighbours' colleagues. In this chapter you will tour five sectors — healthcare, education, transport, agriculture, communication — and give each helper a report card with a benefit AND a limit. Then you will learn their favourite language: charts. You will collect structured data, draw bar, line and pie charts, and then face the chart detective's hardest truth: some charts are drawn to mislead you.],
  missions: "T7-10 – T7-12",
  link: "Links: Maths — data handling & percentages · Social Science — community work",
  extras: opener-extras(
    words: ("structured data", "trend", "sample", "benefit", "limit"),
    warmup: [Name one machine you have seen helping an adult do their job — at a shop, a clinic, a bus stand, a farm or a bank. What did it seem to be doing?],
    need: ("pencil", "ruler", "colours for charts", "your sharpest suspicion"),
  ))

// ---------------- 3.1 ----------------
#sec(1, "Five sectors, five helpers")
Learning machines are already at work across India — not as magic, but as helpers with a job description. In *healthcare*, a machine scans lakhs of eye photos and flags the ones a doctor should check first. In *education*, an app watches which sums you get wrong and serves practice that fits you. In *transport*, map apps learn traffic patterns and reroute your bus. In *agriculture*, a farmer photographs a diseased leaf and gets a probable diagnosis. In *communication*, translation and voice tools carry a sentence across languages. Notice the pattern in every story: *data in, prediction out, then a human decides what to do*. The machine is the assistant — the judgement stays with people.

#task("T7-10", "One Problem, Many Data", mode: "group", mins: "15")[
  A team wants to build a *crop-disease helper*: a farmer photographs a leaf, the machine predicts the disease. Every good machine begins with this question — *what data would it need to learn?* Fill the table for at least four kinds of data.
  #v(4pt)
  #dtable(("Data the machine would learn from", "Where could it come from?", "Who would collect it?", "One care or limit"),
    ([ ], [ ], [ ], [ ]),
    ([ ], [ ], [ ], [ ]),
    ([ ], [ ], [ ], [ ]),
    ([ ], [ ], [ ], [ ]),
    widths: (1fr, 1fr, 32mm, 1fr),
  )
  #v(5pt)
  *Suppose 90 of the 100 leaf photos come from one district. What problem is already growing inside this data?* #ruled-lines(2, lead: 8.8mm)
  *The photos show farmers' fields. Should the team ask permission first? Why?* #ruled-lines(1, lead: 8.8mm)
]
#wordpower(9, "structured data", [Facts arranged in rows and columns, so patterns can be found.])

#note("A healthy data diet")[You already know the Class 6 rule: *garbage in, garbage out.* Structured data makes patterns findable — but only *honest, varied* data makes them true. Before trusting any table, a data detective asks: Who collected this? Who is missing from it? And would the collector profit from a particular answer?]

// ---------------- 3.2 ----------------
#sec(2, "Every helper has a benefit and a limit")
No helper is magic, and honest reporting means saying both halves out loud: what it does well, and where it can fail. An eye-screening machine can read photos all night without tiring — but it was trained on certain cameras and certain eyes, and it cannot explain its decision. A translation app carries your sentence across languages — but you met its downfall in T7-09. Being AI-literate is not about being amazed or alarmed; it is about holding both facts at once.

#task("T7-12", "Benefit–Limit Cards", mode: "pair", mins: "10")[
  For each sector, write *one* real benefit and *one* honest limit. No repeats across rows.
  #v(4pt)
  #dtable(("Sector", "One benefit it brings", "One honest limit"),
    ([Healthcare], [ ], [ ]),
    ([Education], [ ], [ ]),
    ([Transport], [ ], [ ]),
    ([Agriculture], [ ], [ ]),
    ([Communication], [ ], [ ]),
    widths: (30mm, 1fr, 1fr),
  )
  #v(5pt)
  *Which limit worries you most — and what would you tell the people who built it?* #ruled-lines(2, lead: 8.8mm)
]

// ---------------- 3.3 ----------------
#sec(3, "Reading the report card: bar, line, pie")
How do we know whether an AI helper — or any claim — is doing well? Its *data* is the report card, and the report card speaks through charts. You own the bar chart already: it *compares groups*. The *line graph* adds time: its slope tells the *trend*, the general direction — rising, falling, holding steady. The *pie chart* shows one whole split into parts. Each chart answers a different question, and a chart detective knows which is which: *“How many in each group?”* — bars. *“How is it changing?”* — line. *“What are the parts of one whole?”* — pie.

#grid(columns: (1fr, 1fr), column-gutter: 9pt,
  box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 9pt, y: 7pt), {
    text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[LINE GRAPH · BOOKS BORROWED, JUNE–NOVEMBER]
    v(5pt)
    linechart-example(("Jun", "Jul", "Aug", "Sep", "Oct", "Nov"), (42, 48, 55, 61, 58, 66), ymax: 70, ystep: 10, pw: 64mm, ph: 40mm, ylabel: "BOOKS")
    v(2pt)
    text(size: 9.7pt)[The *trend* is clearly #box(width: 22mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) — except a dip in #box(width: 14mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) .]
  }),
  box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 9pt, y: 7pt), {
    text(size: 9pt, weight: 800, fill: teal, tracking: 0.1em)[PIE CHART · HOW CLASS 7B TRAVELS TO SCHOOL]
    v(5pt)
    align(center, piechart-example((40, 30, 20, 10), ("Walk", "Bus", "Cycle", "Car"), (teal, amber, teal-mid, line-soft), pw: 40mm))
    v(4pt)
    pie-legend((40, 30, 20, 10), ("Walk", "Bus", "Cycle", "Car"), (teal, amber, teal-mid, line-soft))
    v(2pt)
    text(size: 9.7pt)[The whole circle is one class. Which answer can a pie chart *not* give you — the biggest group, or the exact number of children?]
  }),
)
#v(4pt)
#wordpower(10, "trend", [The general direction a line graph shows: rising, falling or steady.])
#wordpower(11, "sample", [The group you actually collected data from — always smaller than everyone.])

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · DRAW THE TREND YOURSELF]
  v(3pt)
  text(size: 10.3pt)[A weather station logged the maximum temperature (°C) on the first of six months:]
  v(4pt)
  dtable(("Month", "Jan", "Feb", "Mar", "Apr", "May", "Jun"), (["Temperature (°C)"], ["18"], ["22"], ["28"], ["36"], ["40"], ["38"]), widths: (34mm, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr))
  v(5pt)
  linechart-blank(("Jan", "Feb", "Mar", "Apr", "May", "Jun"), ymax: 45, ystep: 5, ylabel: "°C")
  v(2pt)
  text(size: 10.3pt)[*Hottest first-of-month:* #box(width: 16mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) · *Describe the trend from Jan to May, then what changed in Jun:* #box(width: 62mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))]
}))

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · WHICH CHART WOULD YOU CHOOSE?]
  v(3pt)
  dtable(("The question…", "Bar, line or pie?"),
    ([Which of five house teams collected the most bottle caps this month?], [ ]),
    ([How did our school's electricity bill change from June to December?], [ ]),
    ([Of the 40 books our class read, what share were folk tales?], [ ]),
    ([How does a sapling's height change day by day?], [ ]),
    ([Which canteen item — samosa, juice, banana or sandwich — is most popular?], [ ]),
    ([How does one whole day of a doctor split across ward rounds, files, surgery and rest?], [ ]),
    widths: (1fr, 34mm),
  )
  v(3pt)
  text(size: 8.8pt, fill: ink-soft, style: "italic")[Bars compare groups · lines follow change over time · pies split one whole into parts.]
}))

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[DETECTIVE DRILL · READ THE PIE YOURSELF]
  v(4pt)
  grid(columns: (44mm, 1fr), column-gutter: 10pt, align: (center, top),
    piechart-example((50, 25, 15, 10), ("Folk tales", "Adventure", "Poetry", "Science"), (teal, amber, teal-mid, line-soft), pw: 38mm),
    {
      text(size: 9.5pt)[Library week audit — 80 books borrowed.]
      v(3pt)
      text(size: 10.1pt)[*Roughly how many of the 80 were folk tales?* #box(width: 16mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))]
      v(3pt)
      text(size: 10.1pt)[*Which two kinds together take about one quarter of the circle?* #box(width: 30mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft))]
      v(3pt)
      text(size: 10.1pt)[*Can the pie tell us whether science books went UP this term? Why not?* #ruled-lines(1, lead: 7.9mm)]
    },
  )
}))

#note("Practice the survey — politely")[Next chapter your class builds a survey machine. Practise the manners now: ask *exactly* the question as written (no hints, no leading), thank every answer, and record the answer you *heard* — not the one you *hoped for*. A survey is only as honest as its collector.]

// ---------------- 3.4 ----------------
#sec(4, "When a chart lies")
Charts look like evidence — but a chart is a *drawing made by a person*, and a person can make choices that mislead you: an axis that starts high instead of zero, percentages that add up to more than 100, or numbers quietly left out. The colour and the confidence stay; the truth goes missing. In the next mission, one of the three charts is honest and two are tricksters. Read every number before you believe any picture.

#block(width: 100%, box(width: 100%, fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 10pt, y: 8pt), {
  text(size: 9.2pt, weight: 800, fill: teal, tracking: 0.1em)[THE HONEST-CHART PROMISE — WHAT A FAIR DRAWER ALWAYS DOES]
  v(3pt)
  dtable(("An honest chart…", "Tick when you check it"),
    ([starts its number axis at zero — or says clearly where it starts], [ ]),
    ([makes percentages add up to exactly 100], [ ]),
    ([says where the data came from (the sample) and when it was collected], [ ]),
    ([matches the question: bars to compare, a line for time, a pie for one whole], [ ]),
    widths: (1fr, 30mm),
  )
  v(3pt)
  text(size: 9.5pt, fill: ink-soft, style: "italic")[Cut this promise out (or copy it) and keep it in your notebook. Any chart that breaks a promise is not lying to your eyes — it is lying to your *reason*. Detectives read numbers first and colours second.]
}))

#task("T7-11", "Chart Detective", mode: "alone", mins: "15")[
  Three posters went up on the school noticeboard. One is honest. Two are playing tricks.
  #v(4pt)
  #grid(columns: (1fr, 1fr, 1fr), column-gutter: 8pt,
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 7pt, y: 7pt), {
      text(size: 8.8pt, weight: 800, fill: teal, tracking: 0.08em)[CHART A · FAVOURITE FRUIT, 7C]
      v(4pt)
      barchart-example(("Mango", "Banana", "Guava", "Apple"), (9, 6, 4, 7), ymax: 10, pw: 42mm, ph: 36mm, labsize: 7.3pt)
    }),
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 7pt, y: 7pt), {
      text(size: 8.8pt, weight: 800, fill: teal, tracking: 0.08em)[CHART B · ATTENDANCE %, 7A–7D]
      v(4pt)
      barchart-example(("7A", "7B", "7C", "7D"), (94, 97, 89, 99), ymax: 100, ymin: 88, ystep: 2, pw: 42mm, ph: 36mm, ylabel: "%", labsize: 8.2pt)
    }),
    box(fill: white, stroke: 0.9pt + ink-soft, radius: 5pt, inset: (x: 7pt, y: 7pt), {
      text(size: 8.8pt, weight: 800, fill: teal, tracking: 0.08em)[CHART C · WHERE SCHOOL MONEY GOES]
      v(4pt)
      align(center, piechart-example((45, 30, 20, 15), ("Rooms", "Library", "Sports", "Computers"), (teal, amber, teal-mid, line-soft), pw: 36mm))
      v(4pt)
      pie-legend((45, 30, 20, 15), ("Rooms", "Library", "Sports", "Computers"), (teal, amber, teal-mid, line-soft))
    }),
  )
  #v(6pt)
  *The honest chart is:* #box(width: 16mm, baseline: 30%, line(length: 100%, stroke: 0.9pt + ink-soft)) — because… #ruled-lines(1, lead: 8.4mm)
  *Chart B's trick:* #ruled-lines(1, lead: 8.4mm)
  *Chart C's trick (check the numbers like a detective):* #ruled-lines(1, lead: 8.4mm)
  *Redraw plan — one change that would make each trickster honest:* #ruled-lines(2, lead: 8.4mm)
]

#myth("If the chart is colourful, it is true.")[
  Colour is a costume, not evidence. A chart can be beautiful and still be built on a chopped axis, a one-sided sample or numbers that never add up — you caught two doing exactly that in T7-11. The detective's move is to read the *numbers first* and the picture second: where does the axis start, what is the sample, and what is missing?]

#homelink[
  #task("AT HOME", "Chart Hunt", mode: "home", mins: "15")[
    Find one chart this week — in a newspaper, a textbook, a shop poster or a government notice. Bring it (or copy it) and interrogate it: *What does it claim?* #ruled-lines(1, lead: 8.1mm) *Where does the axis start — and what is the sample?* #ruled-lines(1, lead: 8.1mm) *One thing that is missing:* #ruled-lines(1, lead: 8.1mm)
  ]
]

#selfcheck(
  [I can name one AI helper in each of the five sectors, with a benefit and a limit for two of them],
  [I can choose the right chart — bar, line or pie — for a question, and say why],
  [I can spot a truncated axis or a broken pie, and explain the trick it plays],
  [I can name the sample behind a chart and say who is missing from it],
)
#thinkink([A chart or “report” I believed without checking was… Now, before I believe a chart, I will first look at …], lines: 2)

#note("Chapter 3 clues — pocket these")[
  #grid(columns: (auto, 1fr), column-gutter: 6pt, row-gutter: 3.2pt, align: (left, left),
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Every AI helper is *data in, prediction out — then a human decides*. Its benefit and limit come as a pair.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[*Bars compare groups · lines follow time · pies split one whole.* Pick the chart that matches the question.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Read a chart's *numbers first*, colours second — check where the axis starts and what adds up.],
    box(width: 4.5pt, height: 4.5pt, fill: teal, baseline: 28%), text(size: 10.1pt)[Every chart has a *sample* — and someone is always missing from it.],
  )
  #v(2.5pt)
  #text(size: 10.1pt)[*The clue I would tell my family tonight:* #ruled-lines(1, lead: 7.7mm)]
]

#chapter-checkpoint(3,
  [Name one AI helper from this chapter, its benefit — and one limit nobody should forget.],
  [A pie chart shows three school clubs at 60%, 30% and 40%. What is wrong — and what might the honest numbers be?],
  [Your class surveys only the cricket team about favourite sports. What is the problem with that *sample*?],
)
#case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue about charts and helpers")
