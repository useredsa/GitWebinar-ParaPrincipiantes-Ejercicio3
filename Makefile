DOCNAME=doc
BDIR=out

pdf: | $(BDIR)
	lualatex --synctex=1 --halt-on-error --output-directory "$(BDIR)" "$(DOCNAME).tex"

$(BDIR):
	mkdir $(BDIR)

clean: 
	rm -f $(BDIR)/* *~
