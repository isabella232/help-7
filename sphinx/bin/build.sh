#!/bin/sh -e

if test ! -d "${ROOT}"; then
    printf "\e[31mERROR: Use \`make\` instead of scripts manually.\e[0m\n"
    exit 1
fi

"${VENV}"/bin/sphinx-build -b html "${SRC}" "${DOCS}"
