##################################################################
# Makefile for LaTeX
##################################################################

FILES = e3_tp2_main
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.log *.fdb_latexmk *.fls

informe: $(FILES).tex
	@pdflatex -interaction=batchmode $(FILES).tex
	@pdflatex -interaction=batchmode $(FILES).tex
	@rm -rf $(OTHER)
#	clear
	@echo Finished Compiling
