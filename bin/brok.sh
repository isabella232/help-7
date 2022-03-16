#!/bin/sh -e

# Wrap the `brok` command to provide configuration
# =============================================================================

# Usage: ./bin/brok.sh

# https://github.com/smallhadroncollider/brok

# TODO: Keep cache file in Git to speed up CICD

fdfind --hidden --ignore-case --type f --print0 '\.md$$' |
    xargs -0 brok --check-certs --only-failures
