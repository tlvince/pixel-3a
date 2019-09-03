#!/usr/bin/env bash
set -euo pipefail

diff --color=auto --unified \
  build/packages.txt \
  <(tail -n +2 "packages.csv" | cut -d, -f1)
