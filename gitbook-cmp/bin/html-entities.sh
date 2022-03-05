#!/bin/sh -e

# Find strings that should be encoded as HTML entities
# =============================================================================

# Usage: ./bin/html-entities.sh

# POSIX locale
LC_ALL=C
export LC_ALL

scan() {
    pattern="${1}"
    if (./bin/find.sh -name '*.md' |
        xargs -0 grep --color=always -Pi "${pattern}"); then
        return 1
    else
        return 0
    fi
}

# Rules
# -----------------------------------------------------------------------------

# Prefer the use of `&times;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# ASCII transliteration of the multiplication symbol
scan '[[:alnum:]] \* [[:alnum:]]'

# Prefer the use of `&copy;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# ASCII transliteration of the copyright symbol
scan '\(c\)'

# Prefer the use of `&reg;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# ASCII transliteration of the registered trademark symbol
scan '\(r\)'

# Prefer the use of `&trade;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# ASCII transliteration of the trademark symbol
scan '\(tm\)'

# Prefer the use of `&check;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Heavy check mark (not a named entity)
scan '&#x2714;'

# Prefer the use of `&ndash;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Numerical ranges
scan "[^a-z0-9-\"'\`.][[:digit:]]+-[[:digit:]]+[^a-z0-9-\"'\`.]"

# Prefer the use of `&mdash;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# TODO: Decide whether (and when) to enforce spaces around an em dash

# Use of a single hyphen instead of an em dash
scan '[a-z] - [a-z]'
scan '[a-z] - [[:alnum:]]'
scan '[[:alnum:]] - [a-z]'

# ASCII transliteration of an em dash
scan ' -- '
scan '[[:alnum:]]--[[:alnum:]]'

# Prefer the use of `&hellip;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# ASCII transliteration of a horizontal ellipsis
scan '\.\.\.'
