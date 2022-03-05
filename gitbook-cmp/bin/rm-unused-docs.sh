#!/bin/sh -e

# Remove unused documents from the Git repository
# =============================================================================

# Usage: ./bin/unused-assets.sh (--dry-run)

# A document (i.e., a Markdown file) is considered unused if no other documents
# in the GitBook space (i.e., the `docs` directory) reference it.

# POSIX locale
LC_ALL=C
export LC_ALL

# ANSI formatting
RED='\x1b[31m'
RESET='\x1b[0m'

DOCS_DIR=docs

tmp_errors="$(mktemp)"
./bin/find.sh -path "./${DOCS_DIR}/*" -name '*.md' -not -name 'SUMMARY.md' |
    tr '\0' '\n' |
    while read -r file; do
        basename="$(basename "${file}")"
        if ! grep -rsqF "${basename}" --include='*.md' docs; then
            echo "${file}" >>"${tmp_errors}"
        fi
    done

status_code=0
if test -s "${tmp_errors}"; then
    if test "${1}" = '--dry-run'; then
        printf 'Unused documents:\n\n'
        sed -E "s,^(.*),  ${RED}\1${RESET}," <"${tmp_errors}"
        status_code=1
    else
        xargs git rm -f --ignore-unmatch -- <"${tmp_errors}"
        xargs rm -fv <"${tmp_errors}"
    fi
fi
rm -f "${tmp_errors}"
exit "${status_code}"
