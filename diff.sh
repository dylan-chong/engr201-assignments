#/bin/bash

git show 'head:Literature Review Notes.md' >> .temp
git diff --no-index --word-diff-regex=[^[:space:]] .temp 'Literature Review Notes.md'
rm .temp
