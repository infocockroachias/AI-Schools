// ============================================================
//  PRATIMAI · The AI Curriculum — Class 6–10 · Curriculum Brief
//  Design system — machiatto series identity (Baloo 2 / Nunito)
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
#let teal-pale  = rgb("#8FB8C2")

// ---------------- fonts ----------------
#let f-display = ("Baloo 2", "Nunito", "DejaVu Sans")
#let f-text    = ("Nunito", "Carlito", "DejaVu Sans")

// ---------------- icons (Font Awesome 6 Free solid, bundled) ----------------
#let ico-map = (
  robot: "\u{f544}", user: "\u{f007}", users: "\u{f0c0}", bulb: "\u{f0eb}",
  book: "\u{f518}", chip: "\u{f2db}", link: "\u{f0c1}", star: "\u{f005}",
  clock: "\u{f017}", search: "\u{f002}", flag: "\u{f024}", award: "\u{f559}",
  route: "\u{f4d7}", scale: "\u{f24e}", pencil: "\u{f303}", eye: "\u{f06e}",
  gear: "\u{f013}", chart: "\u{f080}", compass: "\u{f14e}", shield: "\u{f3ed}",
  seed: "\u{f4d8}", grad: "\u{f19d}", hands: "\u{f4c4}", list: "\u{f0ca}",
)
#let ico(key, size: 8pt, fill: amber-deep) = text(font: "Font Awesome 6 Free Solid", weight: 900, size: size, fill: fill, ico-map.at(key))

// ---------------- text helpers ----------------
#let prose(body) = { set par(justify: true); body }

#let lab(key, txt, fill: ink-soft) = {
  ico(key, size: 7.8pt, fill: amber-deep)
  h(4.5pt)
  text(font: f-display, fill: fill, weight: 800, size: 8pt, tracking: 0.14em, upper(txt))
}

#let vchip(txt) = box(
  radius: 4pt, fill: teal-faint, stroke: 0.6pt + teal-soft,
  inset: (x: 6pt, y: 2.3pt),
  text(font: f-text, size: 8.9pt, weight: 700, fill: teal, txt),
)

#let lvlchip(txt, fill: white, inkc: white) = box(
  radius: 4pt, fill: fill, inset: (x: 9pt, y: 4pt),
  text(font: f-display, size: 9pt, weight: 800, tracking: 0.12em, fill: inkc, upper(txt)),
)

// ---------------- footer ----------------
#let curriculum-footer = context {
  let n = counter(page).get().first()
  align(bottom, block(width: 100%, inset: (top: 8pt), {
    line(length: 100%, stroke: 0.6pt + line-soft)
    v(4pt)
    grid(columns: (1fr, auto), column-gutter: 10pt,
      text(font: f-display, size: 7.6pt, weight: 800, tracking: 0.18em, fill: ink-soft,
        "PRATIMA AI · THE AI CURRICULUM · CLASS 6–10"),
      text(font: f-display, size: 8.6pt, weight: 800, fill: teal, str(n)),
    )
  }))
}

// ---------------- doc wrapper ----------------
#let curriculum-doc(body) = {
  set page(paper: "a4", margin: (top: 12.5mm, bottom: 16mm, x: 15mm), fill: paper, footer: curriculum-footer)
  set text(font: f-text, size: 10.4pt, fill: ink, lang: "en")
  set par(leading: 0.64em, spacing: 1.04em, justify: false)
  set list(indent: 0pt, body-indent: 5.5pt, spacing: 3pt, marker: text(fill: amber-deep, weight: 900)[•])
  show heading: set text(font: f-display, fill: ink)
  body
}

// ============================================================
//  COVER — full-bleed brand page
// ============================================================
#let seg(a, b, paint) = place(dx: a.first(), dy: a.last(),
  line(start: (0pt, 0pt), end: (b.first() - a.first(), b.last() - a.last()), stroke: 0.9pt + paint))
#let dot(p, r, paint) = place(dx: p.first() - r, dy: p.last() - r, circle(radius: r, fill: paint))

