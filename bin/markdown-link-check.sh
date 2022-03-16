#!/bin/sh -e

# Wrap the `markdown-link-check` command to provide configuration
# =============================================================================

# Usage: ./bin/markdown-link-check.sh

# https://github.com/tcort/markdown-link-check

fdfind --hidden --ignore-case --type f --print0 '\.md$$' |
    xargs -0 markdown-link-check \
        --config .markdown-link-check.json \
        --quiet \
        --retry
