################################################################################
#
# Nouveau DRM
#
################################################################################

NOUVEAU_DRM_VERSION = 4d0929aa231a0c2d2b66fa1f8ea1c8fa4d872501
NOUVEAU_DRM_SITE = $(call github,Gnurou,nouveau,$(NOUVEAU_DRM_VERSION))

NOUVEAU_DRM_DEPENDENCIES = linux

define NOUVEAU_DRM_BUILD_CMDS
    cd $(@D)/drm
    $(MAKE) $(LINUX_MAKE_FLAGS) -C $(LINUX_DIR) M=$(@D)/drm modules
endef

define NOUVEAU_DRM_INSTALL_TARGET_CMDS
    cd $(@D)/drm
    $(MAKE) $(LINUX_MAKE_FLAGS) -C $(LINUX_DIR) M=$(@D)/drm INSTALL_MOD_PATH=$(TARGET_DIR) modules_install
endef

$(eval $(generic-package))
