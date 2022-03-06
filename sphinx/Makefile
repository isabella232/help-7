.EXPORT_ALL_VARIABLES:

.DEFAULT_GOAL = help

# ANSI codes
BLUE=[0m;34m
BOLD=[1m
DIM=[2m
ITALIC=[3m
RESET=[0m

ROOT       := $(patsubst %/,%,$(dir $(lastword $(MAKEFILE_LIST))))
BIN        := $(ROOT)/bin
VENV       := $(ROOT)/.venv
PATH       := $(ROOT)/bin:$(VENV)/bin:${PATH}
SRC        := $(ROOT)/src
DOCS       := $(ROOT)/docs
BUILD      := $(ROOT)/build
LINT_FAIL  := $(ROOT)/.lint-error.tmp
MAKE_LAST  := $(ROOT)/.last-file.tmp
SUBMAKE    := $(MAKE) --no-print-directory

define sh
printf "\e$(DIM)$$ %s\e$(RESET)\n" "${1}" | sed -E 's, -[^ ]+,,' && $1
endef

.PHONY: help # Print this help message and exit
help:
	@ printf "\e$(BOLD)Targets:\e$(RESET)\n\n"
	@ @grep -E '^.PHONY:' $(shell printf "%s\n" $(MAKEFILE_LIST) | tac) | \
		grep "#" | sed 's,.*: ,,' | \
		awk 'BEGIN {FS = " # "}; {printf "  make %s,%s\n", $$1, $$2}' | \
		column -t -s ',' | \
		sed -E 's,(.*make )([^ ]+)( .*),\1\x1b$(ITALIC)\2\x1b$(RESET)\3,'

$(VENV):
	@ venv.sh
venv: $(VENV)

.PHONY: install # Install the necessary software packages
install: venv

.PHONY: update # Re-run the `install` target
update:
	@ $(SUBMAKE) --always-make install

.PHONY: raw-html
lint-raw-html: install
	@ lint-raw-html.sh

.PHONY: lint-newlines
lint-newlines: install
	@ lint-newlines.sh

.PHONY: lint-chars
lint-chars: install
	@ lint-chars.sh

.PHONY: lint-gitbook
lint-gitbook: install
	@ lint-gitbook.sh

.PHONY: rst-lint
rst-lint: install
	@ rst-lint.sh

.PHONY: rstcheck
rstcheck: install
	@ rstcheck.sh

.PHONY: lint # Run all lint checks and try a docs build
lint: install
	@ $(call sh,$(SUBMAKE) lint-raw-html)
	@ $(call sh,$(SUBMAKE) lint-newlines)
	@ $(call sh,$(SUBMAKE) lint-chars)
	@ $(call sh,$(SUBMAKE) lint-gitbook)
	@ $(call sh,$(SUBMAKE) rst-lint)
	@ $(call sh,$(SUBMAKE) rstcheck)
	@ $(call sh,$(SUBMAKE) build)

.PHONY: lint-last # Re-run the `lint` target for the last file linted
lint-last:
	@ $(SUBMAKE) lint BUILD="$(shell cat $(MAKE_LAST))"

.PHONY: build # Build the docs
build: install
	@ build.sh

.PHONY: autobuild # Run a live rebuild process with live-reload browser preview
autobuild: install
	@ autobuild.sh

.PHONY: clean-docs # Reset the documentation build
clean-docs:
	@ rm -rf $(DOCS)

.PHONY: clean-venv # Reset the Python virtual environment
clean-venv:
	@ rm -rf $(VENV)

.PHONY: clean # Reset all generated files
clean: clean-venv clean-docs