#let cover-constellations = {
  let tr = ((392pt, 118pt), (455pt, 62pt), (502pt, 148pt), (558pt, 90pt), (430pt, 192pt), (542pt, 212pt), (366pt, 64pt))
  let tr-e = ((0, 1), (1, 2), (2, 3), (3, 5), (2, 5), (0, 4), (4, 5), (1, 6), (0, 6))
  let bl = ((46pt, 700pt), (112pt, 660pt), (152pt, 744pt), (82pt, 794pt), (198pt, 692pt), (216pt, 780pt), (34pt, 758pt))
  let bl-e = ((0, 1), (1, 2), (2, 4), (2, 5), (0, 3), (3, 6), (0, 2))
  for e in tr-e { seg(tr.at(e.first()), tr.at(e.last()), white.transparentize(87%)) }
  for e in bl-e { seg(bl.at(e.first()), bl.at(e.last()), white.transparentize(87%)) }
  for p in tr { dot(p, 1.7pt, white.transparentize(74%)) }
  for p in bl { dot(p, 1.7pt, white.transparentize(74%)) }
  dot(tr.at(1), 2.6pt, amber.transparentize(1%))
  dot(tr.at(5), 2.6pt, amber.transparentize(1%))
  dot(bl.at(2), 2.6pt, amber.transparentize(1%))
  dot(bl.at(0), 2.6pt, amber.transparentize(1%))
  // faint rings
  place(dx: 440pt, dy: 470pt, circle(radius: 140pt, stroke: 0.8pt + white.transparentize(94%)))
  place(dx: -55pt, dy: 240pt, circle(radius: 110pt, stroke: 0.8pt + white.transparentize(94%)))
}

#let cover-level-card(num, word, role) = block(width: 100%, radius: 5pt,
  fill: white.transparentize(92%), stroke: 0.7pt + white.transparentize(66%),
  inset: (y: 8.5pt, x: 4pt), {
  align(center, text(font: f-display, size: 7.8pt, weight: 800, tracking: 0.16em, fill: teal-pale, "CLASS " + num))
  v(2.5pt)
  align(center, text(font: f-display, size: 12.6pt, weight: 800, fill: white, word))
  v(1.5pt)
  align(center, text(font: f-text, size: 7.6pt, fill: white.transparentize(38%), role))
})

#let cover-page = page(margin: 0pt, fill: teal-deep, footer: none, {
  set text(font: f-text, fill: white)
  cover-constellations
  // top series line
  place(top + center, dy: 46pt, {
    ico("robot", size: 10.5pt, fill: teal-pale)
    h(8pt)
    text(font: f-display, size: 9.6pt, weight: 800, tracking: 0.3em, fill: teal-soft, "PRATIMA AI · CURRICULUM DESIGN")
  })
  place(top + center, dy: 68pt, line(length: 34pt, stroke: 1.4pt + amber))
  // centre block
  place(horizon + center, dy: -6pt, block(width: 486pt, {
    align(center, box(radius: 4pt, stroke: 0.8pt + white.transparentize(55%), inset: (x: 11pt, y: 4pt),
      text(font: f-display, size: 8.8pt, weight: 800, tracking: 0.22em, fill: white, "FOR SCHOOLS · CLASSES 6 TO 10")))
    v(24pt)
    align(center, text(font: f-display, size: 47pt, weight: 800, fill: white, "The AI Curriculum"))
    v(11pt)
    align(center, text(size: 13.4pt, style: "italic", fill: teal-soft,
      "A five-year journey — from noticing smart machines to designing them responsibly"))
    v(30pt)
    grid(columns: 5, column-gutter: 9pt,
      cover-level-card("6", "NOTICE", "the Detective"),
      cover-level-card("7", "PREDICT", "the Investigator"),
      cover-level-card("8", "BUILD", "the Engineer"),
      cover-level-card("9", "REASON", "the Analyst"),
      cover-level-card("10", "DESIGN", "the Designer"),
    )
  }))
  // bottom imprint
  place(bottom + center, dy: -44pt, {
    align(center, line(length: 26pt, stroke: 1.2pt + amber))
    v(10pt)
    align(center, text(font: f-display, size: 11pt, weight: 800, fill: white, "PRATIMA AI Curriculum Team"))
    v(3.5pt)
    align(center, text(size: 9.4pt, fill: teal-soft,
      "96 paper missions · 25 chapters · 5 student roles · no screens needed"))
    v(4pt)
    align(center, text(font: f-display, size: 7.8pt, weight: 800, tracking: 0.24em, fill: teal-pale,
      "2026 EDITION · PREPARED FOR SCHOOL LEADERSHIP AND ACADEMIC COORDINATORS"))
  })
})

