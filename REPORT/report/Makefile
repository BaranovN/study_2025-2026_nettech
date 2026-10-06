ifeq ($(OS),Windows_NT)
QUARTO := ..\..\scripts\quarto-with-tex.cmd
else
QUARTO := quarto
endif

QMD := $(firstword $(wildcard *.qmd))

.PHONY: all clean
all:
	@$(QUARTO) render $(QMD)

clean:
	-rm -rf .quarto _report
