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

# Post Install

## Configure Oh My Posh
curl -s https://gist.github.com/MRDGH2821/47294f0c61f3c9f061e8ffd28e1a538b/raw/oh-my-posh-random.sh >>~/.bashrc
oh-my-posh font install Meslo
