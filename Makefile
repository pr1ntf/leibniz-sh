#
# Makefile
#

.include <bsd.own.mk>

PREFIX?= /usr/local
MAN=
BINOWN= root
BINGRP= wheel
BINMODE= 0555
BINDIR=$(PREFIX)/bin
FILESDIR=$(PREFIX)/share/leibniz
RCDIR=$(PREFIX)/etc/rc.d
MKDIR=mkdir

PROG1=leibniz
PROG2=leibniz-reset

install:
	$(MKDIR) -p $(BINDIR)
	$(MKDIR) -p $(FILESDIR)
	$(INSTALL) -m $(BINMODE) $(PROG1) $(BINDIR)/
	$(INSTALL) -m $(BINMODE) $(PROG2) $(BINDIR)/
	$(INSTALL) share/* $(FILESDIR)/
	$(INSTALL) rc.d/* $(RCDIR)/

.include <bsd.prog.mk>
