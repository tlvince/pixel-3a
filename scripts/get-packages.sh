#!/usr/bin/env bash
set -euo pipefail

out="build/de-bloat.txt"
rm -rf "$out"

tags="${1:-"bloat|google|useless"}"

tail -n +2 "packages.csv" | \
  grep -E ",($tags)," | \
  cut -d, -f1 > "$out"
