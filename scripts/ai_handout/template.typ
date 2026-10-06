// ============================================================
//  PRATIMAI · AI Handouts — Class 6 · "AI Around Me"
//  Template: "Scholar Teal Workbook"  ·  Typst 0.15
//  Warm rounded sans (Baloo 2 display / Nunito text)
// ============================================================

// ---------------- palette ----------------
#let teal-deep  = rgb("#0A3A47")
#let teal       = rgb("#0F4C5C")
#let teal-mid   = rgb("#2E7286")
#let teal-soft  = rgb("#D9E8EB")
#let teal-faint = rgb("#EFF6F7")
#let amber      = rgb("#E36414")
#let amber-deep = rgb("#B94F0B")
#let amber-soft = rgb("#FBE8DB")
#let cream      = rgb("#F7F1E3")
#let paper      = rgb("#FDFBF7")
#let ink        = rgb("#22333B")
#let ink-soft   = rgb("#5F6E75")
#let line-soft  = rgb("#C9D8DC")
#let white      = rgb("#FFFFFF")
#let green      = rgb("#3A7D44")
#let red        = rgb("#B3402E")

// ---------------- fonts ----------------
#let f-display = ("Baloo 2", "Nunito", "DejaVu Sans")
#let f-text    = ("Nunito", "Carlito", "DejaVu Sans")

// ---------------- running state ----------------
#let chap = state("pratimai-chapter", "Welcome")

// ---------------- base document setup ----------------
#let page-header = context {
  set text(size: 7.6pt, fill: ink-soft, font: f-text, weight: 600)
  grid(columns: (1fr, auto), align: (left, right),
    text(tracking: 0.14em)[AI AROUND ME · CLASS 6],
    text(tracking: 0.1em, fill: teal, weight: 700)[#upper(chap.get())],
  )
  v(-3pt)
  line(length: 100%, stroke: 0.5pt + line-soft)
}
#let page-footer = context {
  set text(size: 7.4pt, fill: ink-soft, font: f-text)
  grid(columns: (1fr, auto), align: (left, bottom),
    text(weight: 600)[PRATIMAI · AI understanding for every classroom],
    text(font: f-display, fill: teal-deep, size: 9.6pt, str(counter(page).get().first())),
  )
}
#let base-margins = (top: 16mm, bottom: 18mm, left: 14mm, right: 14mm)

#let init-doc = {
  set document(
    title: "AI Around Me · Class 6 — PRATIMAI AI Handouts",
    author: "PRATIMAI Curriculum Team",
    description: "Class 6 AI-understanding handout · Level: NOTICE",
    keywords: ("AI literacy", "Class 6", "unplugged", "PRATIMAI"),
  )
  set page(
    paper: "a4",
    margin: base-margins,
    fill: paper,
    header: page-header,
    footer: page-footer,
  )
  set text(font: f-text, size: 10.4pt, fill: ink, lang: "en", region: "GB")
  set par(justify: true, leading: 0.6em, spacing: 0.85em)
}

// ============================================================
//  SMALL PARTS
// ============================================================

// work-mode label — typographic caps, no pill
#let chip(txt, fill: teal-soft, ink: teal, stroke: none) = text(
  font: f-display, fill: ink, weight: 800, size: 8.6pt, tracking: 0.1em, upper(txt),
)

// strand letter badge (U D L W R)
#let strand-badge(letter, active: false) = box(
  fill: if active { teal } else { white },
  stroke: 0.9pt + teal-mid, radius: 0pt, inset: (x: 4.5pt, y: 1.8pt),
  text(fill: if active { white } else { teal-mid }, weight: 800, size: 8.4pt, letter),
)

// drawn checkbox (empty square)
#let cbox = box(baseline: 32%, rect(width: 9.5pt, height: 9.5pt, radius: 0pt, stroke: 1pt + teal-mid, fill: white))

// confidence circles: shade one
#let conf(n: 3) = h(4pt) + box(baseline: 30%, stack(dir: ltr, spacing: 3.5pt,
  ..range(n).map(i => circle(radius: 4pt, stroke: 0.9pt + teal-mid, fill: white))))

// ruled writing lines
#let ruled-lines(n, lead: 7.6mm) = {
  for i in range(n) {
    block(width: 100%, height: lead, place(bottom, line(length: 100%, stroke: 0.55pt + line-soft)))
  }
}

// blank write-in box
#let writebox(h, label: none) = block(width: 100%, height: h, radius: 0pt, fill: teal-faint, stroke: 0.6pt + line-soft, {
  if label != none { place(top + left, dx: 6pt, dy: 5pt, text(size: 7.8pt, fill: ink-soft, weight: 700, tracking: 0.06em, upper(label))) }
})

