#!/bin/sh -e

if test ! -d "${ROOT}"; then
    printf "\e[31mERROR: Use \`make\` instead of scripts manually.\e[0m\n"
    exit 1
fi

tmp_file=$(mktemp)

find "${SRC}" -type f -name '*.rst' | while read -r file; do
    echo "${file}" >"${MAKE_LAST}"
    grep -l "{% " "${file}" >>"${tmp_file}" || true
done

if test -s "${tmp_file}"; then
    cat "${tmp_file}"
    false
fi
