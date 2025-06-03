#!/bin/bash

if command -v pacman >/dev/null 2>&1; then pkgmgr="pacman"
elif command -v apt >/dev/null 2>&1; then pkgmgr="apt"
elif command -v dnf >/dev/null 2>&1; then pkgmgr="dnf"
elif command -v yum >/dev/null 2>&1; then pkgmgr="yum"
elif command -v zypper >/dev/null 2>&1; then pkgmgr="zypper"
elif command -v apk >/dev/null 2>&1; then pkgmgr="apk"
else pkgmgr="unknown"
fi

echo "Package manager: $pkgmgr"
