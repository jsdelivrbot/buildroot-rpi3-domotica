################################################################################
#
# libfreefare
#
################################################################################

LIBELTAKO_VERSION = v0.2.0
LIBELTAKO_SOURCE = libeltako-$(LIBELTAKO_VERSION).tar.gz
# Do not use the github helper here, the generated tarball is *NOT*
# the same as the one uploaded by upstream for the release.
# LIBELTAKO_SITE = https://github.com/jnevens/libeltako/archive/$(LIBELTAKO_VERSION).tar.gz
LIBELTAKO_SITE = https://github.com/jnevens/libeltako/archive
LIBELTAKO_LICENSE = LGPLv2+ with exception
LIBELTAKO_LICENSE_FILES = COPYING
LIBELTAKO_AUTORECONF = YES

define LIBELTAKO_INSTALL_INIT_SYSV
	$(INSTALL) -D -m 755 package/libeltako/S45eltakod $(TARGET_DIR)/etc/init.d/S45eltakod
endef

$(eval $(autotools-package))
