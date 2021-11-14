TARGET			= mPapirus
TARGET_DARK		= mPapirus-Dark
INSTALL_DIR		= $(PREFIX)/usr/share/icons

.PHONY: all install uninstall

all:

install: $(INSTALL_DIR)/$(TARGET) $(INSTALL_DIR)/$(TARGET_DARK)

uninstall:
	rm -rf $(INSTALL_DIR)/$(TARGET)
	rm -rf $(INSTALL_DIR)/$(TARGET_DARK)

### Files ======================================================================

$(INSTALL_DIR)/$(TARGET):
	mkdir -p $(INSTALL_DIR)
	cp -rf $(TARGET) $(INSTALL_DIR)/$(TARGET)
	
$(INSTALL_DIR)/$(TARGET_DARK):
	mkdir -p $(INSTALL_DIR)
	cp -rf $(TARGET_DARK) $(INSTALL_DIR)/$(TARGET_DARK)

