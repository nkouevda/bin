# Location of this file
root := $(shell dirname "$(realpath $(lastword $(MAKEFILE_LIST)))")

prefix := $(HOME)
bindir := $(prefix)/bin

programs := $(wildcard $(root)/bin/git-*)
program_names := $(notdir $(programs))

# Symlink if LN=1; copy otherwise
ifeq ($(LN),1)
  install := ln -fs
else
  install := cp -f
endif

.PHONY: all bindir $(program_names)

all: $(program_names)

$(program_names): bindir
	$(install) "$(root)/bin/$@" "$(DESTDIR)$(bindir)"

bindir:
	mkdir -p "$(DESTDIR)$(bindir)"
