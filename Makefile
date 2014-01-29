# Make my resume and stuff

.DEFAULT_GOAL := all
.PHONY : all

all: hpfennig.e.html

%.html: %.rst
	rst2html.py --stylesheet=html4css1.css,style.css $< > $@
	open $@

clean:
	rm *.html
