#!/bin/sh -e

# Remove unused assets from the Git repository
# =============================================================================

# Usage: ./bin/unused-assets.sh (--dry-run)

# An asset (e.g., a PNG file or a CSV file) is considered to be unused if no
# documents (i.e., Markdown files) in the GitBook space (i.e., the `docs`
# directory) reference it.

# POSIX locale
LC_ALL=C
export LC_ALL

# ANSI formatting
RED='\x1b[31m'
RESET='\x1b[0m'

ASSETS_DIR=docs/.gitbook/assets

tmp_errors="$(mktemp)"
./bin/find.sh -path "./${ASSETS_DIR}/*" -name '*.png' | tr '\0' '\n' |
    while read -r file; do
        basename="$(basename "${file}")"
        if ! grep -rsqF "assets/${basename}" --include='*.md' docs; then
            echo "${file}" >>"${tmp_errors}"
        fi
    done

status_code=0
if test -s "${tmp_errors}"; then
    if test "${1}" = '--dry-run'; then
        printf 'Unused assets:\n\n'
        sed -E "s,^(.*),  ${RED}\1${RESET}," <"${tmp_errors}"
        status_code=1
    else
        xargs git rm -f --ignore-unmatch -- <"${tmp_errors}"
        xargs rm -fv <"${tmp_errors}"
    fi
fi
rm -f "${tmp_errors}"
exit "${status_code}"
