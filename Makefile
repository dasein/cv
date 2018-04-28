.PHONY: release clean html pdf

release: html pdf

clean:
	rm -f *.pdf *.html

html: hpfennig.e.html
	open $^

pdf: hpfennig.e.pdf
	open $^

%.html: %.rst
	rst2html.py --stylesheet=html4css1.css,style.css $< $@

%.pdf: %.html
	/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --disable-gpu --headless --print-to-pdf=$@ $^