// dashed drawing frame
#let drawbox(h, label: none) = block(width: 100%, height: h, radius: 0pt, fill: white, stroke: (paint: teal-mid, thickness: 0.8pt, dash: "dashed"), {
  if label != none { place(top + left, dx: 6pt, dy: 5pt, text(size: 7.8pt, fill: ink-soft, weight: 700, tracking: 0.06em, upper(label))) }
})

// star character
#let star(size, fill: amber) = text(font: "DejaVu Sans", fill: fill, size: size, "★")

// ============================================================
//  PAGE-LEVEL PARTS
// ============================================================

// section heading inside a chapter
#let sec(n, title) = {
  v(7pt)
  grid(columns: (auto, auto, 1fr), column-gutter: 6.5pt, align: (left, horizon, horizon),
    text(font: f-display, size: 13.6pt, weight: 800, fill: amber-deep, str(n)),
    text(font: f-display, size: 13.6pt, weight: 800, fill: teal, title),
    line(length: 100%, stroke: 0.5pt + line-soft),
  )
  v(1pt)
}

// task activity box
#let task(code, title, mode: "pair", mins: "10", win: false, body) = {
  v(4pt)
  block(width: 100%, breakable: false, box(width: 100%, radius: 0pt,
    stroke: (top: 2.2pt + teal, left: 0.65pt + line-soft, right: 0.65pt + line-soft, bottom: 0.65pt + line-soft),
    fill: white, inset: 0pt, {
    // header row: code · title · meta, no chips
    box(width: 100%, inset: (x: 10pt, y: 5.5pt), {
      grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
        text(font: f-display, weight: 800, size: 11pt, fill: amber-deep, code),
        text(font: f-display, weight: 800, size: 12.6pt, fill: teal, title),
        {
          if win { box(width: 4.5pt, height: 4.5pt, fill: amber, baseline: 28%); h(4pt); text(font: f-display, fill: amber-deep, weight: 800, size: 7.4pt, tracking: 0.12em, "QUICK WIN"); h(7pt) }
          text(font: f-display, fill: ink-soft, weight: 800, size: 7.4pt, tracking: 0.12em, upper(mode) + " · " + mins + " MIN")
        },
      )
    })
    box(width: 100%, inset: (x: 10pt, y: 7pt, bottom: 9pt), stroke: (top: 0.5pt + line-soft), body)
  }))
  v(2pt)
}

// Word Power vocabulary card
#let wordpower(n, term, def) = {
  v(3pt)
  block(width: 100%, breakable: false, box(width: 100%, fill: cream,
    stroke: (left: 2.5pt + amber, top: 0.6pt + line-soft, right: 0.6pt + line-soft, bottom: 0.6pt + line-soft),
    radius: 0pt,
    inset: (left: 11pt, right: 11pt, y: 7.5pt), {
      text(font: f-display, size: 8.4pt, fill: amber-deep, weight: 800, tracking: 0.12em)[WORD POWER · #str(n)]
      v(1pt)
      text(font: f-display, size: 13pt, weight: 800, fill: teal, term)
      v(0.5pt)
      text(size: 10pt, def)
      v(1pt)
      text(size: 7.6pt, fill: ink-soft, weight: 700, style: "italic")[Say it three times today — it sticks!]
    }))
  v(2pt)
}

// Myth buster box
#let myth(m, truth) = {
  v(4pt)
  block(width: 100%, breakable: false, box(width: 100%, radius: 0pt, fill: white, stroke: 0.7pt + line-soft, inset: (x: 10pt, y: 8pt), {
    grid(columns: (auto, auto, 1fr), column-gutter: 5pt, align: (left, horizon, horizon),
      box(width: 5pt, height: 5pt, fill: teal, baseline: 28%),
      text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.12em, "MYTH BUSTER"),
      line(length: 100%, stroke: 0.5pt + line-soft),
    )
    v(6.5pt)
    grid(columns: (auto, 1fr), column-gutter: 8pt, align: (left, horizon),
      text(font: f-display, size: 7.6pt, fill: red, weight: 800, tracking: 0.12em, "MYTH"),
      text(style: "italic", weight: 600, [“#m”]),
    )
    v(3.5pt)
    grid(columns: (auto, 1fr), column-gutter: 8pt, align: (left, horizon),
      text(font: f-display, size: 7.6pt, fill: green, weight: 800, tracking: 0.12em, "TRUTH"),
      text(truth),
    )
  }))
  v(2pt)
}

