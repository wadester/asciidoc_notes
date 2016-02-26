# asciidoc_notes
Notes and Examples on AsciiDoc
==============================
WWH
0.1, 2/26/2016: Created README.md

Summary:
--------
This repository contains notes and examples of AsciiDoc documents
that can be used for source code documentation.  This repo 
also contains some document templates.  The Makefile may be 
used to build/test making EPUB, PDF, PS, and man pages.

This contains test and example documents/scripts.

History:
--------

N/A

Why AsciiDoc:
-------------

AsciiDoc provides some excellent tools and capabilities to
convert plain text into multiple formats for a multitude of
purposes.  It excels as means of creating code documentation 
that can live with the code, but create nice HTML, PDF, and
MANPAGE docs.

My goals for a documentation solution:

1) Simple, ASCII format that is human-readable, but also parsable.
   Not a difficult, rigid format like XML or HTML.  Easy to 
   learn, low barrier to entry.

2) Ability to easily use for documents such as README files
   and technical notes that can live with source code in the
   same repositories and be edited using the same tools.
   This makes cut/paste with the source or O/S very easy.

3) Support a simple set of open source tools compatible with all 
   platforms (especially Linux).  Widespread support is desired.

4) Support the conversion of the text documents into HTML pages,
   PDF documents, and other document types.  EPUB and MAN PAGES
   are a plus (not a hard core requirement).

Links:
------

* link=https://en.wikipedia.org/wiki/AsciiDoc[]
* link=http://www.methods.co.nz/asciidoc/index.html[]

My Legacy Minidocs:
-------------------

Since the early 1990s, I have been creating "Minidocs" using a 
format similar to AsciiDoc and even created a simple formatter 
that converted from these to HTML (private project).  I wanted 
to get away from the custom format and used an open source format 
plus tool suite.  AsciiDoc fit my needs.  

Migration from the existing format to AsciiDoc is very simple:

1)  Fix the header to match the template
2)  Fix the sections to use --- not === under titles
3)  Add spaces around bullets/pre-formatted text
4)  Fix links to use the link: tag.  

Files:
------

  docbook-xsl.css     from AsciiDoc -- downloaded
  Makefile            build example docs
  README.md           This file
  sample_manpage.txt  sample UNIX man page from AsciiDoc examples
  sample_minidoc.txt  simple article for code docs 
  template-man.txt    man template
  template.txt        doc template

