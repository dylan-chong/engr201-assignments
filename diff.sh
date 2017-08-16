#/bin/bash

git show 'head:Literature Review.md' >> .temp
git diff --no-index --word-diff-regex=[^[:space:]] .temp 'Literature Review.md'
rm .temp
