#!/bin/sh -e

if test ! -d "${ROOT}"; then
    printf "\e[31mERROR: Use \`make lint-rstcheck\` "
    printf "instead of running this script manually.\e[0m\n"
    exit 1
fi

do_lint() {
    tmp_file=$(mktemp)
    rst-lint --level info "${1}" |
        grep -v 'is not referenced' |
        grep -v 'No directive entry for "toctree"' |
        grep -v 'No role entry for "doc"' |
        grep -v 'No role entry for "download"' |
        grep -v 'No role entry for "ref"' |
        grep -v 'Trying "doc" as canonical role name' |
        grep -v 'Trying "doc" as download role name' |
        grep -v 'Trying "download" as canonical role name' |
        grep -v 'Trying "ref" as canonical role name' |
        grep -v 'Trying "toctree" as canonical directive name' |
        grep -v 'Unknown directive type "toctree"' |
        grep -v 'Unknown interpreted text role "doc"' |
        grep -v 'Unknown interpreted text role "download"' |
        grep -v 'Unknown interpreted text role "ref"' \
            >"${tmp_file}"
    if test -s "${tmp_file}"; then
        color-filename.py <"${tmp_file}" | sed '.* ,,' | "${1}"
        rstcheck.py <"${tmp_file}"
        false
    fi
}

find "${SRC}" -type f -name '*.rst' | while read -r file; do
    if ! do_lint "${file}"; then
        echo "${file}" >"${MAKE_LAST}"
        touch "${LINT_FAIL}"
    fi
done
