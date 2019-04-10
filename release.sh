#!/usr/bin/env bash

set -euo pipefail

if [ "$(git show HEAD:VERSION)" != "$(git show HEAD~1:VERSION)" ] && [ "VERSION" = "$(git diff-tree --no-commit-id --name-only HEAD HEAD~1)" ]; then
    echo "make a release"
    echo '##vso[task.setvariable variable=has_released]true'
    echo "##vso[task.setvariable variable=release_tag]$(cat VERSION)"
else
    echo "dry run"
fi
