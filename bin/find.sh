#!/bin/sh -e

# Print a null separated list of all versionable files
# =============================================================================

# Usage: ./bin/find.sh [OPTIONS...]

# POSIX locale
LC_ALL=C
export LC_ALL

# TODO: Prebake custom configurations into this script with the use of options

# TODO: Pipe to `xargs` here script and take the final command to run as
# positional arguments to this script

find . -type f \
    -not -path './.git/*' \
    -not -exec git check-ignore --quiet {} \; \
    "${@}" \
    -print0 | sort -zn
