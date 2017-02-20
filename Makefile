TEX := pdflatex
RM  := rm -f

reference.pdf:

%.pdf: %.tex
	$(TEX) "$<"

.PHONY: clean
clean:
	$(RM) $(filter-out %.pdf,$(shell git ls-files -io --exclude-standard))
