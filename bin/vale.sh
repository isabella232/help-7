#!/bin/sh -e

# Wrap the `vale` command to provide configuration
# =============================================================================

# Usage: ./bin/vale.sh

# https://github.com/errata-ai/vale

# TODO: https://share.streamlit.io/jdkato/rules/main/app/main.py

run_vale() {
    ./bin/find.sh --mode vale --print0 |
        xargs -0 vale \
            --config .vale.ini \
            --minAlertLevel warning \
            --output=.vale/templates/cli.tmpl \
            --no-wrap
}

run_vale
