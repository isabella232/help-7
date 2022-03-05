#!/bin/sh -e

# Wrap the `optipng` command to provide a `--dry-run` option
# =============================================================================

# Usage: ./bin/optipng.sh (--dry-run)

# POSIX locale
LC_ALL=C
export LC_ALL

# ANSI formatting
RED='\x1b[31m'
RESET='\x1b[0m'

ASSETS_DIR=docs/.gitbook/assets

OPTIPNG_LOCK=.docops/lock/optipng
mkdir -p "${OPTIPNG_LOCK}"

tmp_errors="$(mktemp)"
./bin/find.sh -name '*.png' | tr '\0' '\n' |
    while read -r file; do
        basename="$(basename "${file}")"
        sig_file="${OPTIPNG_LOCK}/${basename}.md5sum"
        if md5sum --check --quiet "${sig_file}" 2>/dev/null; then
            continue
        fi
        md5sum "${file}" >"${sig_file}"
        tmp_file="$(mktemp)"
        cp "${file}" "${tmp_file}"
        echo "Compressing: ${file}"
        optipng -quiet -strip all "${tmp_file}"
        if test "${1}" = '--dry-run'; then
            if ! cmp -s "${file}" "${tmp_file}"; then
                echo "${file}" >>"${tmp_errors}"
            fi
        else
            mv "${tmp_file}" "${file}"
        fi
    done

# Clean the cache
find "${OPTIPNG_LOCK}" -type f | while read -r file; do
    asset_basename="$(basename "${file}" | sed 's,\.md5sum$,,')"
    if test ! -f "${ASSETS_DIR}/${asset_basename}"; then
        rm "${file}"
    fi
done

status_code=0
if test -s "${tmp_errors}"; then
    printf 'Uncompressed images:\n\n'
    sed -E "s,^(.*),  ${RED}\1${RESET}," <"${tmp_errors}"
    status_code=1
fi
rm -f "${tmp_errors}"
exit "${status_code}"
