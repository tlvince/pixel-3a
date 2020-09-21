#!/usr/bin/env bash
set -euo pipefail

diff --color=always --unified \
  <(tail -n +2 "packages.csv" | cut -d, -f1) \
  build/packages.txt |
  less
