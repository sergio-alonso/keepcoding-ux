all: pdf

pdf: dossier.pdf
dossier.pdf: dossier.md
	pandoc --standalone \
	--template=template.tex \
	--latex-engine=xelatex \
	--from=markdown \
	--to=latex \
	--output=dossier.pdf dossier.md

install:
	apt-get install -y pandoc
	apt-get install -y markdown

clean:
	rm -f *.tex
	rm -f *.tuc
	rm -f *.log
	rm -f *.pdf
	rm -f *.aux
	rm -f *.out
	rm -f *~
