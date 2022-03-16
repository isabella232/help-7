#!/bin/sh -e

# Wrap the `optipng` command to provide a `--dry-run` option
# =============================================================================

# Usage: ./bin/optipng.sh [-d|--dry-run] DOCS_DIR ASSETS_DIR

# POSIX locale
LC_ALL=C
export LC_ALL

# ANSI formatting
RED='\x1b[31m'
RESET='\x1b[0m'

dry_run=0
for arg in "$@"; do
    case "${arg}" in
    -d | --dry-run)
        dry_run=1
        shift
        ;;
    -*)
        echo "ERROR: Unknown option: ${arg}"
        exit 1
        ;;
    *) ;;
    esac
done

docs_dir="${1}"
assets_dir="${2}"

OPTIPNG_LOCK_DIR=.docops/lock/optipng

docs_lock_dir="${OPTIPNG_LOCK_DIR}/${docs_dir}"
mkdir -p "${docs_lock_dir}"

tmp_errors="$(mktemp)"
(cd "${docs_dir}/${assets_dir}" && fdfind --no-ignore '\.png$') |
    while read -r file; do
        basename="$(basename "${file}")"
        sig_file="${docs_lock_dir}/${basename}.md5sum"
        if md5sum --check --quiet "${sig_file}" 2>/dev/null; then
            continue
        fi
        full_filename="${docs_dir}/${assets_dir}/${file}"
        if test "${dry_run}" = 0; then
            echo "Compressing: ${full_filename}"
            optipng -quiet -strip all "${full_filename}"
            md5sum "${full_filename}" >"${sig_file}"
        else
            echo "${full_filename}" >>"${tmp_errors}"
        fi
    done

# Clean the cache
find "${docs_lock_dir}" -type f | while read -r file; do
    asset_basename="$(basename "${file}" | sed 's,\.md5sum$,,')"
    if test ! -f "./${docs_dir}/${assets_dir}/${asset_basename}"; then
        rm -v "${file}"
    fi
done

status_code=0
if test -s "${tmp_errors}"; then
    printf 'Missing or stale lock file for:\n\n'
    sed -E "s,^(.*),  ${RED}\1${RESET}," <"${tmp_errors}"
    status_code=1
fi
rm -f "${tmp_errors}"
exit "${status_code}"
