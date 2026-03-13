#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "sttui Uninstaller"
echo "================="
echo ""
echo "WARNING: This will permanently delete the entire project directory:"
echo "  $SCRIPT_DIR"
echo ""
read -rp "Are you sure? [y/N] " confirm

if [[ "$confirm" != [yY] ]]; then
    echo "Aborted."
    exit 0
fi

echo "Removing $SCRIPT_DIR..."
cd /
rm -rf "$SCRIPT_DIR"

echo "Uninstall complete."
