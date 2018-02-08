PROJECTFILE = main
SECTIONS = sections
LATEXMK = latexmk
OUTDIR = build
current_dir = $(shell pwd)

DEFAULT: $(PROJECTFILE).pdf
.PHONY: $(PROJECTFILE).pdf all clean

$(PROJECTFILE).pdf:
	$(LATEXMK) --lualatex --outdir=$(OUTDIR) $(PROJECTFILE).tex;
	cp $(OUTDIR)/$(PROJECTFILE).pdf $(current_dir)

%.pdf : sections/%.tex
	$(LATEXMK) -r $(current_dir)/.latexmkrc --lualatex --outdir=$(OUTDIR) $<;
	cp $(OUTDIR)/$@ $(current_dir)

continue:
	make clean;
	$(LATEXMK) -f -pvc -pdfdvi --outdir=$(OUTDIR) $(PROJECTFILE).tex

cleanall:
	$(LATEXMK) -C --outdir=$(OUTDIR)

clean:
	$(LATEXMK) -c --outdir=$(OUTDIR)
