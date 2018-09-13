#
# Makefile
# Martine Lenders, 2017-12-21 15:32
#

.PHONY: all

all: stream-teaser.pdf

stream-teaser.pdf: stream-teaser-orig.pdf
	@pdfcrop --margins "-1 -1 -1 -1" $< $@

stream-teaser-orig.pdf: index.html $(wildcard figs/* css/*)
	@wkhtmltopdf $< $@

clean:
	rm stream-teaser.pdf stream-teaser-orig.pdf

# vim:ft=make
#
