#!/bin/bash
set -e

TMPDIR="$(mktemp -d /tmp/macOS-trim.XXXXXX)"
cleanup() { rm -rf "$TMPDIR"; }
trap cleanup EXIT

echo "[Remote Installer] Creating temp workspace..."
cd "$TMPDIR"

echo "[Remote Installer] Downloading repo..."
curl -fsSL \
  -o repo.zip \
  https://github.com/MetalMan1245/Trim-macOS-Junk-Dolphin-Context-Menu/archive/refs/heads/main.zip

echo "[Remote Installer] Extracting..."
unzip -q repo.zip
cd Trim-macOS-Junk-Dolphin-Context-Menu-main

echo "[Remote Installer] Running installer..."
chmod +x install-uninstall-macOS-trim.sh
./install-uninstall-macOS-trim.sh

echo "[Remote Installer] Done."
