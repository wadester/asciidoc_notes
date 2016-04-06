#!/usr/bin/make
# Module:   Makefile
# Author:   Wade Hampton
# Date:     2/25/2016
# Notes:    
# 1)  This has been tested on Ubuntu 14.04 using the latest
#     versions of AsciiDoc and related tools.  Some of these
#     features do not work on CentOS 5 (for example EPUB output).
# 2)  The asciidoc command creates a simple HTML document by default,
#     and a2x creates one using a style sheet with history table 
#     plus table of contents (this is why two example HTML files
#     are created by this Makefile).
# 3)  Type make clean to remove the generated files.
#
all:
	$(MAKE) README
	$(MAKE) sample_minidoc_test
	$(MAKE) sample_manpage
	$(MAKE) template
	$(MAKE) template-man

README::
	asciidoc -o README-1.html README.md
	a2x -d article -f xhtml README.md

sample_minidoc_test::
	asciidoc -o sample_minidoc-1.html sample_minidoc.txt 
	a2x sample_minidoc.txt       # creates TOC too!
	a2x -d article -f xhtml sample_minidoc.txt
	a2x -d article -f pdf sample_minidoc.txt
	a2x -d article -f ps sample_minidoc.txt
	a2x -d article -f epub sample_minidoc.txt

sample_manpage::
	asciidoc 

template::
	asciidoc template.txt

template-man::
	a2x -f manpage template-man.txt 

sample_manpage::
	a2x -f manpage sample_manpage.txt	

clean:
	rm -f *.html *.ps *.pdf *.xml *.epub *.1

