#!/bin/sh -e

# Generate a HTML contact sheet listing all PNG assets used by the docs
# =============================================================================

# Usage: ./bin/gen-assets-list.sh ASSETS_DIR

# POSIX locale
LC_ALL=C
export LC_ALL

ASSETS_URL=https://raw.githubusercontent.com/doitintl/docs/main

assets_dir="${1}"

echo "<h1>Assets contact sheet</h1>"

cat <<EOF
<style>
img {
    max-width: 100%;
    height: auto;
}
</style>
EOF

./bin/find.sh --binary --mode img "./${assets_dir}" |
    while read -r file; do
        basename="$(basename "${file}")"
        asset_url="${ASSETS_URL}/${assets_dir}/${basename}"
        echo "<h2 id=\"${basename}\">"
        echo "  <a href=\"#${basename}\">${basename}</a>"
        echo "</h2>"
        echo "<img src=\"${asset_url}\"/>"
    done
