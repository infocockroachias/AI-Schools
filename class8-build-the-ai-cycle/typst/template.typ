// ============================================================
//  PRATIMAI · AI Handouts — Class 7 · "How Machines Learn"
//  Template: MACHIATTO EDITION (MoKa Reads publication spec)
//  Built on @preview/machiatto:0.2.0 · Typst 0.15
//  Warm rounded sans (Baloo 2 display / Nunito text) · +10% size
// ============================================================

#import "@preview/machiatto:0.2.0": minitoc, acknowledgement, def

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

// ---------------- page geometry ----------------
#let moka-margins = (top: 20mm, bottom: 22mm, left: 17mm, right: 17mm)

// ============================================================
//  FRONT-MATTER PARTS
// ============================================================

// small pixel-heart motif (title page) — a picture really is numbers!
#let pixel-heart(cell, tone: amber) = {
  let heart = (
    (0,1,1,0,0,1,1,0),
    (1,1,1,1,1,1,1,1),
    (1,1,1,1,1,1,1,1),
    (1,1,1,1,1,1,1,1),
    (0,1,1,1,1,1,1,0),
    (0,0,1,1,1,1,0,0),
    (0,0,0,1,1,0,0,0),
    (0,0,0,0,0,0,0,0),
  )
  let cells = {
    let out = ()
    for r in range(8) { for c in range(8) {
      out.push(if heart.at(r).at(c) == 1 { rect(width: cell, height: cell, fill: tone, radius: 0pt, stroke: none) } else { [] })
    } }
    out
  }
  grid(columns: (cell,) * 8, rows: (cell,) * 8, inset: 0pt, stroke: none, ..cells)
}

// front-matter section heading (not an outlined heading — stays out of TOC)
#let front-heading(title, kicker: none) = {
  if kicker != none {
    text(font: f-display, size: 9.2pt, weight: 800, tracking: 0.16em, fill: amber-deep, upper(kicker))
    v(2pt)
  }
  text(font: f-display, size: 19pt, weight: 800, fill: teal, title)
  v(3pt)
  block(width: 100%, above: 2pt, below: 7pt, line(length: 100%, stroke: 0.6pt + line-soft))
}

// heading numbering: "1." for chapters, "1.1" for sections (no trailing dots)
#let moka-nums(..ns) = {
  let a = ns.pos()
  if a.len() <= 1 { numbering("1.", ..a) } else { a.map(s => str(s)).join(".") }
}

