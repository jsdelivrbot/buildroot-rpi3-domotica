################################################################################
#
# libeu
#
################################################################################

LIBEU_VERSION = v0.1.0
LIBEU_SOURCE = libeu-$(LIBEU_VERSION).tar.gz
# Do not use the github helper here, the generated tarball is *NOT*
# the same as the one uploaded by upstream for the release.
LIBEU_SITE = https://github.com/jnevens/libeu/archive
LIBEU_LICENSE = LGPLv2+ with exception
LIBEU_LICENSE_FILES = COPYING
LIBEU_AUTORECONF = YES
LIBEU_INSTALL_STAGING = YES

$(eval $(autotools-package))
