// ============================================================
//  PRATIMAI · AI Handouts — Class 10 · "Decide, Evaluate, Design"  (MAIN)
//  Machiatto edition — MoKa Reads publication specification
// ============================================================
#import "template.typ": *
#import "front.typ": license-page, ack-text, preface-pages

#show: moka-doc.with(
  cover-series: "PRATIMAI · AI HANDOUTS",
  cover-title: "Decide, Evaluate, Design",
  cover-subtitle: "My field book for judging AI systems, designing them responsibly — and defending the call",
  cover-meta: ("CLASS 10 · LEVEL 5 — EVALUATE & DESIGN", "21 PAPER MISSIONS · 5 CHAPTERS · NO SCREEN NEEDED"),
  author: "PRATIMAI Curriculum Team",
  license: license-page,
  ack: ack-text,
  ack-meta: "21 PAPER MISSIONS · 24 WORDS TO KEEP · 5 CHAPTERS · 1 PORTFOLIO EARNED",
  preface: preface-pages,
  toc: true,
  toc-extras: box-legend,
  cover-questions: "How do I know?  ·  Who is accountable?  ·  What would change my mind?",
)

// ---------- chapters ----------
#include "ch1.typ"
#include "ch2.typ"
#include "ch3.typ"
#include "ch4.typ"
#include "ch5.typ"

// ---------- back matter ----------
#include "ch6_back.typ"
