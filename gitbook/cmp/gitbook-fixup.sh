#!/bin/sh -e

# GitBook keeps re-adding the same deleted assets. I have created this script
# so that I can remote the assets with a single command instead of having to
# clean things up manually every time.

sed -i 's, (1).png,.png,' docs/dashboards/aws-lens.md

sed -i 's,(<,(,' docs/dashboards/aws-lens.md
sed -i 's,>),),' docs/dashboards/aws-lens.md

sed -E -i 's,\(\.+,(..,' docs/dashboards/aws-lens.md

cd ./docs/.gitbook/assets

git_rm() {
    git rm -r --cached --ignore-unmatch "${1}"
}

git_rm 'cmp-aws-lens-widget-cost-by-region (1).png'
git_rm 'cmp-aws-lens-widget-cost-by-service (1).png'
git_rm 'cmp-aws-lens-widget-cost-by-top-aws-account (1).png'
git_rm 'cmp-aws-lens-widget-ebs-by-volume-type (1).png'
git_rm 'cmp-aws-lens-widget-s3-cost-by-bucket (1).png'
git_rm 'cmp-aws-lens-widget-s3-operation-type (1).png'
git_rm 'image.png'
