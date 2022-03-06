#!/bin/sh -e

# Find inline HTML that should be Markdown
# =============================================================================

# Usage: ./bin/inline-html.sh

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

scan_tags() {
    name="${1}"
    scan "(<${name}>|<${name} ([^>]*>)?|</${name}>)"
}

scan_elements() {
    for name in "${@}"; do
        scan_tags "${name}"
    done
}

scan_elements 'p' 'a' 'i' 'em' 'b' 'strong' 'img' 'code' 'pre'
