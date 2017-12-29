#
# Makefile
# Martine Lenders, 2017-12-21 15:32
#

.PHONY: all

all: 34c3-lighning-talk-riot.pdf

34c3-lighning-talk-riot.pdf: 34c3-lighning-talk-riot-orig.pdf
	@pdfcrop --margins "0 -1 0 -1" $< $@

34c3-lighning-talk-riot-orig.pdf: index.html $(wildcard figs/* css/*)
	@wkhtmltopdf $< $@

clean:
	rm 34c3-lighning-talk-riot.pdf 34c3-lighning-talk-riot-orig.pdf

# vim:ft=make
#
