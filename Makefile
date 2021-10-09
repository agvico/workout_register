 
build:
	pandoc --template tabla.tex.template -o tabla.tex -f markdown data.yaml
	pdflatex -shell-escape -synctex=1 -interaction=nonstopmode "tabla".tex
	pdflatex -shell-escape -synctex=1 -interaction=nonstopmode "tabla".tex

clean:
	rm tabla.aux tabla.log tabla.synctex.gz tabla.tex

rebuild: clean build
