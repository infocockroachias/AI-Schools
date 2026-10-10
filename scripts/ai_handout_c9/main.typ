// ============================================================
//  PRATIMAI · AI Handouts — Class 9 · "The Logic Under the Magic"  (MAIN)
//  Machiatto edition — MoKa Reads publication specification
// ============================================================
#import "template.typ": *
#import "front.typ": license-page, ack-text, preface-pages

#show: moka-doc.with(
  cover-series: "PRATIMAI · AI HANDOUTS",
  cover-title: "The Logic Under the Magic",
  cover-subtitle: "My case file for the maths that makes machines learn — and the reasons they fail",
  cover-meta: ("CLASS 9 · LEVEL 4 — REASON", "21 PAPER MISSIONS · 5 CHAPTERS · NO SCREEN NEEDED"),
  author: "PRATIMAI Curriculum Team",
  license: license-page,
  ack: ack-text,
  ack-meta: "21 PAPER MISSIONS · 20 WORDS TO KEEP · 5 CHAPTERS · 1 BADGE EARNED",
  preface: preface-pages,
  toc: true,
  toc-extras: box-legend,
  cover-questions: "How do I know?  ·  What is the average hiding?  ·  What is the trick here?",
)

// ---------- chapters ----------
#include "ch1.typ"
#include "ch2.typ"
#include "ch3.typ"
#include "ch4.typ"
#include "ch5.typ"

// ---------- back matter ----------
#include "ch6_back.typ"
