cd "${THESIS_PATH}"
pdflatex -interaction nonstopmode main.tex
pkill -HUP mupdf-gl
