# Symlink if LN=1; copy otherwise
ifeq ($(LN),1)
  COPY := ln -fsv
else
  COPY := cp -fv
endif

# Location of this file
ROOT := $(shell dirname "$(realpath $(lastword $(MAKEFILE_LIST)))")

# Destination dir
DEST ?= $(HOME)/bin

# All executables
TARGETS := $(wildcard */*)

# Phony targets
.PHONY: all dest $(TARGETS)

all: $(TARGETS)

$(TARGETS): dest
	$(COPY) "$(ROOT)"/$@ "$(DEST)"

dest:
	mkdir -pv "$(DEST)"
