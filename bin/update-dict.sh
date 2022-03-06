#!/bin/sh -e

# Update the custom dictionary file
# =============================================================================

# Usage: ./bin/update-dict.sh (--dry-run)

# POSIX locale
LC_ALL=C
export LC_ALL

DICT_FILE="./.dict.txt"

match_words() {
    tmp_cat="$(mktemp)"
    dict_basename="$(basename "${DICT_FILE}")"
    ./bin/find.sh -exec grep -Iq . {} \; -not -name "${dict_basename}" |
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

if test "${1}" = '--dry-run'; then
    diff --color=always -u \
        --label "${DICT_FILE}.orig" "${DICT_FILE}" \
        --label "${DICT_FILE}" "${tmp_dict}" ||
        status_code=1
else
    cat <"${tmp_dict}" >"${DICT_FILE}"
fi

rm "${tmp_dict}"

exit "${status_code}"
