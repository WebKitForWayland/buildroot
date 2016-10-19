################################################################################
#
# xkeyboard-config
#
################################################################################

XKEYBOARD_CONFIG_VERSION = 2.18
XKEYBOARD_CONFIG_SOURCE = xkeyboard-config-$(XKEYBOARD_CONFIG_VERSION).tar.bz2
XKEYBOARD_CONFIG_SITE = http://www.x.org/releases/individual/data/xkeyboard-config
XKEYBOARD_CONFIG_LICENSE = MIT
XKEYBOARD_CONFIG_LICENSE_FILES = COPYING

XKEYBOARD_CONFIG_CONF_OPTS = --disable-runtime-deps
XKEYBOARD_CONFIG_DEPENDENCIES = host-gettext host-intltool

$(eval $(autotools-package))
