################################################################################
#
# python-lxmf
#
################################################################################

PYTHON_LXMF_VERSION = 0.4.2
PYTHON_LXMF_SITE_METHOD = git
PYTHON_LXMF_SITE = git@github.com:markqvist/lxmf.git
PYTHON_LXMF_LICENSE = GPL
PYTHON_LXMF_LICENSE_FILES = LICENSE
PYTHON_LXMF_INSTALL_STAGING = NO
PYTHON_LXMF_INSTALL_TARGET = YES
PYTHON_LXMF_SETUP_TYPE = setuptools


$(eval $(python-package))

