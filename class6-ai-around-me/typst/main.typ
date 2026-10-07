// ============================================================
//  PRATIMAI · AI Handouts — Class 6 · "AI Around Me"  (MAIN)
//  Machiatto edition — MoKa Reads publication specification
// ============================================================
#import "template.typ": *
#import "front.typ": license-page, ack-text, preface-pages

#show: moka-doc.with(
  cover-series: "PRATIMAI · AI HANDOUTS",
  cover-title: "AI Around Me",
  cover-subtitle: "My detective notebook for spotting smart machines",
  cover-meta: ("CLASS 6 · LEVEL 1 — NOTICE", "20 PAPER MISSIONS · 5 CHAPTERS · NO SCREEN NEEDED"),
  author: "PRATIMAI Curriculum Team",
  license: license-page,
  ack: ack-text,
  ack-meta: "20 PAPER MISSIONS · 14 WORDS TO KEEP · 5 CHAPTERS · 1 BADGE EARNED",
  preface: preface-pages,
  toc: true,
  toc-extras: box-legend,
  cover-questions: "How do I know?  ·  What is missing?  ·  Who made this?",
)

// ---------- chapters ----------
#include "ch1.typ"
#include "ch2.typ"
#include "ch3.typ"
#include "ch4.typ"
#include "ch5.typ"

// ---------- back matter ----------
#include "ch6_back.typ"
