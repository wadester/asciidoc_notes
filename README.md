Notes and Examples on AsciiDoc
==============================
Wade Hampton <wadehamptoniv@gmail.com>
0.2, 3/11/2016: Readme now AsciiDoc compliant

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

1. Simple, ASCII format that is human-readable, but also parsable.
   Not a difficult, rigid format like XML or HTML.  Easy to 
   learn, low barrier to entry.

2. Ability to easily use for documents such as README files
   and technical notes that can live with source code in the
   same repositories and be edited using the same tools.
   This makes cut/paste with the source or O/S very easy.

3. Support a simple set of open source tools compatible with all 
   platforms (especially Linux).  Widespread support is desired.

4. Support the conversion of the text documents into HTML pages,
   PDF documents, and other document types.  EPUB and MAN PAGES
   are a plus (not a hard core requirement).

Links:
------

* https://en.wikipedia.org/wiki/AsciiDoc (link=https://en.wikipedia.org/wiki/AsciiDoc[])
* http://www.methods.co.nz/asciidoc/index.htm (link=http://www.methods.co.nz/asciidoc/index.html[])

My Legacy Minidocs:
-------------------

Since the early 1990s, I have been creating "Minidocs" using a 
format similar to AsciiDoc and even created a simple formatter 
that converted from these to HTML (private project).  I wanted 
to get away from the custom format and used an open source format 
plus tool suite.  AsciiDoc fit my needs.  

Migration from the existing format to AsciiDoc is very simple:

1.  Fix the header to match the template by removing the 
    doc name, underlining doc title with ==, adding in document
    name and version like example above (include comma after the
    version to allow a2x to properly parse it).

2.  Fix the sections to use --- not === under titles (without
    this, a2x will fail).

3.  Add spaces around bullets/pre-formatted text.  

4.  Fix links to use the link: tag.  

5.  Use [start=1] to restart a list in the same block, for
    example after a paragraph.

6.  Convert numbered lists to use "." after them.  

This would be a sample paragraph.  To restart the list use 
the [start=1] tag.

[start=1]
1.  This is a new numbered list.
2.  And more list.
3.  Note, this will fail on GitHub....

Files:
------

This is spread out to support GitHub's conversion:

  docbook-xsl.css     from AsciiDoc -- downloaded

  Makefile            build example docs

  README.md           This file

  sample_manpage.txt  sample UNIX man page from AsciiDoc examples

  sample_minidoc.txt  simple article for code docs 

  template-man.txt    man template

  template.txt        doc template

