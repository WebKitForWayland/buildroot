################################################################################
#
# gst-vaapi
#
################################################################################

GST_VAAPI_VERSION = 0.5.10
GST_VAAPI_SOURCE = gstreamer-vaapi-$(GST_VAAPI_VERSION).tar.bz2
GST_VAAPI_SITE = http://www.freedesktop.org/software/vaapi/releases/gstreamer-vaapi/

GST_VAAPI_LICENSE = LGPLv2.1
GST_VAAPI_LICENSE_FILES = COPYING.LIB

GST_VAAPI_CONF_OPTS = --disable-builtin-libvpx
GST_VAAPI_DEPENDENCIES = gstreamer1 gst1-plugins-base libva libva-intel-driver

$(eval $(autotools-package))
