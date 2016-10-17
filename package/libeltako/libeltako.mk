################################################################################
#
# libfreefare
#
################################################################################

LIBELTAKO_VERSION = v0.0.1
LIBELTAKO_SOURCE = $(LIBELTAKO_VERSION).tar.gz
# Do not use the github helper here, the generated tarball is *NOT*
# the same as the one uploaded by upstream for the release.
# LIBELTAKO_SITE = https://github.com/jnevens/libeltako/archive/$(LIBELTAKO_VERSION).tar.gz
LIBELTAKO_SITE = https://github.com/jnevens/libeltako/archive
# LIBELTAKO_DEPENDENCIES = libnfc openssl
LIBELTAKO_LICENSE = LGPLv2+ with exception
LIBELTAKO_LICENSE_FILES = COPYING
LIBELTAKO_AUTORECONF = YES
#APACHE_CONF_OPTS = \
#        --sysconfdir=/etc/apache2 \
#        --with-apr=$(STAGING_DIR)/usr \

#ifeq ($(BR2_STATIC_LIBS),y)
# openssl needs zlib even if the libfreefare example itself doesn't
#LIBELTAKO_CONF_ENV += LIBS='-lz'
#endif

$(eval $(autotools-package))
