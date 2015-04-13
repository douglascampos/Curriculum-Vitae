# required packages on Ubuntu Linux:
# catdvi
# ghostscript
# texlive-binaries
# texlive-humanities
# texlive-latex-base
# texlive-latex-extra
# texlive-latex-recommended

#NAME = "Douglas"

all: pdf txt cleantmp

latex:
	latex Curriculo-Douglas.tex
	chmod -x *.tex

pdf: latex
	dvips -o Curriculo-Douglas.ps Curriculo-Douglas.dvi
	ps2pdf Curriculo-Douglas.ps Curriculo-Douglas.pdf

txt: latex
	catdvi Curriculo-Douglas.dvi > Curriculo-Douglas.txt

#cleantmp:
#	rm -f *.aux *.dvi *.nav *.snm *.toc *.vrb *.backup *.latextexog *.out
#	rm -f *.ps
#	rm -f *.log

#clean: cleantmp
#	rm -f *.txt *.pdf

