Notes and Examples on AsciiDoc
==============================
Wade Hampton <wadehamptoniv@gmail.com>
0.4.1, 4/6/2016: Update, cleanup

Summary:
--------

This repository contains notes and examples of AsciiDoc documents
that can be used for source code documentation, short engineering
notes, and similar project documentation.  AsciiDoc also allows
these to be used for end-user documentation including manual 
pages, articles, PDF documents, and EPUB books.

This repository also contains some document templates and 
sample documents.  The Makefile may be used to build/test making 
EPUB, PDF, PS, and man pages.  Once the AsciiDoc tools have been 
installed (see AsciiDoc links), just type "make" and the examples 
will be created.

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
   Not a difficult, rigid format like XML or HTML.

2. Easy to learn, low barrier for creation of effective communications.

3. Ability to easily use for documents such as README files
   and technical notes that can live with source code in the
   same repositories and be edited using the same tools.
   This makes cut/paste with the source or O/S very easy.

4. Support a simple set of open source tools compatible with all 
   platforms (especially Linux).  Widespread support is required.

5. Support the conversion of the text documents into HTML pages,
   PDF documents, and other document types.  EPUB and MAN PAGES
   are a plus (not a hard core requirement).

6. Mostly-compatible with the parsers that GitHub uses to support the
   README.md files for GIT repositories.  (This requires some
   testing and limits you to a subset of AsciiDoc.)

Links:
------

* https://en.wikipedia.org/wiki/AsciiDoc (link:https://en.wikipedia.org/wiki/AsciiDoc[])
* http://www.methods.co.nz/asciidoc/index.htm (link:http://www.methods.co.nz/asciidoc/index.html[])

(Note that the AsciiDoc links are converted by GitHub to have 
a [] at the end of them hence the inclusion of TWO copies
of the links above.)

AsciiDoc Minidocs:
------------------

The AsciiDoc Minidocs used herein are a standard for a simple
text document with minimal structure, but using AsciiDoc syntax
for titles, bullets, enumerated lists, etc.  These are AsciiDoc 
articles with a header and several sections:

1. Document header:  underlined with "===", followed by Author 
   and email then a version line (see top of document for example).

2. Top-Level Section:  Summary section with document summary
   followed by a History block with lines indented by 2 spaces
   (or N/A if history does not need to be tracked).

3. Document Sections:  The rest of the document.

4. KISS:  keep the document as simple as possible without a lot
   of strange syntax, back slashes, quoting, etc.  Limit the
   use of more-advanced AsciiDoc features.

See link:template.txt[] for an text template and see
link:template.html[] for the same converted to HTML.

These documents are typically simple, short, and limited to
a subset of the tools provided by AsciiDoc.  

GitHub Limitations:
-------------------

Furter limitations are required of README.md documents for GitHub 
as the parser does not support a lot of features.

1.  Labeled lists (Item:: text) do not work.

2.  Text like that at the end of this document must include blank lines.
 
3.  The link: tag does not work and any URL is expanded.

I am sure there are many other features.  When in doubt, follow KISS
and then test the result.  This section is TBD....

My Legacy Minidocs:
-------------------

Since the early 1990s, I have been creating "Minidocs" using a 
format similar to AsciiDoc and even created a simple formatter 
that converted from these into HTML (private project, not OSS).
Note, I also used this format for the Linux Kernel Document
sound/oss/Introduction when I wrote it in 1998.  

I wanted eliminate this custom format and stop supporting the
legacy tool by using a similar, open source format plus tool suite.  
AsciiDoc fit my needs and provides many additional features!  

Migration from the existing format to AsciiDoc is very simple:

1.  Fix the header to match the template by removing the 
    doc name, underlining doc title with ==, adding in document
    name and version like example above (include comma after the
    version to allow a2x to properly parse it).

2.  Fix the sections to use --- not === under titles (without
    this, a2x will fail).  Optionally add 2nd level sections
    underlined with ~~~.

3.  Add spaces around bullets/pre-formatted text.  May need to 
    fix bullets and paragraphs interspaced with numbered lists.

4.  Fix numbered and lettered lists to use N., not N) and to not
    mix top-level paragraphs in the middle of numbered lists.
    This may require some minor changes to document structure.

5.  Fix links to use the link: tag.  

6.  Use [start=1] to restart a list in the same block, for
    example after a paragraph.

7.  Fix any text that should be pre-formatted to be indented.

8.  Add sub-sections, labeled lists, bold, and other features
    as desired (but the goal is KISS).

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

