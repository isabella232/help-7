#!/bin/sh -e

# Wrap the `shfmt` command to provide configuration
# =============================================================================

# Usage: ./bin/shfmt.sh

# https://github.com/mvdan/sh

run_shfmt() {
    shfmt -d -p -i 4 .
}

run_shfmt
