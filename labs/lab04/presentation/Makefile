ifeq ($(OS),Windows_NT)
QUARTO := ..\..\..\scripts\quarto-with-tex.cmd
else
QUARTO := quarto
endif

QMD := $(firstword $(wildcard *.qmd))
OUTPUTS := $(patsubst %.qmd,_output/%.pdf,$(QMD)) $(patsubst %.qmd,_output/%.html,$(QMD))
SOURCES := $(QMD) _quarto.yml $(wildcard image/*) $(wildcard bib/*) $(wildcard _resources/tex/*) $(wildcard _resources/image/*)

.PHONY: all clean cleanall

all: $(OUTPUTS)

$(OUTPUTS) &: $(SOURCES)
	@$(QUARTO) render

clean:
	-rm -rf _output

cleanall: clean
	-rm -rf .quarto