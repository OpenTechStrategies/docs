all: dev-guidelines.pdf oss-dev-checklist.pdf

%.pdf: %.md pandoc.template Makefile
	pandoc $< -o $@ --template pandoc.template

clean:
	rm -f *.aux *.log texput.pdf *.tex *.pdf
