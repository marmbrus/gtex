DOCTITLE=""
FILENAME=""

all:
	google docs get --title $(DOCTITLE) --dest $(FILENAME) --format txt
	dd skip=3 if=$(FILENAME).txt of=$(FILENAME).tex bs=1 #Drop BOM from file
	rm -f $(FILENAME).bib
	pdflatex $(FILENAME)
	bibtex $(FILENAME)
	pdflatex $(FILENAME)
	pdflatex $(FILENAME)

clean:
	rm -rf *.aux *.log *.bbl *.blg $(FILENAME).pdf