// ============================================================
//  DOCUMENT FLOW — machiatto / MoKa Reads specification:
//  title page → license → acknowledgements → preface → toc
//  → chapters (summary + minitoc) → body, mirrored footers
// ============================================================
#let moka-footer = context {
  let i = counter(page).at(here()).first()
  let is-odd = calc.odd(i)
  let aln = if is-odd { right } else { left }
  set text(size: 8.1pt, fill: ink-soft, font: f-text, weight: 600)
  let folio = text(font: f-display, fill: teal-deep, size: 10.6pt, weight: 800, str(i))
  let target = heading.where(level: 1)
  if query(target).any(it => it.location().page() == i) {
    return align(aln, folio)
  }
  let before = query(target.before(here()))
  if before.len() > 0 {
    let current = before.last()
    let chapter = text(font: f-display, weight: 800, size: 8.1pt, tracking: 0.12em, upper(current.body))
    let gap = 1.75em
    if is-odd {
      align(right)[#chapter #h(gap) #folio]
    } else {
      align(left)[#folio #h(gap) #chapter]
    }
  } else {
    align(aln, folio)
  }
}

#let moka-doc(cover-series: "", cover-title: "", cover-subtitle: "", cover-meta: (), author: "", license: none, ack: none, preface: none, toc: true, toc-extras: none, cover-questions: "", ack-meta: "", body) = {
  set document(
    title: cover-title + " — PRATIMAI AI Handouts",
    author: author,
    keywords: ("AI literacy", "unplugged", "PRATIMAI", "machiatto"),
  )
  set page(paper: "a4", margin: moka-margins, fill: paper, numbering: "1", number-align: center)
  set text(font: f-text, size: 11.5pt, fill: ink, lang: "en", region: "GB")
  set par(leading: 0.68em, spacing: 1.1em)

  // ---------- title page (machiatto: bordered block, centered) ----------
  align(center + horizon, block(width: 86%, inset: (x: 52pt, y: 46pt), radius: 5pt, stroke: 1.1pt + ink, fill: white, {
    set text(font: f-display)
    align(center, pixel-heart(3.1mm))
    v(14pt)
    align(center, text(size: 10.4pt, weight: 800, tracking: 0.24em, fill: amber-deep, upper(cover-series)))
    v(10pt)
    align(center, text(size: 35pt, weight: 800, fill: teal, cover-title))
    v(7pt)
    align(center, text(font: f-text, size: 12.6pt, style: "italic", fill: ink-soft, cover-subtitle))
    v(12pt)
    align(center, block(width: 58%, above: 4pt, below: 4pt, line(length: 100%, stroke: 0.6pt + line-soft)))
    v(8pt)
    align(center, text(size: 11.5pt, weight: 800, tracking: 0.14em, fill: ink, cover-meta.at(0)))
    v(4pt)
    align(center, text(size: 10.4pt, weight: 700, tracking: 0.1em, fill: ink-soft, cover-meta.at(1)))
    v(14pt)
    align(center, text(size: 12.6pt, weight: 800, fill: ink, author))
    v(12pt)
    line(length: 46%, stroke: 0.6pt + line-soft)
    v(7pt)
    align(center, text(size: 10.2pt, style: "italic", fill: ink-soft, cover-questions))
  }))
  v(20pt)
  align(center, {
    text(size: 8.6pt, weight: 800, tracking: 0.2em, fill: ink-soft)[THIS CASE FILE BELONGS TO]
    v(7pt)
    box(width: 62%, stroke: (bottom: 0.7pt + ink-soft), inset: (bottom: 3pt))[#h(0pt)]
    v(2.5pt)
    text(size: 8.1pt, fill: ink-soft)[name · class · roll number]
  })
  v(16pt)
  align(center, box(radius: 5pt, stroke: 1.1pt + ink, fill: white, inset: (x: 15pt, y: 9pt), {
    set text(size: 9.6pt)
    grid(columns: (auto, 32mm, 8mm, auto, 32mm), column-gutter: 5pt, align: (left, bottom, center, left, bottom),
      text(font: f-display, size: 8.4pt, weight: 800, tracking: 0.14em, fill: ink-soft, "CASE OPENED ON"),
      box(stroke: (bottom: 0.7pt + ink-soft))[#h(0pt)],
      text(fill: amber-deep, weight: 800)[★],
      text(font: f-display, size: 8.4pt, weight: 800, tracking: 0.14em, fill: ink-soft, "CASE CLOSED ON"),
      box(stroke: (bottom: 0.7pt + ink-soft))[#h(0pt)],
    )
  }))
  pagebreak()

  // ---------- license (machiatto spec page) ----------
  if license != none { license; pagebreak() }

  // ---------- acknowledgements (machiatto cream box) ----------
  {
    align(center, {
      v(10pt)
      pixel-heart(2.4mm)
      v(8pt)
      text(font: f-display, size: 9pt, weight: 800, tracking: 0.24em, fill: amber-deep, upper(cover-series))
      v(14pt)
    })
    set text(font: f-display)
    acknowledgement(ack)
    if ack-meta != "" {
      v(16pt)
      align(center, box(radius: 5pt, stroke: 0.9pt + ink-soft, fill: white, inset: (x: 13pt, y: 8pt), {
        text(font: f-display, size: 8.6pt, weight: 800, tracking: 0.16em, fill: teal-deep, ack-meta)
      }))
    }
  }
  pagebreak()

  // ---------- preface ----------
  if preface != none { preface; pagebreak() }

  // ---------- table of contents ----------
  if toc {
    outline(title: text(font: f-display, size: 20pt, weight: 800, fill: teal)[Contents], depth: 2)
    if toc-extras != none { toc-extras }
    pagebreak()
  }

  // ---------- main body ----------
  set par(leading: 0.7em, spacing: 1.3em, justify: false, linebreaks: "simple")
  set page(footer: moka-footer)
  set heading(numbering: moka-nums)

  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(4pt)
    let nums = counter(heading).at(it.location())
    align(center, {
      if it.numbering != none {
        text(font: f-display, fill: amber-deep, size: 17.6pt, weight: 800, numbering("1.", ..nums))
        h(9pt)
      }
      text(font: f-display, fill: teal, size: 22.6pt, weight: 800, it.body)
    })
    v(12pt)
  }
  show heading.where(level: 2): it => {
    v(7pt)
    let nums = counter(heading).at(it.location())
    grid(columns: (auto, auto, 1fr), column-gutter: 7pt, align: (left, left, horizon),
      if it.numbering != none { text(font: f-display, size: 15pt, weight: 800, fill: amber-deep, numbering("1.1", ..nums)) } else { [] },
      text(font: f-display, size: 15pt, weight: 800, fill: teal, it.body),
      line(length: 100%, stroke: 0.5pt + line-soft),
    )
    v(1pt)
  }

  {
    set heading(numbering: moka-nums)
    body
  }
}

// ============================================================
//  SMALL PARTS
// ============================================================

// work-mode label — typographic caps, no pill
#let chip(txt, fill: teal-soft, ink: teal, stroke: none) = text(
  font: f-display, fill: ink, weight: 800, size: 9.5pt, tracking: 0.1em, upper(txt),
)

// strand letter badge (U D L W R)
#let strand-badge(letter, active: false) = box(
  fill: if active { teal } else { white },
  stroke: 0.9pt + teal-mid, radius: 3pt, inset: (x: 5pt, y: 2pt),
  text(fill: if active { white } else { teal-mid }, weight: 800, size: 9.2pt, letter),
)

// drawn checkbox (empty square)
#let cbox = box(baseline: 32%, rect(width: 10.5pt, height: 10.5pt, radius: 2pt, stroke: 1pt + teal-mid, fill: white))

// confidence circles: shade one
#let conf(n: 3) = h(4pt) + box(baseline: 30%, stack(dir: ltr, spacing: 3.9pt,
  ..range(n).map(i => circle(radius: 4.4pt, stroke: 0.9pt + teal-mid, fill: white))))

