cd "${THESIS_PATH}"

# Compile main.tex ignoring warnings
pdflatex -interaction nonstopmode main.tex

# Send SIGHUP to MuPDF viewer process, which triggers a reload
pkill -HUP mupdf-gl