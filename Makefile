# required packages on Ubuntu Linux:
# catdvi
# ghostscript
# texlive-binaries
# texlive-humanities
# texlive-latex-base
# texlive-latex-extra
# texlive-latex-recommended

NAME = "Douglas"

all: pdf txt cleantmp

latex:
	latex Curriculo-$(NAME).tex
	chmod -x *.tex

pdf: latex
	dvips -o Curriculo-$(NAME).ps Curriculo-$(NAME).dvi
	ps2pdf Curriculo-$(NAME).ps Curriculo-$(NAME).pdf

txt: latex
	catdvi Curriculo-$(NAME).dvi > Curriculo-$(NAME).txt

cleantmp:
	rm -f *.aux *.dvi *.nav *.snm *.toc *.vrb *.backup *.latextexog *.out
	rm -f *.ps
	rm -f *.log

clean: cleantmp
	rm -f *.txt *.pdf

