#!/bin/sh -e

if test ! -d "${ROOT}"; then
    printf "\e[31mERROR: Use \`make\` instead of scripts manually.\e[0m\n"
    exit 1
fi

do_lint() {
    rst-lint.py "${1}"
}

# The `FILENAME` set by `Makefile` if the user ran `make lint-last`
if test -n "${FILENAME}"; then
    # User is making the `lint-last` target, so only lint the last file
    # previously linted
    do_lint "${FILENAME}"
else
    # Lint all files
    find "${SRC}" -type f -name '*.rst' | while read -r file; do
        echo "${file}" >"${MAKE_LAST}"
        do_lint "${file}"
    done
fi
