#!/bin/bash

# to be called as:
#   >>> ./create.sh 2 "testing github integration into create" > logs/ouput.log

echo "VERSION NUMBER: " $1 "PRODUCING FILE versions/paper_${1}.pdf"
echo "GIT COMMIT MESSAGE: " $2

pandoc --verbose --citeproc --filter packages/pandoc-wrapfig/pandoc-wrapfig.py --bibliography lib/export_2023-3-16.bib --pdf-engine=xelatex --csl=templates/nature.csl --template=templates/default.latex paper.md -f markdown -t latex -s -o versions/paper_${1}.pdf
# git add versions/paper_${1}.pdf

# pandoc --verbose --citeproc --bibliography lib/vici2020.bib --csl=templates/nature.csl preproposal.md -f markdown -s -o versions/vici_preproposal_${1}.docx
# git add versions/vici_preproposal_${1}.docx

# echo "COMMITTING CHANGES"
# git commit -am "$2"
# git push

