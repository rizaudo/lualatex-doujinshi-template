PROJECTFILE = main
SECTIONS = sections
LATEXMK = latexmk
OUTDIR = build
current_dir = $(shell pwd)

SECTION_TEX := $(shell find $(SECTIONS) -name '*.tex')
SECTION_PDF := $(notdir $(patsubst %.tex, %.pdf, $(SECTION_TEX)))

DEFAULT: $(PROJECTFILE).pdf
.PHONY: $(PROJECTFILE).pdf all clean

$(PROJECTFILE).pdf:
	$(LATEXMK) --lualatex --outdir=$(OUTDIR) $(PROJECTFILE).tex;
	cp $(OUTDIR)/$(PROJECTFILE).pdf $(current_dir)

$(SECTION_PDF) : $(SECTION_TEX)
	$(LATEXMK) -r $(current_dir)/.latexmkrc --lualatex --outdir=$(OUTDIR) $<;
	cp $(OUTDIR)/$@ $(current_dir)

continue:
	make clean;
	$(LATEXMK) -f -pvc --lualatex --outdir=$(OUTDIR) $(PROJECTFILE).tex

cleanall:
	$(LATEXMK) -C --outdir=$(OUTDIR)

clean:
	$(LATEXMK) -c --outdir=$(OUTDIR)
