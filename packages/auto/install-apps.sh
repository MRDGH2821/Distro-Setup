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
  # shellcheck disable=SC2016
  echo '
  # Oh my posh random theme initializer

  # Set a random theme
  themes=($(ls ~/.cache/oh-my-posh/themes/*.json))
  eval "$(oh-my-posh init bash --config "${themes[$RANDOM % ${#themes[@]}]}")"
  ' >>~/.bashrc
  oh-my-posh font install Meslo
fi

## Node.js via Fast Node Manager

if command -v fnm &>/dev/null; then
  echo "Fast Node Manager is already installed. Skipping"
else
  curl -fsSL https://fnm.vercel.app/install | bash

  # Post Install - Configure Fast Node Manager

  if [ -d "$HOME/.fnm" ]; then
    INSTALL_DIR="$HOME/.fnm"
  elif [ -n "$XDG_DATA_HOME" ]; then
    INSTALL_DIR="$XDG_DATA_HOME/fnm"
  elif [ "$OS" = "Darwin" ]; then
    INSTALL_DIR="$HOME/Library/Application Support/fnm"
  else
    INSTALL_DIR="$HOME/.local/share/fnm"

    FNM_PATH="$INSTALL_DIR"
    if [ -d "$FNM_PATH" ]; then
      export PATH="$FNM_PATH:$PATH"
      eval "$(fnm env)"
    fi
  fi
fi

if command -v node &>/dev/null; then
  echo "Node.js is already installed. Skipping"
else
  # download and install Node.js
  fnm use --install-if-missing 20
fi
