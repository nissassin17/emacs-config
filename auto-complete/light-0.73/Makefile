# 'make elc' byte-compiles the main emacs lisp files
# 'make info' formats the documentation files, producing info files
# 'make dvi' formats the documentation files, producing dvi files
# 'make all' does both of these tasks				
#
# 'make infodvi' formats the documentation files, producing info and dvi files
EMACS=emacs
RM = rm -f
EMACSFLAGS = -batch -f batch-byte-compile
SOURCES = light.el
#
TEXI2HTML=texi2html
PERL=perl
#
TEXI2DVI=texi2dvi
MAKEINFO=makeinfo
TEXI2FLAG=-menu -split_chapter 
INFODIR=/usr/local/info

all: elc info dvi

elc:
	$(EMACS) $(EMACSFLAGS) $(SOURCES)

info: texinfo

infodvi: info dvi

texinfo: 
	$(MAKEINFO) light.texi

dv:
	$(TEXI2DVI) light.texi

dvi: dv dviclean

html:
	$(PERL) $(TEXI2HTML) $(TEXI2FLAG) light.texi

install:
	cp light.info $(INFODIR)

dviclean:
	$(RM) *.aux *.cp *.fn *.ky *.log *.pg *.toc *.tp *.vr *.fns *.cps *.vrs

clean: distclean

distclean:
	$(RM) *.aux *.cp *.fn *.ky *.log *.pg *.toc *.tp *.vr *.fns *.cps *.vrs *.info *.dvi *.elc
