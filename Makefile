PAPER_NAME=resume

all:
	rubber --shell-escape -d $(PAPER_NAME).tex


clean:
	rm -f $(PAPER_NAME).aux $(PAPER_NAME).bbl $(PAPER_NAME).blg
	rm -f $(PAPER_NAME).log $(PAPER_NAME).pdf $(PAPER_NAME).out
	rm -f $(PAPER_NAME).fls $(PAPER_NAME).tls $(PAPER_NAME).thm
	rm -f $(PAPER_NAME).rubbercache  ${PAPER_NAME}.fdb_latexmk
