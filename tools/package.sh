#!/bin/sh
# Zips the built EBOOT as PSP/GAME/PSPDXDemo/, the layout a Memory Stick and
# PPSSPP expect. Writes dist/pspdx-demo.zip and its sha256.
set -e
cd "$(dirname "$0")/.."
[ -f app/EBOOT.PBP ] || { echo "build first: make -C app" >&2; exit 1; }
rm -rf dist && mkdir -p dist/PSP/GAME/PSPDXDemo
cp app/EBOOT.PBP dist/PSP/GAME/PSPDXDemo/
cp LICENSE dist/PSP/GAME/PSPDXDemo/LICENSE.txt
(cd dist && zip -q -r -X pspdx-demo.zip PSP)
rm -rf dist/PSP
sha256sum dist/pspdx-demo.zip | tee dist/pspdx-demo.zip.sha256
