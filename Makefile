NAME=thesis
ABSTRACT=abstract
LATEXMKOPTS=-pdf #enable for forcing pdflatex
LATEXMK=latexmk $(LATEXMKOPTS)

all: thesis abstract

thesis:
	$(LATEXMK) $(NAME)
	-cp $(NAME).pdf build/thesis.pdf

abstract:
	$(LATEXMK) $(ABSTRACT)-cz
	-mv $(ABSTRACT)-cz.pdf build/$(ABSTRACT)-cz-$(shell date +%Y-%m-%d).pdf
	$(LATEXMK) $(ABSTRACT)-en
	-mv $(ABSTRACT)-en.pdf build/$(ABSTRACT)-en-$(shell date +%Y-%m-%d).pdf
clean:
	$(LATEXMK) -C
	#rm **/*.aux
