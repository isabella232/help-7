#!/bin/sh -e

# Remove unused assets from the Git repository
# =============================================================================

# Usage: ./bin/rm-unused-assets.sh [--dry-run] DOCS_DIR ASSETS_DIR

# An asset (e.g., a PNG file or a CSV file) is considered to be unused if no
# documents (i.e., Markdown files) in the GitBook space (i.e., the `docs`
# directory) reference it.

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

tmp_errors="$(mktemp)"
./bin/find.sh -path "./${docs_dir}/${assets_dir}/*" -name '*.png' |
    tr '\0' '\n' |
    while read -r file; do
        pattern="assets/$(basename "${file}")"
        if ! grep -rsqF "${pattern}" --include='*.md' "${docs_dir}"; then
            echo "${file}" >>"${tmp_errors}"
        fi
    done

status_code=0
if test -s "${tmp_errors}"; then
    if test "${dry_run}" = 0; then
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
