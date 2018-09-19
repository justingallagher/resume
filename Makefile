all: JustinGallagherResume.pdf JustinGallagherResumePrint.pdf

JustinGallagherResume.pdf: resume.tex template/friggeri-cv.cls
	latexmk -pdf -pdflatex="xelatex -interaction=nonstopmode %O %S" -jobname=JustinGallagherResume -use-make resume.tex

JustinGallagherResumePrint.pdf: resume.tex template/friggeri-cv.cls
	latexmk -pdf -pdflatex="xelatex -interaction=nonstopmode %O \"\def\isprint{1} \input{%S}\"" -jobname=JustinGallagherResumePrint -use-make resume.tex

clean:
	latexmk -CA -jobname=JustinGallagherResume
	latexmk -CA -jobname=JustinGallagherResumePrint
