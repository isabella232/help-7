#!/bin/sh -e

# Wrap the `lintspaces` command to provide extended configuration
# =============================================================================

# Usage: ./bin/lintspaces.sh

# https://github.com/schorfES/node-lintspaces

run_lintspaces() {
    max_newlines="${1}"
    xargs -0 lintspaces \
        --editorconfig .editorconfig \
        --endofline LF \
        --guessindentation \
        --matchdotfiles \
        --maxnewlines "${max_newlines}" \
        --newline \
        --trailingspaces </dev/stdin
}

# Python files
./bin/find.sh \
    -name '*.py' |
    run_lintspaces 2

# All other files
./bin/find.sh \
    -exec grep -Iq . {} \; -not -name '*.py' |
    run_lintspaces 1
