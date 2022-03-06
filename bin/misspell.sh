#!/bin/sh -e

# Wrap the `misspell` command to ignore paths
# =============================================================================

# https://github.com/client9/misspell

# POSIX locale
LC_ALL=C
export LC_ALL

# ANSI formatting
RED='\x1b[31m'
RESET='\x1b[0m'

tmp_errors="$(mktemp)"
misspell -locale US . |
    grep -vE '.*/_static/[^:]+:' |
    grep -vE '.*/.venv/[^:]+:' |
    grep -vE '.*/searchindex.js:' |
        grep -vE 'sphinx/[^/]+/docs/[^:]+:' \
    >"${tmp_errors}"

if test -s "${tmp_errors}"; then
    sed -E "s,^(.*),  ${RED}\1${RESET}," <"${tmp_errors}"
    rm -f "${tmp_errors}"
    exit 1
fi
