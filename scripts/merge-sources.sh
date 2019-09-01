#!/usr/bin/env bash
set -euo pipefail

out="build/de-bloat.txt"
rm -rf "$out"

while read -r source; do
  tail -n +2 "packages/$source" | cut -d, -f1 >> "$out"
done < packages/de-bloat-sources.txt
