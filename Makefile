INSTALLDIR = /usr/local/sbin
CONFIGINSTALLDIR = /etc
CONFIG = bundle-kernel.conf
TOOLS = bundle-kernel \
		update-bootloader \
		gen-efikeys \
		insert-efikeys

INSTALLTARGET = $(addprefix $(INSTALLDIR)/,$(TOOLS)) \
				$(addprefix $(CONFIGINSTALLDIR)/,$(CONFIG))

$(INSTALLDIR)/%: %
	install -D $< $@

$(CONFIGINSTALLDIR)/%: %
	install -D $< $@

install: $(INSTALLTARGET)
