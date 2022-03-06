#!/bin/sh -e

# Wrap the `shellcheck` command to provide configuration
# =============================================================================

# Usage: ./bin/shellcheck.sh

# https://github.com/koalaman/shellcheck

run_shellcheck() {
    ./bin/find.sh --mode sh --print0 |
        xargs -0 shellcheck
}

run_shellcheck
