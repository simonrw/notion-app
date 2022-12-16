#!/bin/bash

set -euo pipefail

rm -rf dist
npm run dist
./dist/Notion-0.0.5.AppImage --appimage-extract
cat ./squashfs-root/notion.desktop
desktop-file-validate ./squashfs-root/notion.desktop
