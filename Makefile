###############################################################################
#  This file is part of PokeMMO Installer, is an program downloads and
#  installs the PokeMMO client to a user's home directory and provides
#  a launcher script for a convientient starting of the emulator.
#
#  The program is published under GPLv3 with OpenSSL exception,
#  the full license can be found in the LICENSE file.
###############################################################################

EXE = pokemmo-installer
SRCDIR = src
PREFIX = $(DESTDIR)/usr
BINDIR = $(PREFIX)/games
ICNDIR = $(PREFIX)/share/pixmaps
APPDIR = $(PREFIX)/share/applications

SCRIPT = pokemmo-installer.sh
ICON = pokemmo-installer.png
DESKTOP = pokemmo-installer.desktop

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
