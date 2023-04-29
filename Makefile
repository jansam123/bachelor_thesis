NAME=thesis
ABSTRACT=abstract
LATEXMKOPTS= -pdf #-pdflatex=lualatex #-pdf #enable for forcing pdflatex
LATEXMK=latexmk $(LATEXMKOPTS)

all: thesis abstract

thesis:
	$(LATEXMK) $(NAME)
	-cp $(NAME).pdf build/thesis.pdf

abstract:
	$(LATEXMK) $(ABSTRACT)-cz
	-mv $(ABSTRACT)-cz.pdf $(ABSTRACT)-sk.pdf
	-cp $(ABSTRACT)-sk.pdf build/$(ABSTRACT)-sk.pdf
	$(LATEXMK) $(ABSTRACT)-en
	-cp $(ABSTRACT)-en.pdf build/$(ABSTRACT)-en.pdf
clean:
	$(LATEXMK) -C
	#rm **/*.aux