// ruled writing lines
#let ruled-lines(n, lead: 8.4mm) = {
  for i in range(n) {
    block(width: 100%, height: lead, place(bottom, line(length: 100%, stroke: 0.55pt + line-soft)))
  }
}

// blank write-in box
#let writebox(h, label: none) = block(width: 100%, height: h, radius: 5pt, fill: teal-faint, stroke: 0.6pt + line-soft, {
  if label != none { place(top + left, dx: 7pt, dy: 5.5pt, text(size: 8.6pt, fill: ink-soft, weight: 700, tracking: 0.06em, upper(label))) }
})

// dashed drawing frame
#let drawbox(h, label: none) = block(width: 100%, height: h, radius: 5pt, fill: white, stroke: (paint: teal-mid, thickness: 0.9pt, dash: "dashed"), {
  if label != none { place(top + left, dx: 7pt, dy: 5.5pt, text(size: 8.6pt, fill: ink-soft, weight: 700, tracking: 0.06em, upper(label))) }
})

// star character
#let star(size, fill: amber) = text(font: "DejaVu Sans", fill: fill, size: size, "★")

#let strand-badges(strands) = {
  for s in strands { strand-badge(s, active: true); h(2.5pt) }
}

// ============================================================
//  CHAPTER OPENING — MoKa spec: heading · summary · minitoc,
//  first section follows on the next page
// ============================================================
#let chapter-opener(num, title, question, summary: none, outcomes: (), strands: (), link: none, missions: none, extras: none) = {
  heading(level: 1)[#title]
  // guiding question — machiatto info-box anatomy
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1pt + ink, fill: teal-faint, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.14em, "GUIDING QUESTION")
    v(2.5pt)
    text(size: 11.9pt, style: "italic", question)
  })
  v(2pt)
  // chapter summary (MoKa spec: a summary before the mini contents)
  if summary != none { summary }
  v(4pt)
  // mission meta line
  block(width: 100%, breakable: false, radius: 5pt, stroke: 0.7pt + ink-soft, fill: white, inset: (x: 11pt, y: 7pt), {
    set text(size: 9.2pt)
    grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 3.5pt, align: (left, left),
      text(font: f-display, size: 8.1pt, fill: ink-soft, weight: 800, tracking: 0.13em)[MISSIONS],
      if missions == none { [] } else { text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, missions) },
      text(font: f-display, size: 8.1pt, fill: ink-soft, weight: 800, tracking: 0.13em)[OUTCOMES],
      grid(columns: (auto, auto, 1fr), column-gutter: 8pt, align: (left, horizon, right),
        text(font: f-display, size: 9.2pt, fill: teal, weight: 800, outcomes.join("  ·  ")),
        text(font: f-display, size: 8.1pt, fill: ink-soft, weight: 800, tracking: 0.13em)[STRANDS],
        align(right, strand-badges(strands)),
      ),
    )
    if link != none {
      v(3.5pt)
      text(size: 9.4pt, fill: ink-soft, style: "italic", link)
    }
  })
  v(4pt)
  text(font: f-display, size: 11pt, weight: 800, fill: teal)[In this chapter]
  v(1pt)
  minitoc()
  if extras != none { v(9pt); extras }
  pagebreak(weak: true)
}

// section heading — a real level-2 heading (numbered automatically)
#let sec(n, title) = heading(level: 2)[#title]

// ============================================================
//  ACTIVITY COMPONENTS — machiatto box anatomy
//  (1pt ink stroke · radius 5pt · tinted fills)
// ============================================================

// task activity box
#let task(code, title, mode: "pair", mins: "10", win: false, body) = {
  v(4pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1pt + ink, fill: white, inset: 0pt, {
    box(width: 100%, inset: (x: 11pt, y: 6pt), {
      grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
        text(font: f-display, weight: 800, size: 12.1pt, fill: amber-deep, code),
        text(font: f-display, weight: 800, size: 13.9pt, fill: teal, title),
        {
          if win { box(width: 5pt, height: 5pt, fill: amber, baseline: 28%); h(4pt); text(font: f-display, fill: amber-deep, weight: 800, size: 8.1pt, tracking: 0.12em, "QUICK WIN"); h(7pt) }
          text(font: f-display, fill: ink-soft, weight: 800, size: 8.1pt, tracking: 0.12em, upper(mode) + " · " + mins + " MIN")
        },
      )
    })
    box(width: 100%, inset: (x: 11pt, y: 8pt, bottom: 10pt), stroke: (top: 0.5pt + line-soft), body)
  })
  v(2pt)
}

// Word Power vocabulary card — machiatto def() with PRATIMAI fills
#let wordpower(n, term, body) = {
  v(3pt)
  text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[WORD POWER · #str(n)]
  v(2pt)
  block(width: 100%, breakable: false, def(title: text(font: f-display, size: 14.3pt, weight: 800, fill: teal, term), fill: cream)[
    #text(size: 11pt, body)
    #v(2pt)
    #text(size: 8.4pt, fill: ink-soft, weight: 700, style: "italic")[Say it three times today — it sticks!]
  ])
  v(2pt)
}

