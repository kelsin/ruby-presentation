%.pdf : %.tex ruby-presentation.tex
	pdflatex -shell-escape $<
	pdflatex -shell-escape $<

default : ruby-presentation.article.pdf ruby-presentation.beamer.pdf ruby-presentation.handout.pdf open

open : 
	open ruby-presentation.article.pdf
	open ruby-presentation.beamer.pdf
	open ruby-presentation.handout.pdf

clean :
	rm *.{pdf,toc,aux,snm,log,nav,out,vrb}
