#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")

bash "$SCRIPT_DIR"/preinstall-steps.sh
bash "$SCRIPT_DIR"/auto/install-apps.sh
bash "$SCRIPT_DIR"/deb/install.sh
bash "$SCRIPT_DIR"/flatpak/install-apps.sh
