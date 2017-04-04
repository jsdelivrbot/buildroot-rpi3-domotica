################################################################################
#
# libbus
#
################################################################################

LIBBUS_VERSION = v0.0.3
LIBBUS_SOURCE = libbus-$(LIBBUS_VERSION).tar.gz
# Do not use the github helper here, the generated tarball is *NOT*
# the same as the one uploaded by upstream for the release.
LIBBUS_SITE = https://github.com/jnevens/libbus/archive
LIBBUS_LICENSE = LGPLv2+ with exception
LIBBUS_LICENSE_FILES = COPYING
LIBBUS_AUTORECONF = YES
LIBBUS_INSTALL_STAGING = YES

$(eval $(autotools-package))
