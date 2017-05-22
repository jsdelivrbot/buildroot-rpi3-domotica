################################################################################
#
# domotica-engine
#
################################################################################

DOMOTICA_ENGINE_VERSION = v0.0.3
DOMOTICA_ENGINE_SOURCE = domotica-engine-$(DOMOTICA_ENGINE_VERSION).tar.gz
# Do not use the github helper here, the generated tarball is *NOT*
# the same as the one uploaded by upstream for the release.
DOMOTICA_ENGINE_SITE = https://github.com/jnevens/domotica-engine/archive
DOMOTICA_ENGINE_LICENSE = LGPLv2+ with exception
DOMOTICA_ENGINE_LICENSE_FILES = COPYING
DOMOTICA_ENGINE_AUTORECONF = YES
DOMOTICA_ENGINE_INSTALL_STAGING = YES
DOMOTICA_ENGINE_DEPENDENCIES = libvsb
DOMOTICA_ENGINE_DEPENDENCIES += libeu
DOMOTICA_ENGINE_DEPENDENCIES += libeltako

define DOMOTICA_ENGINE_INSTALL_INIT_SYSV
        $(INSTALL) -D -m 755 package/domotica-engine/S55domotica-engine \
		$(TARGET_DIR)/etc/init.d/S55domotica-engine
endef


$(eval $(autotools-package))
