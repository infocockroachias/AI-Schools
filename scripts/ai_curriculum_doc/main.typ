// ============================================================
//  PRATIMAI · The AI Curriculum — Class 6–10 · MAIN
//  Curriculum design brief for schools — machiatto series identity
// ============================================================
#import "template.typ": *
#import "classes.typ": *
#import "preface.typ": preface-page
#import "pathway.typ": pathway-page

#set document(
  title: "The AI Curriculum — Class 6–10 · Curriculum Design Brief",
  author: "PRATIMA AI Curriculum Team",
  keywords: "AI curriculum, schools, Class 6–10, PRATIMA AI, paper missions",
)

#show: curriculum-doc

#cover-page
#preface-page
#for c in classes { class-section(c) }
#pathway-page
