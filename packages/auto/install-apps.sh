#!/usr/bin/env bash
set -e
LINE="-------------------------------------------"

# Self Install
echo "Installing Auto Installing apps"
echo $LINE

## Zed Editor
if command -v zed &>/dev/null; then
  echo "Zed is already installed. Skipping"
else
  echo "Installing Zed Editor"
  curl -f https://zed.dev/install.sh | sh
  echo $LINE
fi

## Oh My Posh
if command -v oh-my-posh &>/dev/null; then
  echo "Oh My Posh is already installed. Skipping"
else
  echo "Installing Oh My Posh"
  curl -s https://ohmyposh.dev/install.sh | bash -s
  echo $LINE

  # Post Install - Configure Oh My Posh

  echo "eval \"$(oh-my-posh init bash --config "$(shuf -n 1 ~/.cache/oh-my-posh/themes/*.json)")\"" >>~/.bashrc
  oh-my-posh font install Meslo
fi
