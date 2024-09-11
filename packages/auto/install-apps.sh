#!/usr/bin/env bash
set -e
LINE="-------------------------------------------"

# Self Install
echo "Installing Auto Installing apps"
echo $LINE

## Zed Editor
echo "Installing Zed Editor"
curl -f https://zed.dev/install.sh | sh
echo $LINE

## Oh My Posh
echo "Installing Oh My Posh"
curl -s https://ohmyposh.dev/install.sh | bash -s
echo $LINE
