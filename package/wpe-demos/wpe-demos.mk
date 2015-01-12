################################################################################
#
# WPE
#
################################################################################

WPE_DEMOS_VERSION = 05012015
WPE_DEMOS_SITE = https://github.com/WebKitForWayland/demos/archive
WPE_DEMOS_SOURCE = demos-$(WPE_DEMOS_VERSION).tar.gz

define WPE_DEMOS_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/root/wpe-demos
	cp -r $(@D)/scripts/* $(TARGET_DIR)/root/wpe-demos
endef

$(eval $(generic-package))
