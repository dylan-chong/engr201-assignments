#/bin/bash

git show 'head:Case Study.md' >> .temp
git diff --no-index --word-diff-regex=[^[:space:]] .temp 'Case Study.md'
rm .temp