// Myth buster box
#let myth(m, truth) = {
  v(4pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: white, stroke: 1pt + ink, inset: (x: 11pt, y: 9pt), {
    grid(columns: (auto, 1fr), column-gutter: 5pt, align: (left, horizon),
      box(width: 5.5pt, height: 5.5pt, fill: teal, baseline: 28%),
      text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em, "MYTH BUSTER"),
    )
    v(7pt)
    grid(columns: (auto, 1fr), column-gutter: 8pt, align: (left, horizon),
      text(font: f-display, size: 8.4pt, fill: red, weight: 800, tracking: 0.13em, "MYTH"),
      text(style: "italic", weight: 600, [“#m”]),
    )
    v(4pt)
    grid(columns: (auto, 1fr), column-gutter: 8pt, align: (left, horizon),
      text(font: f-display, size: 8.4pt, fill: green, weight: 800, tracking: 0.13em, "TRUTH"),
      text(truth),
    )
  })
  v(2pt)
}

// self-check box
#let selfcheck(..items) = {
  v(4pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 1pt + ink, inset: (x: 11pt, y: 9pt), {
    grid(columns: (auto, 1fr), align: (left, right),
      text(font: f-display, size: 12.7pt, weight: 800, fill: teal, "Self-check"),
      text(size: 8.1pt, fill: ink-soft, weight: 700)[shade one: first circle = not yet · middle = almost · last = got it],
    )
    v(4.5pt)
    for it in items.pos() {
      grid(columns: (auto, 1fr, auto), column-gutter: 6.5pt, align: (top, left, horizon),
        cbox, text(size: 10.8pt, it), conf(),
      )
      v(3.5pt)
    }
  })
  v(2pt)
}

// reflection box
#let thinkink(prompt, lines: 2) = {
  v(4pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: amber-soft, stroke: 1pt + ink, inset: (x: 11pt, y: 9pt), {
    grid(columns: (auto, 1fr), column-gutter: 5pt, align: (left, horizon),
      box(width: 5.5pt, height: 5.5pt, fill: amber, baseline: 28%),
      text(font: f-display, size: 9.2pt, weight: 800, fill: amber-deep, tracking: 0.13em, "THINK & INK"),
    )
    v(4pt)
    text(size: 10.9pt, style: "italic", prompt)
    v(1pt)
    ruled-lines(lines, lead: 8.2mm)
  })
  v(2pt)
}

// home-link task box (dashed border)
#let homelink(body) = {
  v(4pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: white,
    stroke: (paint: teal-mid, thickness: 1pt, dash: "dashed"), inset: (x: 11pt, y: 9pt), {
      grid(columns: (auto, 1fr), align: (left, horizon), column-gutter: 7pt,
        text(font: f-display, size: 9.2pt, fill: teal-mid, weight: 800, tracking: 0.13em, "HOME LINK"),
        text(size: 8.8pt, fill: ink-soft, weight: 600, style: "italic")[take this page home — no screen needed],
      )
      v(4.5pt)
      body
    })
  v(2pt)
}

// detective note (info box)
#let note(title, body) = {
  v(3pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, stroke: 1pt + ink, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em, upper(title))
    v(2.5pt)
    text(size: 10.9pt, body)
  })
  v(2pt)
}

// styled data table: headers array of strings, rows passed as variadic arrays
#let dtable(headers, widths: (), header-size: 9.7pt, ..rows) = {
  let cells = (
    table.header(..headers.map(h => text(fill: teal-deep, weight: 800, size: header-size, tracking: 0.04em, h))),
    table.hline(y: 1, stroke: 1.1pt + teal),
    ..rows.pos().map(r => r.map(c => if type(c) == content { c } else { text(size: 10.3pt, c) })).flatten(),
  )
  if type(widths) == array and widths.len() > 0 {
    table(columns: widths, inset: (y: 5.5pt, x: 7pt), stroke: 0.5pt + line-soft, fill: white, ..cells)
  } else if type(widths) == array {
    table(inset: (y: 5.5pt, x: 7pt), stroke: 0.5pt + line-soft, fill: white, ..cells)
  } else {
    table(columns: (widths,), inset: (y: 5.5pt, x: 7pt), stroke: 0.5pt + line-soft, fill: white, ..cells)
  }
}

// pixel grid (blank or with code numbers)
#let pixel-grid(size: 8, cell: 6.2mm, numbers: none, num-size: 6.9pt) = grid(
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
      place(top + left, dx: 1.5mm, dy: y - 3.5pt, text(size: 7.3pt, fill: ink-soft, weight: 700, str(i)))
    }
    let n = labels.len()
    let cw = pw / n
    for (i, lab) in labels.enumerate() {
      place(top + left, dx: 10mm + i * cw, dy: ph + 1.8mm, box(width: cw, align(center, text(size: 8.8pt, weight: 800, fill: ink, lab))))
    }
    place(top + left, dx: -1.5mm, dy: 5mm, rotate(-90deg, text(size: 7.5pt, fill: ink-soft, weight: 800, tracking: 0.1em, "NUMBER OF VOTES")))
  })
})

