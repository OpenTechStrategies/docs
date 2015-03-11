all: oss-dev-checklist.pdf

oss-dev-checklist.pdf: oss-dev-checklist.md pandoc.template Makefile
	pandoc $< -o $@ --template pandoc.template

clean:
	rm -f *.aux *.log texput.pdf oss-dev-checklist.tex oss-dev-checklist.pdf
