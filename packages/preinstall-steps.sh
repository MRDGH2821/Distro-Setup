#!/usr/bin/env bash
set -e

mkdir -p "$HOME"/.local/bin
echo "export PATH=$HOME/.local/bin:$PATH" >>~/.bashrc
# shellcheck disable=SC1090
source ~/.bashrc
