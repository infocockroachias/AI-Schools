// ============================================================
//  PRATIMAI · AI Handouts — Class 7 · "How Machines Learn"  (MAIN)
//  Machiatto edition — MoKa Reads publication specification
// ============================================================
#import "template.typ": *
#import "front.typ": license-page, ack-text, preface-pages

#show: moka-doc.with(
  cover-series: "PRATIMAI · AI HANDOUTS",
  cover-title: "How Machines Learn",
  cover-subtitle: "My case file for training machines — and catching their mistakes",
  cover-meta: ("CLASS 7 · LEVEL 2 — SORT & PREDICT", "17 PAPER MISSIONS · 5 CHAPTERS · NO SCREEN NEEDED"),
  author: "PRATIMAI Curriculum Team",
  license: license-page,
  ack: ack-text,
  preface: preface-pages,
  toc: true,
)

// ---------- chapters ----------
#include "ch1.typ"
#include "ch2.typ"
#include "ch3.typ"
#include "ch4.typ"
#include "ch5.typ"

// ---------- back matter ----------
#include "ch6_back.typ"
