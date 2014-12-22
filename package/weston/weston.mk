################################################################################
#
# weston
#
################################################################################

WESTON_VERSION = 920a0331cf5340942a9d39ac3b48ce207f7970b6
WESTON_SITE = $(call github,zdobersek,weston,$(WESTON_VERSION))
WESTON_LICENSE = MIT
WESTON_LICENSE_FILES = COPYING

WESTON_AUTORECONF = YES
WESTON_INSTALL_STAGING = YES
WESTON_DEPENDENCIES = host-pkgconf wayland libxkbcommon pixman libpng \
	jpeg mtdev udev cairo

WESTON_CONF_OPTS = \
	--with-dtddir=$(STAGING_DIR)/usr/share/wayland \
	--disable-simple-egl-clients \
	--disable-xwayland \
	--disable-x11-compositor \
	--disable-wayland-compositor \
	--disable-headless-compositor \
	--disable-weston-launch \
	--disable-colord

ifeq ($(BR2_PACKAGE_WESTON_EGL),y)
WESTON_CONF_OPTS += --enable-egl
else
WESTON_CONF_OPTS += --disable-egl
endif

ifeq ($(BR2_PACKAGE_LIBINPUT),y)
WESTON_DEPENDENCIES += libinput
WESTON_CONF_OPTS += --enable-libinput-backend
else
WESTON_CONF_OPTS += --disable-libinput-backend
endif

ifeq ($(BR2_PACKAGE_LIBUNWIND),y)
WESTON_DEPENDENCIES += libunwind
else
WESTON_CONF_OPTS += --disable-libunwind
endif

ifeq ($(BR2_PACKAGE_WESTON_FBDEV),y)
WESTON_CONF_OPTS += --enable-fbdev-compositor
else
WESTON_CONF_OPTS += --disable-fbdev-compositor
endif

ifeq ($(BR2_PACKAGE_WESTON_DRM),y)
WESTON_CONF_OPTS += --enable-drm-compositor
else
WESTON_CONF_OPTS += --disable-drm-compositor
endif

ifeq ($(BR2_PACKAGE_WESTON_RPI),y)
WESTON_DEPENDENCIES += rpi-userland
WESTON_CONF_OPTS += --enable-rpi-compositor \
	--disable-resize-optimization \
	--disable-setuid-install \
	--disable-xwayland-test \
	--disable-simple-egl-clients \
	WESTON_NATIVE_BACKEND=rpi-backend.so
else
WESTON_CONF_OPTS += --disable-rpi-compositor
endif # BR2_PACKAGE_WESTON_RPI

$(eval $(autotools-package))
