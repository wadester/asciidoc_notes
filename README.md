Notes and Examples on AsciiDoc
==============================
Wade Hampton <wadehamptoniv@gmail.com>
0.3, 3/14/2016: Update for other AsciiDoc features

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
in ASCII that can live with the code, but also be converted into
clean HTML, PDF, EPUB, and MANPAGE documents.

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

5. Compatible with the parsers that GitHub uses to support the
   README.md files for repositories.
   

Links:
------

* https://en.wikipedia.org/wiki/AsciiDoc (link:https://en.wikipedia.org/wiki/AsciiDoc[])
* http://www.methods.co.nz/asciidoc/index.htm (link:http://www.methods.co.nz/asciidoc/index.html[])

My Legacy Minidocs:
-------------------

Since the early 1990s, I have been creating "Minidocs" using a 
format similar to AsciiDoc and even created a simple formatter 
that converted from these into HTML (private project, not OSS).  
I wanted eliminate this custom format and stop supporting the
legacy tool by using a similar, open source format plus tool suite.  
AsciiDoc fit my needs!  

Migration from the existing format to AsciiDoc is very simple:

1.  Fix the header to match the template by removing the 
    doc name, underlining doc title with ==, adding in document
    name and version like example above (include comma after the
    version to allow a2x to properly parse it).

2.  Fix the sections to use --- not === under titles (without
    this, a2x will fail).

3.  Add spaces around bullets/pre-formatted text.  

4.  Fix numbered and lettered lists to use N., not N)

5.  Fix links to use the link: tag.  

6.  Use [start=1] to restart a list in the same block, for
    example after a paragraph.

7.  Convert numbered lists to use "." after them.  

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

