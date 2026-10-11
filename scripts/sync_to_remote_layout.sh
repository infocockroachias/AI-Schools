#!/bin/bash
# Sync today's fixed book sources + builds into the remote's clean layout
# (worktree at /home/z/my-project/remote-sync, branch off origin/main)
set -e
SRC=/home/z/my-project/scripts
DL=/home/z/my-project/download
WT=/home/z/my-project/remote-sync

declare -A DIR MAP
DIR[ai_handout]=class6-ai-around-me
DIR[ai_handout_c7]=class7-how-machines-learn
DIR[ai_handout_c8]=class8-build-the-ai-cycle
DIR[ai_handout_c9]=class9-the-logic-under-the-magic
DIR[ai_handout_c10]=class10-decide-evaluate-design
MAP[class6-ai-around-me]="PRATIMAI_AI_Handout_Class6_AI_Around_Me"
MAP[class7-how-machines-learn]="PRATIMAI_AI_Handout_Class7_How_Machines_Learn"
MAP[class8-build-the-ai-cycle]="PRATIMAI_AI_Handout_Class8_Build_the_AI_Cycle"
MAP[class9-the-logic-under-the-magic]="PRATIMAI_AI_Handout_Class9_The_Logic_Under_the_Magic"
MAP[class10-decide-evaluate-design]="PRATIMAI_AI_Handout_Class10_Decide_Evaluate_Design"

for s in ai_handout ai_handout_c7 ai_handout_c8 ai_handout_c9 ai_handout_c10; do
  d=${DIR[$s]}; n=${MAP[$d]}
  echo "== $s -> $d"
  # sources into typst/
  rsync -a --delete "$SRC/$s/"*.typ "$WT/$d/typst/"
  cp "$SRC/$s/INSTRUCTIONS.md" "$WT/$d/typst/INSTRUCTIONS.md"
  [ -f "$SRC/$s/visualgeneration.md" ] && cp "$SRC/$s/visualgeneration.md" "$WT/$d/typst/"
  [ -f "$SRC/$s/render.sh" ] && cp "$SRC/$s/render.sh" "$WT/$d/typst/"
  rsync -a --delete "$SRC/$s/fonts/" "$WT/$d/typst/fonts/"
  [ -d "$SRC/$s/visuals" ] && rsync -a --delete "$SRC/$s/visuals/" "$WT/$d/typst/visuals/"
  # builds at class root (both names, same bytes)
  cp "$SRC/$s/main.pdf" "$WT/$d/main.pdf"
  cp "$DL/$n.pdf" "$WT/$d/$n.pdf"
done

# webapp library files
echo "== webapp files"
cp $DL/PRATIMAI_AI_Handout_*.pdf $DL/PRATIMAI_AI_Handout_*.zip "$WT/webapp/public/files/"

# visuals-html parity check
echo "== visuals-html diff:"
diff -rq "$SRC/visuals_html" "$WT/visuals-html" 2>&1 | head -5 || true
echo "SYNC DONE"
