#!/usr/bin/env bash
set -e

mkdir -p "$HOME"/.local/bin
echo "export PATH=$HOME/.local/bin:$PATH" >>~/.bashrc

export PATH=$HOME/.local/bin:$PATH

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")

bash "$SCRIPT_DIR"/preinstall-steps.sh
bash "$SCRIPT_DIR"/auto/install-apps.sh
bash "$SCRIPT_DIR"/deb/install.sh
bash "$SCRIPT_DIR"/flatpak/install-apps.sh
