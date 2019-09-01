#!/usr/bin/env bash
set -euo pipefail

adb shell pm list packages | sort -u | sed 's/^package://'
