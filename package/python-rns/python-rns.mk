################################################################################
#
# python-rns
#
################################################################################

PYTHON_RNS_VERSION = 0.7.3
PYTHON_RNS_SITE_METHOD = git
PYTHON_RNS_SITE = git@github.com:markqvist/reticulum.git
PYTHON_RNS_LICENSE = GPL
PYTHON_RNS_LICENSE_FILES = LICENSE
PYTHON_RNS_INSTALL_STAGING = NO
PYTHON_RNS_INSTALL_TARGET = YES
PYTHON_RNS_SETUP_TYPE = setuptools


$(eval $(python-package))

