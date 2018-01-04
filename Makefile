###############################################################################
#  This file is part of PokeMMO, is an emulator of several popular
#  console games with additional features and multiplayer capabilities.
#
#  For license and copyright information, it can be found in the LEGAL file.
###############################################################################

EXE = pokemmo
SRCDIR = src
PREFIX = $(DESTDIR)/usr
BINDIR = $(PREFIX)/games
ICNDIR = $(PREFIX)/share/pixmaps
APPDIR = $(PREFIX)/share/applications

SCRIPT = pokemmo.sh
ICON = pokemmo.png
DESKTOP = pokemmo.desktop

CP = cp -f
RM = rm -rf
MD = mkdir -p
ECHO = echo
CHMOD = chmod 755

all:
	@$(CP) "$(SRCDIR)/$(SCRIPT)" "$(EXE)"
	@$(CHMOD) "$(EXE)"
	@$(ECHO) "Created executable script successfully"

clean:
	@$(RM) $(EXE)
	@$(ECHO) "Removed script executable successfully"

install: all
	@$(MD) "$(BINDIR)"
	@$(CP) "$(EXE)" "$(BINDIR)"
	@$(MD) "$(ICNDIR)"
	@$(CP) "$(SRCDIR)/$(ICON)" "$(ICNDIR)"
	@$(MD) "$(APPDIR)"
	@$(CP) "$(SRCDIR)/$(DESKTOP)" "$(APPDIR)"
	@$(ECHO) "Installed the files successfully"

uninstall: clean
	@$(RM) "$(BINDIR)/$(EXE)"
	@$(RM) "$(ICNDIR)/$(ICON)"
	@$(RM) "$(APPDIR)/$(DESKTOP)"
	@$(ECHO) "Successfully removed"

.PHONY: all clean install uninstall
