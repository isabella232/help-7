# =============================================================================
# Project build
# =============================================================================

.EXPORT_ALL_VARIABLES:

# POSIX locale
LC_ALL = C

# ANSI formatting
BOLD = [1m
RED = [31m
RESET = [0m

BIN_DIR = ./bin

# $(call print-target)
define print-target
@ printf "\e$(BOLD)make %s\e$(RESET)\n" "$$(echo $@ | sed 's,.stamp,,')"
endef

# Primary targets
# =============================================================================

.DEFAULT_GOAL = help

.PHONY: help
help:
	@ printf '%s\n\n' "Usage: make [target]"
	@ printf '%s\n\n' 'Available targets:'
	@ grep -E '^.PHONY: [a-z]+ #' Makefile | \
		sed -E 's,^.PHONY: ([a-z]+) # (.*),\1#\2,' | \
		column -s '#' -t | \
		sed -E "s,^([a-z]+),  \1,"

.PHONY: check # Run all lint checks
check:

.PHONY: check-parallel
check-parallel: # Run all lint checks in parallel
	@ $(MAKE) --no-print-directory -j --output-sync=target check

.PHONY: build # Build the Docusaurus website
build:

.PHONY: telemetry # Generate telemetry data
telemetry:

# TODO: Evaluate how many of these rules are still needed
.PHONY: clean # Remove build artifacts
clean:

# Primary prerequisites
# =============================================================================

# check
# -----------------------------------------------------------------------------

only-ascii:
check: only-ascii

ec:
check: ec

lintspaces:
check: lintspaces

prettier:
check: prettier

yamllint:
check: yamllint

shellcheck:
check: shellcheck

shfmt:
check: shfmt

good-filenames:
check: good-filenames

rm-unused-docs-dry:
check: rm-unused-docs-dry

markdownlint:
check: markdownlint

html-entities:
check: html-entities

inline-html:
check: inline-html

update-vocab-dry:
check: update-vocab-dry

cspell:
check: cspell

misspell:
check: misspell

textlint-dry:
check: textlint-dry

vale:
check: vale

markdown-link-check:
check: markdown-link-check

brok:
check: brok

rm-unused-assets-dry:
check: rm-unused-assets-dry

fdupes:
check: fdupes

optipng-dry:
check: optipng-dry

# build
# -----------------------------------------------------------------------------

build: website
check: website
.PHONY: website
website:
	$(call print-target)
	@ $(MAKE) -C website build

# telemetry
# -----------------------------------------------------------------------------

telemetry: telemetry-index

telemetry-index: telemetry-assets

# check
# -----------------------------------------------------------------------------

clean: git-clean

# Pattern targets
# =============================================================================

%:
	$(call print-target)
	$(BIN_DIR)/$@.sh

%-dry:
	$(call print-target)
	$(BIN_DIR)/$*.sh --dry-run

# Disabled targets
# =============================================================================

# TODO: Check json keys ordering

# proselintjs
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# https://github.com/sapegin/proselint

# PROSELINTJS = proselintjs --config .proselintrc.json
# FIND_PROSELINTJS =

# all: proselintjs
# .PHONY: proselintjs
# proselintjs:
# 	$(call print-target)
# 	$(FIND) --print0 | xargs -0 $(PROSELINTJS) || true

# imgdup2go
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# IMGDUP2GO := $(BIN_DIR)/imgdup2go.sh

# all: imgdup2go
# .PHONY: imgdup2go
# imgdup2go:
# 	$(call print-target)
# 	$(IMGDUP2GO) $(GITBOOK_CMP_DIR)/$(GITBOOK_ASSETS_DIR)
# 	$(IMGDUP2GO) $(GITBOOK_SUPERQUERY_DIR)/$(GITBOOK_ASSETS_DIR)

# vale.json
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# https://github.com/errata-ai/vale

# TODO: Wrap this into the `vale.sh` script

# VALE_JSON = vale \
# 	--config .vale.ini \
# 	--minAlertLevel suggestion \
# 	--output=JSON \
# 	--no-wrap \
# 	--no-exit

# VALE_JSON_RULE = $(FIND) --mode vale --print0 | xargs -0 $(VALE_JSON) >$@

# $(GH_PAGES_DIR)/index.html: $(GH_PAGES_DIR)/vale.json
# .PHONY: $(GH_PAGES_DIR)/vale.json
# $(GH_PAGES_DIR)/vale.json:
# 	$(call print-target)
# 	@ mkdir -p $(dir $@)
# 	$(VALE_JSON_RULE)
# 	prettier --loglevel silent --write $@
