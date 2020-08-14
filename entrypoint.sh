#!/usr/bin/env bash
find . -name '*.md' > filelist.dat
npm i -g md-to-pdf

while read file
do
  base_name=$( echo "${file}" | basename "${file}" | sed -e 's/\.md//g')
  cat "$base_name" >> bigFile.md
done < bigFile.md

cat file.md | md-to-pdf --stylesheet s.css > output.pdf

rm bigFile.md
