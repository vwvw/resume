PAPER_NAME=resume
PAPER_NAME_FRENCH=resume-french

all:
	rubber --shell-escape -d $(PAPER_NAME).tex
	rubber --shell-escape -d $(PAPER_NAME_FRENCH).tex

push:
	cp resume.pdf ~/Documents/website/cv_Nicolas_Badoux.pdf 
	cd ~/Documents/website && git add cv_Nicolas_Badoux.pdf
	git push
	cd -

clean:
	rm -f $(PAPER_NAME).aux $(PAPER_NAME).bbl $(PAPER_NAME).blg
	rm -f $(PAPER_NAME).log $(PAPER_NAME).pdf $(PAPER_NAME).out
	rm -f $(PAPER_NAME).fls $(PAPER_NAME).tls $(PAPER_NAME).thm
	rm -f $(PAPER_NAME).rubbercache  ${PAPER_NAME}.fdb_latexmk
	
	rm -f $(PAPER_NAME_FRENCH).aux $(PAPER_NAME_FRENCH).bbl $(PAPER_NAME_FRENCH).blg
	rm -f $(PAPER_NAME_FRENCH).log $(PAPER_NAME_FRENCH).pdf $(PAPER_NAME_FRENCH).out
	rm -f $(PAPER_NAME_FRENCH).fls $(PAPER_NAME_FRENCH).tls $(PAPER_NAME_FRENCH).thm
	rm -f $(PAPER_NAME_FRENCH).rubbercache  ${PAPER_NAME_FRENCH}.fdb_latexmk
