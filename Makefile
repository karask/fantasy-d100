TEX := xelatex
GS := gs
TEXFLAGS := -interaction=nonstopmode -halt-on-error
SOURCE := fantasy-crux.tex
VERSION_FILE := VERSION
VERSION_VALUE := $(shell sed 's/^v//' $(VERSION_FILE))
VERSION ?= v$(VERSION_VALUE)

PRINTER_JOB := fantasy-crux-printer
PRINTER_BG := lib/book/img/background-empty
PRINTER_OUT := FC-$(VERSION)-printer.pdf

DELUXE_JOB := fantasy-crux-papyrous
DELUXE_BG := lib/book/img/background-papyrous
DELUXE_OUT := FC-$(VERSION)-papyrous.pdf

TEMP_EXTS := aux log out toc xdv

.PHONY: all clean FORCE

all: $(PRINTER_OUT) $(DELUXE_OUT)

$(PRINTER_OUT): FORCE $(SOURCE) $(VERSION_FILE) $(PRINTER_BG).jpg
	$(TEX) $(TEXFLAGS) -jobname=$(PRINTER_JOB) '\def\rpgBackgroundImage{$(PRINTER_BG)}\input{$(SOURCE)}'
	$(TEX) $(TEXFLAGS) -jobname=$(PRINTER_JOB) '\def\rpgBackgroundImage{$(PRINTER_BG)}\input{$(SOURCE)}'
	$(GS) -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dPDFSETTINGS=/printer -sOutputFile=$@ $(PRINTER_JOB).pdf
	$(RM) $(PRINTER_JOB).pdf
	$(RM) $(foreach ext,$(TEMP_EXTS),$(PRINTER_JOB).$(ext))

$(DELUXE_OUT): FORCE $(SOURCE) $(VERSION_FILE) $(DELUXE_BG).jpg
	$(TEX) $(TEXFLAGS) -jobname=$(DELUXE_JOB) '\def\rpgBackgroundImage{$(DELUXE_BG)}\input{$(SOURCE)}'
	$(TEX) $(TEXFLAGS) -jobname=$(DELUXE_JOB) '\def\rpgBackgroundImage{$(DELUXE_BG)}\input{$(SOURCE)}'
	$(GS) -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dPDFSETTINGS=/printer -sOutputFile=$@ $(DELUXE_JOB).pdf
	$(RM) $(DELUXE_JOB).pdf
	$(RM) $(foreach ext,$(TEMP_EXTS),$(DELUXE_JOB).$(ext))

clean:
	$(RM) $(PRINTER_OUT) $(DELUXE_OUT) $(PRINTER_JOB).pdf $(DELUXE_JOB).pdf
	$(RM) $(foreach ext,$(TEMP_EXTS),$(PRINTER_JOB).$(ext) $(DELUXE_JOB).$(ext))

FORCE:
