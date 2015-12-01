################################################################################
#
# kmscube
#
################################################################################

KMSCUBE_VERSION = 5bccc25921d669f444d470d93a0f6dfdbd5a5a2d
KMSCUBE_SITE = https://github.com/Gnurou/kmscube.git

KMSCUBE_INSTALL_STAGING = YES
KMSCUBE_DEPENDENCIES = libdrm mesa3d

define KMSCUBE_RUN_AUTOGEN
    cd $(@D) && PATH=$(BR_PATH) ./autogen.sh
endef
KMSCUBE_PRE_CONFIGURE_HOOKS += KMSCUBE_RUN_AUTOGEN

$(eval $(autotools-package))
