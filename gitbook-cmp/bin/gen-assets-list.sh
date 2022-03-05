#!/bin/sh -e

# Generate a HTML contact sheet listing all PNG assets used by the docs
# =============================================================================

# Usage: ./bin/gen-assets-list.sh

# POSIX locale
LC_ALL=C
export LC_ALL

ASSETS_DIR=docs/.gitbook/assets
ASSETS_URL=https://raw.githubusercontent.com/doitintl/docs-gitbook-cmp/main

echo "<h1>Assets contact sheet</h1>"

cat <<EOF
<style>
img {
    max-width: 100%;
    height: auto;
}
</style>
EOF

./bin/find.sh -path "./${ASSETS_DIR}/*" -name '*.png' | tr '\0' '\n' |
    while read -r file; do
        basename="$(basename "${file}")"
        asset_url="${ASSETS_URL}/docs/.gitbook/assets/${basename}"
        echo "<h2 id=\"${basename}\">"
        echo "  <a href=\"#${basename}\">${basename}</a>"
        echo "</h2>"
        echo "<img src=\"${asset_url}\"/>"
    done
