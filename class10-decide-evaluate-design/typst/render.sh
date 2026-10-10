#!/bin/bash
# Render Class 7 PDF pages to PNG for visual QA
set -e
cd /home/z/my-project/scripts/ai_handout_c7
rm -f pages/*.png
PDF="main.pdf"
if [ "$1" != "" ]; then PDF="$1"; fi
PAGES=$(pdfinfo "$PDF" | grep Pages | awk '{print $2}')
echo "Total pages: $PAGES"
mkdir -p pages
pdftoppm -png -r 62 "$PDF" pages/pg
echo "Rendered $(ls pages | wc -l) pages"
