#/bin/bash

git show 'head:Final Report.md' >> .temp
git diff --no-index --word-diff-regex=[^[:space:]] .temp 'Final Report.md'
rm .temp
