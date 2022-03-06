#!/bin/sh -e

# Wrap the `cspell` command to provide configuration
# =============================================================================

# Usage: ./bin/cspell.sh

# https://github.com/streetsidesoftware/cspell

run_cspell() {
    ./bin/find.sh --print0 |
        xargs -0 cspell \
            --no-progress \
            --no-summary \
            --config .cspell.json
}

run_cspell