// self-check box
#let selfcheck(..items) = {
  v(4pt)
  block(width: 100%, breakable: false, box(width: 100%, radius: 0pt, fill: white,
    stroke: (left: 2.5pt + teal, top: 0.6pt + line-soft, right: 0.6pt + line-soft, bottom: 0.6pt + line-soft),
    inset: (left: 11pt, right: 11pt, y: 8pt), {
    grid(columns: (auto, 1fr), align: (left, right),
      text(font: f-display, size: 11.5pt, weight: 800, fill: teal, "Self-check"),
      text(size: 7.4pt, fill: ink-soft, weight: 700)[shade one: first circle = not yet · middle = almost · last = got it],
    )
    v(4pt)
    for it in items.pos() {
      grid(columns: (auto, 1fr, auto), column-gutter: 6pt, align: (top, left, horizon),
        cbox, text(size: 9.8pt, it), conf(),
      )
      v(3pt)
    }
  }))
  v(2pt)
}

// reflection box
#let thinkink(prompt, lines: 2) = {
  v(4pt)
  block(width: 100%, breakable: false, box(width: 100%, fill: white, radius: 0pt,
    stroke: (left: 2.5pt + amber, top: 0.6pt + line-soft, right: 0.6pt + line-soft, bottom: 0.6pt + line-soft),
    inset: (left: 11pt, right: 11pt, y: 8pt), {
      grid(columns: (auto, auto, 1fr), column-gutter: 5pt, align: (left, horizon, horizon),
        box(width: 5pt, height: 5pt, fill: amber, baseline: 28%),
        text(font: f-display, size: 8.4pt, weight: 800, fill: amber-deep, tracking: 0.12em, "THINK & INK"),
        line(length: 100%, stroke: 0.5pt + line-soft),
      )
      v(3.5pt)
      text(size: 9.9pt, style: "italic", prompt)
      v(1pt)
      ruled-lines(lines, lead: 7.4mm)
    }))
  v(2pt)
}

// home-link task box (dashed border)
#let homelink(body) = {
  v(4pt)
  block(width: 100%, breakable: false, box(width: 100%, fill: white, radius: 0pt,
    stroke: (paint: teal-mid, thickness: 0.9pt, dash: "dashed"), inset: (x: 10pt, y: 8pt), {
      grid(columns: (auto, 1fr), align: (left, horizon), column-gutter: 7pt,
        text(font: f-display, size: 8.4pt, fill: teal-mid, weight: 800, tracking: 0.12em, "HOME LINK"),
        text(size: 8pt, fill: ink-soft, weight: 600, style: "italic")[take this page home — no screen needed],
      )
      v(4pt)
      body
    }))
  v(2pt)
}

// detective note (info box)
#let note(title, body) = {
  v(3pt)
  block(width: 100%, breakable: false, box(width: 100%, fill: teal-faint, radius: 0pt,
    stroke: (left: 2.5pt + teal, top: 0.6pt + line-soft, right: 0.6pt + line-soft, bottom: 0.6pt + line-soft),
    inset: (left: 11pt, right: 11pt, y: 7.5pt), {
      text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.12em, upper(title))
      v(2.5pt)
      text(size: 9.9pt, body)
    }))
  v(2pt)
}

// chapter opener band
#let chapter-opener(num, title, question, outcomes: (), strands: (), link: none) = {
  chap.update(title)
  pagebreak()
  block(width: 100%, box(width: 100%, radius: 0pt, fill: teal, clip: true, inset: 0pt, {
    box(width: 100%, inset: (x: 13pt, y: 11pt), {
      grid(columns: (auto, 1fr), column-gutter: 13pt, align: (center, horizon),
        box(fill: amber, radius: 0pt, width: 17.5mm, height: 17.5mm,
          align(center + horizon, text(font: f-display, fill: white, size: 27pt, weight: 800, str(num)))),
        {
          text(font: f-display, fill: white, size: 20.5pt, weight: 800, title)
          v(2.5pt)
          text(size: 10.3pt, fill: rgb("#CFE3E8"), style: "italic")[Guiding question: #question]
        },
      )
      v(7pt)
      line(length: 100%, stroke: 0.6pt + white.transparentize(75%))
      v(5.5pt)
      grid(columns: (auto, 1fr), align: (left, right), column-gutter: 5pt,
        { text(size: 7.4pt, fill: rgb("#9FC3CC"), weight: 800, tracking: 0.1em)[I WILL LEARN TO]; h(4pt); for o in outcomes { text(fill: white, weight: 800, size: 7.8pt, o); if o != outcomes.last() { h(3.5pt); text(fill: rgb("#9FC3CC"), weight: 800, size: 7.8pt, "·"); h(3.5pt) } } },
        { text(size: 7.4pt, fill: rgb("#9FC3CC"), weight: 800, tracking: 0.1em)[STRANDS]; h(4pt); for s in strands { strand-badge(s, active: true); h(2.5pt) } },
      )
    })
  }))
  v(6pt)
}

