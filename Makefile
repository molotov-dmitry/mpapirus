TARGET			= mPapirus
INSTALL_DIR		= $(PREFIX)/usr/share/icons

FILES			= $(wildcard *.ttf)
INSTALL_FILES	= $(addprefix $(INSTALL_DIR)/$(TARGET)/,$(FILES))

.PHONY: all install uninstall

all:

install: $(INSTALL_DIR)/$(TARGET)

uninstall:
	rm -rf $(INSTALL_DIR)/$(TARGET)

### Files ======================================================================

$(INSTALL_DIR)/$(TARGET): uninstall
	mkdir -p $(INSTALL_DIR)
	cp -rf $(TARGET) $(INSTALL_DIR)/$(TARGET)

