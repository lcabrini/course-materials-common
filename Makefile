MKDIR = mkdir -p
INSTALL_DIR = /usr/local/training-materials-common
SUBDIRS = theme

install: $(INSTALL_DIR) $(INSTALL_DIR)/$(SUBDIRS)
	for d in $(SUBDIRS); do \
	    cp $$d/* $(INSTALL_DIR)/$$d; \
	done
	
$(INSTALL_DIR):
	$(MKDIR) $(INSTALL_DIR)

$(INSTALL_DIR)/$(SUBDIRS):
	for d in $(SUBDIRS); do \
	    test -d $(INSTALL_DIR)/$$d || $(MKDIR) $(INSTALL_DIR)/$$d; \
	done

