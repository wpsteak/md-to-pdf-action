#!/usr/bin/env bash
apt-get install libnss3-dev libgconf-2-4 -y
cat *.md > all.md
npm i -g --unsafe-perm md-to-pdf

cat all.md | md-to-pdf --stylesheet s.css > output.pdf

rm all.md