// ============================================================
//  CLASS SECTION COMPONENTS
// ============================================================
#let class-band(num, theme, tagline, level, missions, step) = {
  block(width: 100%, breakable: false, radius: 6pt, fill: teal-deep, inset: (x: 14pt, y: 9pt), {
    grid(columns: (1fr, auto), column-gutter: 14pt, align: (left, right),
      {
        text(font: f-display, size: 9.2pt, weight: 800, tracking: 0.26em, fill: teal-pale, "CLASS " + num)
        v(1.5pt)
        text(font: f-display, size: 21pt, weight: 800, fill: white, theme)
        v(2.5pt)
        text(size: 9.9pt, style: "italic", fill: teal-soft, tagline)
      },
      align(right, {
        box(radius: 4pt, fill: amber, inset: (x: 10pt, y: 4.2pt),
          text(font: f-display, size: 9.2pt, weight: 800, tracking: 0.1em, fill: white, upper(level)))
        v(7pt)
        text(font: f-display, size: 8.2pt, weight: 800, tracking: 0.08em, fill: teal-soft, upper(missions))
        v(5pt)
        // five-step progress dots
        grid(columns: 5, column-gutter: 4pt,
          ..range(5).map(i => box(
            radius: 2pt,
            fill: if i < step { white } else { white.transparentize(78%) },
            inset: (x: 5.2pt, y: 2.2pt)))
        )
        v(2.5pt)
        text(font: f-display, size: 6.9pt, weight: 800, tracking: 0.1em, fill: teal-pale, "YEAR " + str(step) + " OF 5")
      }),
    )
  })
}

#let facts-strip(..facts) = block(width: 100%, breakable: false, radius: 5pt,
  stroke: 0.8pt + line-soft, fill: white, inset: (y: 6pt, x: 2pt), {
  grid(columns: facts.len(), align: center + horizon,
    ..facts.pos().enumerate().map(p => {
      let it = p.last()
      let cell = {
        text(font: f-display, size: 15pt, weight: 800, fill: if it.first() == "0" { amber-deep } else { teal }, it.first())
        v(0.5pt)
        text(font: f-display, size: 7.4pt, weight: 800, tracking: 0.13em, fill: ink-soft, upper(it.last()))
      }
      if p.first() == 0 { cell } else { box(stroke: (left: 0.7pt + line-soft), inset: (left: 8pt), width: 100%, cell) }
    })
  )
})

#let chapter-block(num, title, missions, q, outcomes, words, core, links, capstone: false) = {
  v(6pt)
  block(width: 100%, breakable: false, radius: 5pt, stroke: 0.9pt + ink, fill: white, inset: 0pt, {
    box(width: 100%, fill: if capstone { amber-soft } else { teal-faint },
      stroke: (bottom: 0.6pt + line-soft), inset: (x: 11pt, y: 4.5pt), radius: (top: 5pt), {
      grid(columns: (auto, 1fr, auto), column-gutter: 9pt, align: (left, left, right),
        text(font: f-display, size: 10.2pt, weight: 800, fill: if capstone { amber-deep } else { amber-deep }, "CH " + str(num)),
        {
          text(font: f-display, size: 12.3pt, weight: 800, fill: teal, title)
          if capstone { h(7pt); box(radius: 3.5pt, fill: amber, inset: (x: 7pt, y: 2.2pt),
            text(font: f-display, size: 7.6pt, weight: 800, tracking: 0.12em, fill: white, "CAPSTONE")) }
        },
        text(font: f-display, size: 8.2pt, weight: 800, tracking: 0.06em, fill: ink-soft, missions),
      )
    })
    box(width: 100%, inset: (x: 11pt, y: 6pt, bottom: 7.5pt), {
      text(size: 10pt, style: "italic", fill: ink-soft, q)
      v(4pt)
      grid(columns: (80pt, 1fr), column-gutter: 7pt, row-gutter: 5pt,
        lab("user", "Outcomes"),
        {
          set list(spacing: 2.45pt, body-indent: 4.5pt)
          set par(justify: false)
          list(..outcomes)
        },
        lab("chip", "Core ideas"),
        {
          box(width: 100%, inset: (top: 0.5pt), {
            for w in words { vchip(w) ; h(4pt) }
            v(3.5pt)
            text(size: 9.8pt, fill: ink, {
              text(weight: 800, fill: amber-deep, "Core understanding — ")
              core
            })
          })
        },
        lab("link", "Subjects"),
        box(width: 100%, inset: (top: 1.5pt), text(size: 9.6pt, fill: ink-soft, links)),
      )
    })
  })
}

