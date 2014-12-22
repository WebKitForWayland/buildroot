################################################################################
#
# kmscube
#
################################################################################

KMSCUBE_VERSION = b4d79d5c4e27b6d37234a137bdefc6ff517d6ea4
KMSCUBE_SITE = git://gitorious.org/thierryreding/kmscube.git

KMSCUBE_INSTALL_STAGING = YES
KMSCUBE_DEPENDENCIES = libdrm mesa3d

define KMSCUBE_RUN_AUTOGEN
    cd $(@D) && PATH=$(BR_PATH) ./autogen.sh
endef
KMSCUBE_PRE_CONFIGURE_HOOKS += KMSCUBE_RUN_AUTOGEN

$(eval $(autotools-package))