// example bar chart with filled bars (for chart-reading drills)
#let barchart-example(labels, values, ymax: 10, ymin: 0, ystep: 1, pw: 120mm, ph: 44mm, barfill: amber, ylabel: "NUMBER OF VOTES", labsize: 8.8pt) = box(width: 100%, {
  box(width: pw + 13mm, height: ph + 9mm, {
    for i in range(ymin, ymax + 1, step: ystep) {
      let y = ph - (i - ymin) * ph / (ymax - ymin)
      place(top + left, dx: 10mm, dy: y, line(length: pw, stroke: if i == ymin { 0.9pt + ink } else { 0.4pt + line-soft }))
      place(top + left, dx: 1.5mm, dy: y - 3.5pt, text(size: 7.3pt, fill: ink-soft, weight: 700, str(i)))
    }
    let n = labels.len()
    let cw = pw / n
    let bw = cw * 0.52
    for (i, lab) in labels.enumerate() {
      let v = values.at(i)
      if v > ymin {
        let bh = (v - ymin) * ph / (ymax - ymin)
        place(top + left, dx: 10mm + i * cw + (cw - bw) / 2, dy: ph - bh, rect(width: bw, height: bh, fill: barfill, radius: 0pt))
      }
      place(top + left, dx: 10mm + i * cw, dy: ph + 1.8mm, box(width: cw, align(center, text(size: labsize, weight: 800, fill: ink, lab))))
    }
    place(top + left, dx: -1.5mm, dy: 5mm, rotate(-90deg, text(size: 7.5pt, fill: ink-soft, weight: 800, tracking: 0.1em, ylabel)))
  })
})

// scatter plot with pre-printed dots (regression task: student draws the best line)
#let scatter-example(points, xmax: 10, xstep: 1, ymax: 180, ystep: 20, xlabel: "", ylabel: "", pw: 118mm, ph: 54mm, dot: teal-mid) = box(width: 100%, {
  box(width: pw + 13mm, height: ph + 11mm, {
    for i in range(0, ymax + 1, step: ystep) {
      let y = ph - i * ph / ymax
      place(top + left, dx: 11mm, dy: y, line(length: pw, stroke: if i == 0 { 0.9pt + ink } else { 0.4pt + line-soft }))
      place(top + left, dx: 1.5mm, dy: y - 3.5pt, text(size: 7.3pt, fill: ink-soft, weight: 700, str(i)))
    }
    for i in range(0, xmax + 1, step: xstep) {
      let x = 11mm + i * pw / xmax
      place(top + left, dx: x, dy: 0pt, line(angle: 90deg, length: ph, stroke: 0.4pt + line-soft))
      place(top + left, dx: x - 5mm, dy: ph + 1.6mm, box(width: 10mm, align(center, text(size: 7.6pt, fill: ink-soft, weight: 700, str(i)))))
    }
    for p in points {
      let dx = 11mm + p.at(0) * pw / xmax - 1.55mm
      let dy = ph - p.at(1) * ph / ymax - 1.55mm
      place(top + left, dx: dx, dy: dy, circle(radius: 1.55mm, fill: dot))
    }
    if xlabel != "" { place(top + left, dx: 11mm, dy: ph + 5.6mm, box(width: pw, align(center, text(size: 7.9pt, fill: ink-soft, weight: 800, tracking: 0.08em, xlabel)))) }
    if ylabel != "" { place(top + left, dx: -2mm, dy: 4mm, rotate(-90deg, text(size: 7.5pt, fill: ink-soft, weight: 800, tracking: 0.1em, ylabel))) }
  })
})

// line graph with pre-drawn polyline (for chart-reading drills)
#let linechart-example(labels, values, ymax: 10, ystep: 1, pw: 122mm, ph: 48mm, linefill: teal, ylabel: "") = box(width: 100%, {
  box(width: pw + 13mm, height: ph + 10mm, {
    for i in range(0, ymax + 1, step: ystep) {
      let y = ph - i * ph / ymax
      place(top + left, dx: 10mm, dy: y, line(length: pw, stroke: if i == 0 { 0.9pt + ink } else { 0.4pt + line-soft }))
      place(top + left, dx: 1.5mm, dy: y - 3.5pt, text(size: 7.3pt, fill: ink-soft, weight: 700, str(i)))
    }
    let n = labels.len()
    let cw = pw / (n - 1)
    let Y(v) = (ph - v * ph / ymax) / 1pt
    let pts = values.enumerate().map(((i, v)) => (i * cw / 1pt, Y(v)))
    // curve.line points are absolute (relative to the curve's placed origin)
    let segs = range(1, n).map(i => curve.line((pts.at(i).at(0) * 1pt, pts.at(i).at(1) * 1pt)))
    place(top + left, dx: 10mm, dy: 0pt, curve(stroke: 1.5pt + linefill, curve.move((pts.first().at(0) * 1pt, pts.first().at(1) * 1pt)), ..segs))
    for (i, v) in values.enumerate() {
      place(top + left, dx: 10mm + i * cw - 1.5mm, dy: Y(v) * 1pt - 1.5mm, circle(radius: 1.5mm, fill: linefill))
      place(top + left, dx: 10mm + i * cw - 8mm, dy: ph + 1.8mm, box(width: 16mm, align(center, text(size: 8.4pt, weight: 800, fill: ink, labels.at(i)))))
    }
    if ylabel != "" { place(top + left, dx: -1.5mm, dy: 13mm, rotate(-90deg, text(size: 7.5pt, fill: ink-soft, weight: 800, tracking: 0.1em, ylabel))) }
  })
})

