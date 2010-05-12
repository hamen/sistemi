# Makefile to compile latex files
CC = pdflatex
FILE = appunti_sistemi
OFILE=sistemi.controlli.appunti.collettivo
DATE=$(shell date -u +%Y%m%d)

all:	pdf 

pdf:
	makeindex $(FILE).idx
	$(CC) $(FILE).tex

show:
	nohup evince $(FILE).pdf &

clean:	
	rm *.aux
#	rm *.dvi
	rm *.toc
	rm *.log
	rm *.out

release: pdf pdf
	cp $(FILE).pdf $(OFILE).$(DATE).pdf	