 
build:
	pandoc --template tabla.tex.template -o tabla.tex -f markdown data.yaml
	pdflatex -shell-escape -synctex=1 -interaction=nonstopmode "tabla".tex
	pdflatex -shell-escape -synctex=1 -interaction=nonstopmode "tabla".tex

clean:
	rm tabla.aux tabla.log tabla.synctex.gz tabla.tex

clean_all: clean
	rm tabla.pdf

rebuild: clean build
