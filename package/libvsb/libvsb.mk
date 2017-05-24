################################################################################
#
# libvsb
#
################################################################################

LIBVSB_VERSION = v0.1.1
LIBVSB_SOURCE = libvsb-$(LIBVSB_VERSION).tar.gz
# Do not use the github helper here, the generated tarball is *NOT*
# the same as the one uploaded by upstream for the release.
LIBVSB_SITE = https://github.com/jnevens/libvsb/archive
# LIBVSB_DEPENDENCIES = libnfc openssl
LIBVSB_LICENSE = LGPLv2+ with exception
LIBVSB_LICENSE_FILES = COPYING
LIBVSB_AUTORECONF = YES
LIBVSB_CONF_OPTS = \
        --enable-vsbtools \
	--enable-examples
LIBVSB_INSTALL_STAGING = YES

$(eval $(autotools-package))