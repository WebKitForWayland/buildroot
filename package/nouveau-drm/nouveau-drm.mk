################################################################################
#
# Nouveau DRM
#
################################################################################

NOUVEAU_DRM_VERSION = c256f9450c613cd5075fc8c4a407686925041487
NOUVEAU_DRM_SITE = $(call github,Gnurou,nouveau,$(NOUVEAU_DRM_VERSION))

NOUVEAU_DRM_DEPENDENCIES = linux

define NOUVEAU_DRM_BUILD_CMDS
    cd $(@D)/drm
    $(MAKE) $(LINUX_MAKE_FLAGS) -C $(LINUX_DIR) M=$(@D)/drm/nouveau modules
endef

define NOUVEAU_DRM_INSTALL_TARGET_CMDS
    cd $(@D)/drm
    $(MAKE) $(LINUX_MAKE_FLAGS) -C $(LINUX_DIR) M=$(@D)/drm/nouveau INSTALL_MOD_PATH=$(TARGET_DIR) modules_install
endef

$(eval $(generic-package))
