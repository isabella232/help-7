#!/bin/sh -e

if test ! -d "${ROOT}"; then
    printf "\e[31mERROR: Use \`make\` instead of scripts manually.\e[0m\n"
    exit 1
fi

quiet() {
    grep -v "WARNING: Running pip as"
}

python3 -m venv "${VENV}"

# Upgrade Python build tools
"${VENV}"/bin/pip3 install --upgrade pip wheel 2>&1 | quiet

# Build dependencies
"${VENV}"/bin/pip3 install \
    -r requirements.txt \
    -r requirements-dev.txt 2>&1 | quiet
