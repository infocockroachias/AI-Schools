// ============================================================
//  PRATIMAI · AI Handouts — Class 8 · "Build the AI Cycle"  (MAIN)
//  Machiatto edition — MoKa Reads publication specification
// ============================================================
#import "template.typ": *
#import "front.typ": license-page, ack-text, preface-pages

#show: moka-doc.with(
  cover-series: "PRATIMAI · AI HANDOUTS",
  cover-title: "Build the AI Cycle",
  cover-subtitle: "My case file for planning, testing and improving an AI people can trust",
  cover-meta: ("CLASS 8 · LEVEL 3 — BUILD THE CYCLE", "17 PAPER MISSIONS · 5 CHAPTERS · NO SCREEN NEEDED"),
  author: "PRATIMAI Curriculum Team",
  license: license-page,
  ack: ack-text,
  ack-meta: "17 PAPER MISSIONS · 16 WORDS TO KEEP · 5 CHAPTERS · 1 BADGE EARNED",
  preface: preface-pages,
  toc: true,
  toc-extras: box-legend,
  cover-questions: "How do I know?  ·  Who is missing?  ·  What is the trick here?",
)

// ---------- chapters ----------
#include "ch1.typ"
#include "ch2.typ"
#include "ch3.typ"
#include "ch4.typ"
#include "ch5.typ"

// ---------- back matter ----------
#include "ch6_back.typ"
