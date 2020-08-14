#!/usr/bin/env bash
cat *.md > all.md
npm i -g --unsafe-perm md-to-pdf

cat all.md | md-to-pdf --stylesheet s.css > output.pdf

rm all.md
