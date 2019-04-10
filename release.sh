#!/usr/bin/env bash

set -euo pipefail

if [ "$(git show HEAD:VERSION)" != "$(git show HEAD~1:VERSION)" ] && [ "VERSION" = "$(git diff-tree --no-commit-id --name-only HEAD HEAD~1)" ]; then
    echo "make a release"
else
    echo "dry run"
fi