// blank line-graph grid (students draw the polyline themselves)
#let linechart-blank(labels, ymax: 10, ystep: 1, pw: 122mm, ph: 48mm, ylabel: "") = box(width: 100%, {
  box(width: pw + 13mm, height: ph + 10mm, {
    for i in range(0, ymax + 1, step: ystep) {
      let y = ph - i * ph / ymax
      place(top + left, dx: 10mm, dy: y, line(length: pw, stroke: if i == 0 { 0.9pt + ink } else { 0.4pt + line-soft }))
      place(top + left, dx: 1.5mm, dy: y - 3.5pt, text(size: 7.3pt, fill: ink-soft, weight: 700, str(i)))
    }
    let n = labels.len()
    let cw = pw / (n - 1)
    for (i, lab) in labels.enumerate() {
      place(top + left, dx: 10mm + i * cw - 1mm, dy: 0pt, line(angle: 90deg, length: ph, stroke: 0.4pt + line-soft))
      place(top + left, dx: 10mm + i * cw - 8mm, dy: ph + 1.8mm, box(width: 16mm, align(center, text(size: 8.4pt, weight: 800, fill: ink, lab))))
    }
    if ylabel != "" { place(top + left, dx: -1.5mm, dy: 13mm, rotate(-90deg, text(size: 7.5pt, fill: ink-soft, weight: 800, tracking: 0.1em, ylabel))) }
  })
})

// pie chart built from thin polygon fans (accurate wedges, no external deps)
#let piechart-example(values, labels, colors, pw: 46mm) = box(width: 100%, {
  let total = values.sum()
  let r = 17.5mm
  let cx = r + 0.5mm
  let cy = r + 0.5mm
  let acc = 0
  box(width: pw, height: 2 * r + 1mm, {
    for (i, v) in values.enumerate() {
      let a0 = acc / total * 360deg - 90deg
      acc = acc + v
      let a1 = acc / total * 360deg - 90deg
      let steps = calc.max(2, calc.floor((a1 - a0) / 2.5deg))
      for s in range(steps) {
        let b0 = a0 + (a1 - a0) * s / steps
        let b1 = a0 + (a1 - a0) * (s + 1) / steps
        // tiny angular overlap hides hairline seams between fan triangles
        let p0 = (cx + r * calc.cos(b0), cy + r * calc.sin(b0))
        let p1 = (cx + r * calc.cos(b1 + 0.5deg), cy + r * calc.sin(b1 + 0.5deg))
        place(top + left, curve(fill: colors.at(i), stroke: none,
          curve.move((cx, cy)),
          curve.line((p0.at(0), p0.at(1))),
          curve.line((p1.at(0), p1.at(1))),
          curve.close(),
        ))
      }
    }
    // wedge separators + outer rim, drawn on top of the fan
    let acc2 = 0
    for (i, v) in values.enumerate() {
      let a = acc2 / total * 360deg - 90deg
      acc2 = acc2 + v
      place(top + left, dx: cx, dy: cy, line(angle: a, length: r, stroke: 0.8pt + paper))
    }
    place(top + left, circle(radius: r, fill: none, stroke: 0.8pt + paper))
  })
})

// blank fraction circle with equal wedges (students shade their own pie chart)
#let pie-blank(divisions: 10, pw: 46mm) = box(width: pw, {
  let r = 17.5mm
  let cx = r + 0.5mm
  let cy = r + 0.5mm
  box(width: 2 * r + 1mm, height: 2 * r + 1mm, {
    place(top + left, circle(radius: r, fill: white, stroke: 0.9pt + ink))
    for i in range(divisions) {
      let a = i * 360deg / divisions - 90deg
      place(top + left, dx: cx, dy: cy, line(angle: a, length: r, stroke: 0.55pt + line-soft))
    }
  })
})

// legend for pie charts: colour swatch + label + share (one grid row per entry)
#let pie-legend(values, labels, colors, total-note: none) = {
  for (i, val) in values.enumerate() {
    grid(columns: (auto, 1fr), column-gutter: 6pt, align: (left, left),
      box(width: 9.4pt, height: 9.4pt, fill: colors.at(i), stroke: 0.5pt + line-soft, baseline: 25%),
      text(size: 9.5pt)[#labels.at(i) — *#str(val)%*],
    )
    v(2.9pt)
  }
}

// "I can" checklist (journey map / progress)
#let ican(items) = {
  let arr = if type(items) == arguments { items.pos() } else { items }
  for it in arr {
    grid(columns: (auto, 1fr), column-gutter: 6.5pt, align: (top, left), cbox, text(size: 10.7pt, it))
    v(3.5pt)
  }
}

// "I can" checklist (journey map / progress)
#let ican(items) = {
  let arr = if type(items) == arguments { items.pos() } else { items }
  for it in arr {
    grid(columns: (auto, 1fr), column-gutter: 6.5pt, align: (top, left), cbox, text(size: 10.7pt, it))
    v(3.5pt)
  }
}

