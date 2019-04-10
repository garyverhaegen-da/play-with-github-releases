#!/usr/bin/env bash

set -euo pipefail

mkdir -p out
cc -o out/hello src/main.c
