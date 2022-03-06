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
        xargs -0 grep --color=always -P "${pattern}"); then
        return 1
    else
        return 0
    fi
}

# Rules
# -----------------------------------------------------------------------------

# Prefer the use of `&times;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# ASCII transliteration of the multiplication symbol (ignoring upper case words
# which may indicate SQL syntax)
scan '[a-z0-9]+ \* [a-z0-9]+'

# Prefer the use of `&copy;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# ASCII transliteration of the copyright symbol
scan '\([cC]\)'

# Prefer the use of `&reg;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# ASCII transliteration of the registered trademark symbol
scan '\([rR]\)'

# Prefer the use of `&trade;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# ASCII transliteration of the trademark symbol
scan '\([tT][mM]\)'

# Prefer the use of `&check;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Heavy check mark (not a named entity)
scan '&#x2714;'

# Prefer the use of `&ndash;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Numerical ranges
scan "[^a-zA-Z0-9-\"'\`.][[:digit:]]+-[[:digit:]]+[^a-zA-Z0-9-\"'\`.]"

# Prefer the use of `&mdash;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# TODO: Decide whether (and when) to enforce spaces around an em dash

# Use of a single hyphen instead of an em dash
ALPHA_HYPHEN_ALPHA='[a-zA-Z]+ - [a-zA-Z]+'
ALPHA_HYPHEN_ALNUM='[a-zA-Z]+ - [[:alnum:]]+'
ALNUM_HYPHEN_ALPHA='[[:alnum:]]+ - [a-z-A-Z]+'
scan "(${ALPHA_HYPHEN_ALPHA}|${ALPHA_HYPHEN_ALNUM}|${ALNUM_HYPHEN_ALPHA})"

# ASCII transliteration of an em dash
SPACE_EM_DASH_SPACE=' -- '
ALNUM_EM_DASH_ALNUM='[[:alnum:]]+--[[:alnum:]]+'
scan "(${SPACE_EM_DASH_SPACE}|${ALNUM_EM_DASH_ALNUM})"

# Prefer the use of `&hellip;`
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# ASCII transliteration of a horizontal ellipsis
scan '\.\.\.'
