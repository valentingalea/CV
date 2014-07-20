@echo off

set OUT=Valentin-Galea

if exist %OUT%.pdf del /Q %OUT%.pdf

pandoc CV.md -o %OUT%.pdf --from=markdown_github --variable mainfont=Arial --variable sansfont=Arial --variable monofont="Courier New" --variable fontsize=10pt --latex-engine=xelatex

if exist %OUT%.pdf start %OUT%.pdf
