################################################################################
#
# python-mako
#
################################################################################

PYTHON_MAKO_VERSION = 1.0.1
PYTHON_MAKO_SOURCE = Mako-$(PYTHON_MAKO_VERSION).tar.gz
PYTHON_MAKO_SITE = http://pypi.python.org/packages/source/M/Mako
PYTHON_MAKO_LICENSE = MIT
PYTHON_MAKO_LICENSE_FILES = LICENSE
PYTHON_MAKO_SETUP_TYPE = setuptools
PYTHON_MAKO_DEPENDENCIES = host-python-markupsafe

$(eval $(host-python-package))
