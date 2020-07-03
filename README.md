# LaTeX Setup
My setup for running a multi-file (or not) LaTeX project. When any .tex file is saved, the whole document is compiled and displayed quickly.

## Requirements
### Atom
[Atom](https://atom.io/) is used to edit the project's .tex files.

**Atom packages required:**
- [language-latex](https://atom.io/packages/language-latex) for syntax-highlights
- [autocomplete-latex](https://atom.io/packages/autocomplete-latex) for autocompletion
- [save-commands-plus](https://atom.io/packages/save-commands-plus) to compile the PDF when files are saved

### MuPDF
[MuPDF](https://mupdf.com/) is used to display the PDF document. It's a bit unusual, but very fast at reloading the PDF.

MuPDF main repo: [git://git.ghostscript.com/mupdf.git](https://git.ghostscript.com/?p=mupdf.git)

My fork which adds mouse4 and mouse5 for previous/next page, scroll to bottom on prev page, top on next page: https://github.com/joaomacp/mupdf.git

**Installing MuPDF** (my fork)
```
sudo apt install mesa-common-dev libglu1-mesa-dev freeglut3-dev libx11-dev libxrandr-dev libxi-dev
git clone --recursive https://github.com/joaomacp/mupdf.git
cd mupdf
sudo make prefix=/usr/local install
```

## Setup
Clone or download this repo to `~/latex-setup`.

### .bashrc
In `~/.bashrc`, add the root directory of your LaTeX project:
```
export THESIS_PATH=~/path/to/"your thesis"
```

---
**Note:** It's assumed a `main.tex` file exists in the root directory, as the document to be compiled.

---

### Atom save-commands file
- Copy the `save-commands.json` file to the same root directory.
- Edit the path `/home/nimbus/latex-setup/compile_and_show_pdf.sh` to the full path in your machine.

## Running
- `bash ~/latex-setup/launch_thesis.sh` launches Atom and MuPDF to start editing and viewing

- Every time a .tex file is saved (either in root or in subdirectories), the PDF is updated

## Optional
- In `~/.bashrc`, add an alias (e.g. `alias lt='bash ~/latex-setup/launch_thesis.sh'`) to launch the setup quickly

Tips:
- Keep the project backed up by syncing the project directory in Dropbox
- Use Overleaf to sync to the same Dropbox dir, making the project available there
- Make Mendeley sync to the project's .bib file

Additional Atom packages:
- [spell-check](https://atom.io/packages/spell-check) comes with Atom. To work with latex, go to settings and add `text.tex.latex` to "Grammars" and `.support.function.tex` to "Excluded Scopes". Also nice to enable "Add Known Words"
- [latexer](https://atom.io/packages/latexer) for \cite and \ref completion (see "Multifile support")
- The theme I use: [duotone-light-syntax](https://atom.io/themes/duotone-light-syntax)