// ============================================================
//  PAGE-BALANCE KIT — components that give every page a full,
//  purposeful look (no half-empty pages): opener extras,
//  chapter checkpoints, journal strips, box legend.
// ============================================================

// opener extras: vocabulary chips + warm-up write-in + toolkit strip
#let opener-extras(words: (), warmup: none, need: ()) = {
  block(width: 100%, breakable: false, radius: 5pt, stroke: 0.9pt + ink-soft, fill: white, inset: (x: 11pt, y: 8pt), {
    text(font: f-display, size: 9.2pt, fill: teal-deep, weight: 800, tracking: 0.13em)[WORDS YOU'LL MEET HERE]
    v(5pt)
    for w in words {
      box(fill: teal-soft, radius: 4pt, inset: (x: 7.5pt, y: 3.5pt), text(font: f-display, size: 9.8pt, weight: 800, fill: teal-deep, w))
      h(4.5pt)
    }
  })
  v(6pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1pt + ink, fill: amber-soft, inset: (x: 11pt, y: 8pt), {
    grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      text(font: f-display, size: 9.2pt, fill: amber-deep, weight: 800, tracking: 0.13em)[WARM-UP · BEFORE YOU READ],
      [],
      text(font: f-display, size: 8.1pt, fill: ink-soft, weight: 800, tracking: 0.12em)[ALONE · 2 MIN],
    )
    v(3.5pt)
    text(size: 10.7pt, warmup)
    v(1pt)
    ruled-lines(2, lead: 8.2mm)
  })
  v(6pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint, inset: (x: 11pt, y: 7.5pt), {
    text(size: 9.7pt)[#text(font: f-display, size: 8.4pt, fill: teal-deep, weight: 800, tracking: 0.13em)[DETECTIVE'S TOOLKIT — YOU WILL NEED:] #h(4pt) #text(weight: 700, need.join("  ·  "))]
  })
}

// chapter checkpoint: three quick recall questions, write-in
#let chapter-checkpoint(num, ..qa) = {
  v(5pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 1pt + ink, fill: white, inset: (x: 11pt, y: 9pt), {
    grid(columns: (auto, 1fr, auto), column-gutter: 8pt, align: (left, horizon, right),
      text(font: f-display, size: 12.7pt, weight: 800, fill: teal, "Chapter " + str(num) + " Checkpoint"),
      text(size: 8.3pt, fill: ink-soft, weight: 700)[one line each — no peeking back!],
      text(font: f-display, size: 8.1pt, fill: amber-deep, weight: 800, tracking: 0.12em, [ALONE · 3 MIN]),
    )
    v(6.5pt)
    for (i, q) in qa.pos().enumerate() {
      text(size: 10.7pt)[#strong[#str(i + 1).] #q]
      ruled-lines(1, lead: 8.2mm)
      v(4.5pt)
    }
  })
  v(2pt)
}

// journal strip: dashed write-in band for the chapter's last page
#let case-journal(lines: 2, label: "MY CASE JOURNAL — today's sharpest clue") = {
  block(width: 100%, breakable: false, radius: 5pt, fill: teal-faint,
    stroke: (paint: teal-mid, thickness: 0.9pt, dash: "dashed"), inset: (x: 11pt, y: 8pt), {
      text(font: f-display, size: 9.2pt, fill: teal-mid, weight: 800, tracking: 0.13em, upper(label))
      v(1pt)
      ruled-lines(lines, lead: 8.2mm)
  })
  v(2pt)
}

// TOC-page legend: what each recurring box wants from the reader
#let legend-card(name, fill, stroke, body) = block(width: 100%, breakable: false, radius: 5pt, fill: fill, stroke: stroke, inset: (x: 9pt, y: 7pt), {
  text(font: f-display, size: 9pt, weight: 800, fill: teal-deep, tracking: 0.12em, name)
  v(2.5pt)
  text(size: 9.4pt, body)
})

#let box-legend = {
  v(11pt)
  text(font: f-display, size: 15pt, weight: 800, fill: teal)[The boxes in this book]
  v(1.5pt)
  text(size: 9.7pt, fill: ink-soft)[You will meet these boxes on every case. Each one wants something different from you — collect them all.]
  v(7pt)
  grid(columns: (1fr, 1fr), column-gutter: 6pt, row-gutter: 5.5pt,
    legend-card("MISSION", white, 1pt + ink, [A paper mission with a code like *T6-01*. The label tells you who you work with and how many minutes you get. Do it — then write. Writing *is* the mission.]),
    legend-card("WORD POWER", cream, 0.9pt + ink-soft, [A word worth keeping in your detective kit. Say it three times today — words are the tools of thinking.]),
    legend-card("SELF-CHECK", teal-faint, 1pt + ink, [Skills to grade yourself on. Shade a confidence circle honestly — honest circles make you learn faster.]),
    legend-card("THINK & INK", amber-soft, 1pt + ink, [A question with lines. There is no single right answer here — your *reasons* are the answer.]),
  )
  v(5pt)
  text(size: 9.3pt, fill: ink-soft)[Also on patrol: #strong[MYTH BUSTER] busts a wrong idea many people believe · #strong[DETECTIVE'S NOTE] hands you a professional's secret · #strong[HOME LINK] (dashed) is a mission to take home and teach a grown-up.]
}

