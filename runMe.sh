NAME=thesis
ABSTRACT=abstract
LATEXMKOPTS=-pdf #enable for forcing pdflatex
LATEXMK=pdflatex #latexmk $(LATEXMKOPTS)

$(LATEXMK) $(NAME)
$(LATEXMK) $(ABSTRACT)-cz
$(LATEXMK) $(ABSTRACT)-en
mv $(NAME).pdf build/$(NAME).pdf

$(LATEXMK) -C