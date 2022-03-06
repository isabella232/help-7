#!/bin/sh -e

# Update the custom dictionary file
# =============================================================================

# Usage: ./bin/update-dict.sh [-d|--dry-run]

# POSIX locale
LC_ALL=C
export LC_ALL

DICT_FILE="./.dict.txt"

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

match_words() {
    tmp_cat="$(mktemp)"
    ./bin/find.sh --mode dict-search --print0 |
        xargs -0 cat >"${tmp_cat}"
    while read -r word; do
        if grep -iF "${word}" "${tmp_cat}" >/dev/null; then
            echo "${word}"
        fi
    done <"${DICT_FILE}"
    rm -f "${tmp_cat}"
}

tmp_dict="$(mktemp)"

match_words | awk '{print tolower($0)}' | sort | uniq >"${tmp_dict}"

status_code=0

if test "${dry_run}" = 0; then
    cat <"${tmp_dict}" >"${DICT_FILE}"
else
    diff --color=always -u \
        --label "${DICT_FILE}.orig" "${DICT_FILE}" \
        --label "${DICT_FILE}" "${tmp_dict}" ||
        status_code=1
fi

rm "${tmp_dict}"

exit "${status_code}"
