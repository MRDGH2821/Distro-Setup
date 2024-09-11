#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")

bash "$SCRIPT_DIR"/install-prerequisite.sh
bash "$SCRIPT_DIR"/install-apps.sh --install-optional
bash "$SCRIPT_DIR"/install-non-free.sh --install-optional
bash "$SCRIPT_DIR"/install-kde-apps.sh --install-optional
