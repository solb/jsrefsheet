TEX := pdflatex
RM  := rm -f

.PHONY: all
all: reference.pdf netreference.pdf

%.pdf: %.tex
	$(TEX) "$<"

.PHONY: clean
clean:
	$(RM) $(filter-out %.pdf,$(shell git ls-files -io --exclude-standard))
