#!/usr/bin/env python2
import os
with open('build/de-bloat.txt') as packages:
  for package in packages:
    print(package),
    os.system('adb shell pm uninstall --user 0 ' + package)