// styled data table: headers array of strings, rows passed as variadic arrays
#let dtable(headers, widths: (), header-size: 8.8pt, ..rows) = {
  let cells = (
    table.header(..headers.map(h => text(fill: teal-deep, weight: 800, size: header-size, tracking: 0.04em, h))),
    table.hline(y: 1, stroke: 1.1pt + teal),
    ..rows.pos().map(r => r.map(c => if type(c) == content { c } else { text(size: 9.4pt, c) })).flatten(),
  )
  if type(widths) == array and widths.len() > 0 {
    table(columns: widths, inset: (y: 5pt, x: 6.5pt), stroke: 0.5pt + line-soft, fill: white, ..cells)
  } else if type(widths) == array {
    table(inset: (y: 5pt, x: 6.5pt), stroke: 0.5pt + line-soft, fill: white, ..cells)
  } else {
    table(columns: (widths,), inset: (y: 5pt, x: 6.5pt), stroke: 0.5pt + line-soft, fill: white, ..cells)
  }
}

// pixel grid (blank or with code numbers)
#let pixel-grid(size: 8, cell: 6.2mm, numbers: none, num-size: 6.3pt) = grid(
  columns: (cell,) * size, rows: (cell,) * size, inset: 0pt, align: center + horizon, stroke: 0.5pt + line-soft,
  ..{ let out = (); for r in range(size) { for c in range(size) {
    out.push(if numbers == none { [] } else { text(size: num-size, fill: ink-soft, weight: 700, str(numbers.at(r).at(c))) })
  } }; out }
)

// blank bar chart with axes, gridlines and column labels
#let barchart-blank(labels, ymax: 10, pw: 148mm, ph: 46mm) = box(width: 100%, {
  box(width: pw + 13mm, height: ph + 9mm, {
    for i in range(ymax + 1) {
      let y = ph - i * ph / ymax
      place(top + left, dx: 10mm, dy: y, line(length: pw, stroke: if i == 0 { 0.9pt + ink } else { 0.4pt + line-soft }))
      place(top + left, dx: 1.5mm, dy: y - 3.2pt, text(size: 6.6pt, fill: ink-soft, weight: 700, str(i)))
    }
    let n = labels.len()
    let cw = pw / n
    for (i, lab) in labels.enumerate() {
      place(top + left, dx: 10mm + i * cw, dy: ph + 1.8mm, box(width: cw, align(center, text(size: 8pt, weight: 800, fill: ink, lab))))
    }
    place(top + left, dx: -1.5mm, dy: 5mm, rotate(-90deg, text(size: 6.8pt, fill: ink-soft, weight: 800, tracking: 0.1em, "NUMBER OF VOTES")))
  })
})

// example bar chart with filled bars (for chart-reading drills)
#let barchart-example(labels, values, ymax: 10, pw: 120mm, ph: 44mm, barfill: amber) = box(width: 100%, {
  box(width: pw + 13mm, height: ph + 9mm, {
    for i in range(ymax + 1) {
      let y = ph - i * ph / ymax
      place(top + left, dx: 10mm, dy: y, line(length: pw, stroke: if i == 0 { 0.9pt + ink } else { 0.4pt + line-soft }))
      place(top + left, dx: 1.5mm, dy: y - 3.2pt, text(size: 6.6pt, fill: ink-soft, weight: 700, str(i)))
    }
    let n = labels.len()
    let cw = pw / n
    let bw = cw * 0.52
    for (i, lab) in labels.enumerate() {
      let v = values.at(i)
      if v > 0 {
        let bh = v * ph / ymax
        place(top + left, dx: 10mm + i * cw + (cw - bw) / 2, dy: ph - bh, rect(width: bw, height: bh, fill: barfill, radius: 0pt))
      }
      place(top + left, dx: 10mm + i * cw, dy: ph + 1.8mm, box(width: cw, align(center, text(size: 8pt, weight: 800, fill: ink, lab))))
    }
    place(top + left, dx: -1.5mm, dy: 5mm, rotate(-90deg, text(size: 6.8pt, fill: ink-soft, weight: 800, tracking: 0.1em, "NUMBER OF VOTES")))
  })
})

// "I can" checklist (journey map / progress)
#let ican(items) = {
  let arr = if type(items) == arguments { items.pos() } else { items }
  for it in arr {
    grid(columns: (auto, 1fr), column-gutter: 6pt, align: (top, left), cbox, text(size: 9.7pt, it))
    v(3.2pt)
  }
}
