# A Simple Makefile for LaTeX CV
# Author: Lester James V. Miranda
# E-mail: ljvmiranda@gmail.com

# Default variables which can be edited via the terminal
BUILDDIR = _build
COMPILER = pdflatex
PROJECT = main
BIBLIOGRAPHY = bibliography

latex:
	@echo "Building $(PROJECT) in $(BUILDDIR) directory using $(COMPILER)..."
	@echo "Creating $(BUILDDIR) directory..."
	@mkdir $(BUILDDIR)
	@mkdir $(BUILDDIR)/appendices
	@mkdir $(BUILDDIR)/chapters
	@$(COMPILER) -interaction=nonstopmode -halt-on-error -output-directory=$(BUILDDIR) $(PROJECT).tex
	@echo "First pass (via $(COMPILER)) done!"
	@cp $(BIBLIOGRAPHY).bib $(BUILDDIR)
	@biber --output_directory=$(BUILDDIR) $(PROJECT)
	@echo "Second pass (via bibtex) done!"
	@$(COMPILER) -interaction=nonstopmode -halt-on-error -output-directory=$(BUILDDIR) $(PROJECT).tex
	@echo "Third pass (via $(COMPILER)) done!"
	@$(COMPILER) -interaction=nonstopmode -halt-on-error -output-directory=$(BUILDDIR) $(PROJECT).tex
	@echo "Fourth pass (via $(COMPILER)) done!"
	@echo "Compilation done. Output file can be seen in $(BUILDDIR)"

clean:
	@rm -rf $(BUILDDIR)
	@echo "Removed $(BUILDDIR) directory"
