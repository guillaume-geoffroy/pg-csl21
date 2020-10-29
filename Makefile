file=CSL2021

all: $(file).pdf

$(file).pdf: *.tex  $(file).bbl
	pdflatex $(file).tex

$(file).bbl: *.bib
	pdflatex $(file).tex
	bibtex $(file)
	pdflatex $(file).tex

bib: 
	pdflatex $(file).tex
	bibtex $(file).tex
	pdflatex $(file).tex

clean:
	rm -f *.log *.aux *.out *.toc *.synctex.gz *.nav *.snm *.bbl *.vtc *.blg

distclean: clean
	rm -f $(file).pdf