#let ladder(current-num, current-word, current-role) = {
  v(6.5pt)
  block(width: 100%, breakable: false, {
    grid(columns: 5, column-gutter: 8pt,
      ..((("6", "NOTICE", "Detective"), ("7", "PREDICT", "Investigator"), ("8", "BUILD", "Engineer"), ("9", "REASON", "Analyst"), ("10", "DESIGN", "Designer")))
        .map(c => {
          let active = c.first() == current-num
          block(width: 100%, radius: 5pt,
            fill: if active { teal-deep } else { white },
            stroke: if active { 0.9pt + teal-deep } else { 0.8pt + line-soft },
            inset: (y: 5.5pt, x: 3pt), {
            align(center, text(font: f-display, size: 8.6pt, weight: 800,
              fill: if active { white } else { teal }, "CLASS " + c.first()))
            v(1.2pt)
            align(center, text(font: f-display, size: 8.6pt, weight: 800, tracking: 0.06em,
              fill: if active { amber } else { ink-soft }, c.at(1)))
            v(0.8pt)
            align(center, text(font: f-text, size: 7.6pt,
              fill: if active { teal-soft } else { ink-soft }, "the " + c.last()))
          })
        })
    )
    v(3.5pt)
    text(font: f-display, size: 7.6pt, weight: 800, tracking: 0.14em, fill: ink-soft,
      "THE FIVE-YEAR LADDER · CLASS " + current-num + " IS YEAR " + current-word + " — THE ROLE THIS YEAR: THE " + upper(current-role))
  })
}

#let end-footprint(exit, award, footprint) = block(width: 100%, breakable: false, {
  grid(columns: (1.18fr, 1fr), column-gutter: 9pt,
    // left — by the end
    block(radius: 5pt, stroke: 0.9pt + amber-deep, fill: amber-soft, inset: (x: 11pt, y: 7.5pt), width: 100%, {
      lab("award", "By the end of this year", fill: amber-deep)
      v(4.5pt)
      { set list(spacing: 2.9pt); set par(justify: false); list(..exit) }
      v(5pt)
      line(length: 100%, stroke: 0.6pt + amber.transparentize(55%))
      v(3.5pt)
      text(font: f-display, size: 8.2pt, weight: 800, tracking: 0.1em, fill: amber-deep, upper(award))
    }),
    // right — cross-curricular footprint
    block(radius: 5pt, stroke: 0.8pt + line-soft, fill: white, inset: (x: 11pt, y: 7.5pt), width: 100%, {
      lab("chart", "Cross-curricular footprint", fill: ink-soft)
      v(2pt)
      text(size: 8.2pt, style: "italic", fill: ink-soft, "How many chapters reach each subject")
      v(5pt)
      grid(columns: (auto, 1fr), column-gutter: 7pt, row-gutter: 4.5pt,
        ..footprint.map(f => (
          text(size: 9.2pt, weight: 700, fill: ink, f.first()),
          grid(columns: (1fr, auto), column-gutter: 5pt, align: (left, horizon), {
            box(width: f.last() * 13.5%, fill: teal-mid, radius: 2pt, inset: (y: 3.6pt))
          }, text(size: 9pt, weight: 800, fill: teal, str(f.last())))
        )).flatten()
      )
    }),
  )
})

#let spotlight(code, title, body-text) = {
  v(7.5pt)
  block(width: 100%, breakable: false, radius: 5pt, fill: cream, stroke: 0.8pt + line-soft, inset: (x: 11pt, y: 7pt), {
    grid(columns: (auto, 1fr), column-gutter: 9pt, align: (left, horizon),
      text(font: f-display, size: 8pt, weight: 800, tracking: 0.15em, fill: amber-deep, "SIGNATURE MISSION"),
      text(font: f-display, size: 8.4pt, weight: 800, tracking: 0.05em, fill: teal, code + " · " + title),
    )
    v(3.5pt)
    text(size: 9.4pt, fill: ink, body-text)
  })
}
