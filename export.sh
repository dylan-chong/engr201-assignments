#/bin/bash
OUT_FILE=$(mktemp -t ".literature-review")
mv "$OUT_FILE" "$OUT_FILE.pdf"
OUT_FILE="$OUT_FILE.pdf"

pandoc 'Literature Review.md' -o "$OUT_FILE" \
    --variable="linestretch=1.5" \
    --variable="margin-left=2cm" \
    --variable="margin-right=2cm" \
    --variable="margin-top=2cm" \
    --variable="margin-bottom=2cm"
open "$OUT_FILE"
sleep 1
rm "$OUT_FILE"