// ============================================================
//  CLASS 8 EXTRAS
// ============================================================

// nearest-neighbour plot: class A dots (teal), class B dots (amber),
// hollow numbered query points, on a gridded x/y plot
#let knn-example(pts-a, pts-b, queries, xmax: 10, ymax: 10, xlabel: "", ylabel: "", pw: 92mm, ph: 62mm) = box(width: 100%, {
  box(width: pw + 14mm, height: ph + 11mm, {
    for i in range(0, ymax + 1, step: 1) {
      let y = ph - i * ph / ymax
      place(top + left, dx: 11mm, dy: y, line(length: pw, stroke: if i == 0 { 0.9pt + ink } else { 0.4pt + line-soft }))
      place(top + left, dx: 1.5mm, dy: y - 3.5pt, text(size: 7.3pt, fill: ink-soft, weight: 700, str(i)))
    }
    for i in range(0, xmax + 1, step: 1) {
      let x = 11mm + i * pw / xmax
      place(top + left, dx: x, dy: 0pt, line(angle: 90deg, length: ph, stroke: 0.4pt + line-soft))
      place(top + left, dx: x - 2.5mm, dy: ph + 1.6mm, box(width: 5mm, align(center, text(size: 7.3pt, fill: ink-soft, weight: 700, str(i)))))
    }
    for p in pts-a { place(top + left, dx: 11mm + p.at(0) * pw / xmax - 1.7mm, dy: ph - p.at(1) * ph / ymax - 1.7mm, circle(radius: 1.7mm, fill: teal-mid)) }
    for p in pts-b { place(top + left, dx: 11mm + p.at(0) * pw / xmax - 1.7mm, dy: ph - p.at(1) * ph / ymax - 1.7mm, circle(radius: 1.7mm, fill: amber)) }
    for (i, q) in queries.enumerate() {
      place(top + left, dx: 11mm + q.at(0) * pw / xmax - 2.4mm, dy: ph - q.at(1) * ph / ymax - 2.4mm, {
        circle(radius: 2.4mm, fill: white, stroke: 1.1pt + ink)
        place(center + horizon, text(size: 6.6pt, fill: ink, weight: 800, str(i + 1)))
      })
    }
    if xlabel != "" { place(top + left, dx: 11mm, dy: ph + 5.8mm, box(width: pw, align(center, text(size: 7.9pt, fill: ink-soft, weight: 800, tracking: 0.08em, xlabel)))) }
    if ylabel != "" { place(top + left, dx: -2mm, dy: 4mm, rotate(-90deg, text(size: 7.5pt, fill: ink-soft, weight: 800, tracking: 0.1em, ylabel))) }
  })
})

// cycle stages diagram: four boxes with loop arrow (native Typst)
#let cycle-diagram() = box(width: 100%, height: 46mm, {
  let bw = 40mm
  let bh = 13mm
  let stages = (("1 · SCOPE", "sharp problem statement"), ("2 · DATA", "collect + consent"), ("3 · BUILD & TEST", "train, test hidden, measure"), ("4 · IMPROVE", "read failures, loop back"))
  for (i, s) in stages.enumerate() {
    let col = calc.rem(i, 2)
    let row = calc.floor(i / 2)
    let dx = if col == 0 { 8mm } else { 122mm }
    let dy = if row == 0 { 0mm } else { 31mm }
    place(top + left, dx: dx, dy: dy, block(width: bw, height: bh, fill: white, stroke: 1pt + ink, radius: 5pt, inset: (x: 7pt, y: 5pt), stack(spacing: 1.5pt,
      text(font: f-display, size: 10.2pt, weight: 800, fill: teal, s.at(0)),
      text(size: 7.8pt, fill: ink-soft, s.at(1)),
    )))
  }
  // forward arrows top, return arrow bottom
  place(horizon + left, dx: 49mm, dy: 5mm, line(length: 72mm, stroke: (paint: teal-mid, thickness: 1.1pt, dash: "dashed")))
  place(top + left, dx: 118mm, dy: 3.2mm, text(size: 10pt, fill: teal-mid, weight: 800, "→"))
  place(horizon + left, dx: 49mm, dy: 40mm, line(length: 72mm, stroke: (paint: teal-mid, thickness: 1.1pt, dash: "dashed")))
  place(top + left, dx: 49.5mm, dy: 38.2mm, text(size: 10pt, fill: teal-mid, weight: 800, "←"))
  place(top + left, dx: 86mm, dy: 15.5mm, line(angle: 90deg, length: 14.5mm, stroke: (paint: teal-mid, thickness: 1.1pt, dash: "dashed")))
  place(top + left, dx: 86mm, dy: 16.5mm, text(size: 10pt, fill: teal-mid, weight: 800, "↓"))
  place(top + left, dx: 86mm, dy: 30.5mm, text(size: 10pt, fill: teal-mid, weight: 800, "↑"))
  place(top + left, dx: 96mm, dy: 21mm, text(size: 8.2pt, fill: ink-soft, weight: 800, tracking: 0.08em, "THE CYCLE NEVER ENDS"))
})
