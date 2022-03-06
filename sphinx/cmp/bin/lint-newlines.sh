#!/bin/sh -e

if test ! -d "${ROOT}"; then
    printf "\e[31mERROR: Use \`make\` instead of scripts manually.\e[0m\n"
    exit 1
fi

find "${SRC}" -type f -name '*.rst' | while read -r file; do
    echo "${file}" >"${MAKE_LAST}"
    lint-newlines.py "${file}"
done
