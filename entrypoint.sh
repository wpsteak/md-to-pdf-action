#!/usr/bin/env bash
# apt-get install libnss3-dev libgconf-2-4 -y
# apt-get install -y libnss3-tools
ls
# cat *.md > all.md
npm i -g --unsafe-perm md-to-pdf

# md-to-pdf
chmod +x run.sh
./run.sh

ls -alt
# cat all.md | md-to-pdf --stylesheet s.css > output.pdf

# rm all.md
