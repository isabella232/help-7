#!/bin/sh -e

# Find files that should be renamed (for clarity and consistency)
# =============================================================================

# Usage: ./bin/good-filenames.sh ASSETS_DIR

# POSIX locale
LC_ALL=C
export LC_ALL

# ANSI formatting
RED='\x1b[31m'
RESET='\x1b[0m'

assets_dir="${1}"

# Markdown
# -----------------------------------------------------------------------------

# TODO: Implement checks for Markdown filenames

# Assets
# -----------------------------------------------------------------------------

ALLOWED_PREFIXES='^(cmp|aws|gcp|ms|slack|cloudhealth|feedback-hub|email|file)'
ALLOWED_CHARS='[a-z0-9.-]+'
DISALLOWED_STEMS='(--|[a-z][0-9]|image|shot|[0-9][^0-9.])'
DISALLOWED_STEMS_FILTER='s,(-s3|s3-|-office-365),,'
ALLOWED_SUFFIXES='\.(png|gif|csv)$'

check_filename() {
    file="${1}"
    basename="$(basename "${file}")"
    echo "${basename}" | grep -Eq "${ALLOWED_PREFIXES}" || echo 'prefix'
    echo "${basename}" | grep -Eq "${ALLOWED_CHARS}" || echo 'characters'
    echo "${basename}" |
        sed -E "${DISALLOWED_STEMS_FILTER}" |
        grep -Eqv "${DISALLOWED_STEMS}" || echo 'stem'
    echo "${basename}" | grep -Eq "${ALLOWED_SUFFIXES}" || echo 'suffix'
}

tmp_errors="$(mktemp)"
./bin/find.sh -path "./${assets_dir}/*" | tr '\0' '\n' |
    while read -r file; do
        check_filename "${file}" |
            sed -E 's,(.*),(\1),' |
            sed "s,^,${file} ," >>"${tmp_errors}"
    done

status_code=0
if test -s "${tmp_errors}"; then
    printf 'Disallowed filenames:\n\n'
    sed -E "s,^(.*),  ${RED}\1${RESET}," <"${tmp_errors}"
    status_code=1
fi
rm -f "${tmp_errors}"
exit "${status_code}"
