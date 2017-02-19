all: pdf

pdf: README.pdf
README.pdf: README.md
	pandoc --standalone \
	--template=style.tex \
	--latex-engine=xelatex \
	--from=markdown \
	--to=latex \
	--output=README.pdf README.md

install:
	apt-get install -y pandoc
	apt-get install -y markdown

clean:
	rm -f README.tex
	rm -f README.tuc
	rm -f README.log
	rm -f README.pdf
	rm -f *.aux
	rm -f *.out
	rm -f *~
