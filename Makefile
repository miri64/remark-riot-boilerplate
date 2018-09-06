#
# Makefile
# Martine Lenders, 2017-12-21 15:32
#

.PHONY: all

all: maintainer-tutorial.pdf

maintainer-tutorial.pdf: maintainer-tutorial-orig.pdf
	@pdfcrop --margins "0 -1 0 -1" $< $@

maintainer-tutorial-orig.pdf: index.html $(wildcard figs/* css/*)
	@wkhtmltopdf $< $@

clean:
	rm maintainer-tutorial.pdf maintainer-tutorial-orig.pdf

# vim:ft=make
#
