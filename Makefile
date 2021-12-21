NAME           := mod_security_crs
PACKAGER       := 'Dappre Infra Team <infra@dappre.com>'
VENDOR         := 'Dappre'
TARGET_DIR     := $(abspath target)
DISTS_DIR      := $(TARGET_DIR)/dists

RPM_NAME        = $(NAME)
RPM_VERSION     = $(VERSION)
RPM_RELEASE     = $(RELEASE)
RPM_PACKAGER    = $(PACKAGER)
RPM_VENDOR      = $(VENDOR)
RPM_TARGET_DIR  = $(TARGET_DIR)
RPM_DISTS_DIR   = $(DISTS_DIR)
RPM_DEBUGINFO   = 0

include rpmMake/Makefile

.PHONY: all check

all: rpm
check: rpm_check
