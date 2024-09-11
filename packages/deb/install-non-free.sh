#!/usr/bin/env bash
set -e

LINE="-------------------------------------------"

function nala_install {
  sudo nala install --update -y -o APT::Get::AllowUnauthenticated=true "$@"
  echo $LINE
}

if command -v steam &>/dev/null; then
  echo "Steam is already installed. Skipping"
else
  nala_install "https://cdn.akamai.steamstatic.com/client/installer/steam.deb"
fi

if command -v gitkraken &>/dev/null; then
  echo "GitKraken is already installed. Skipping"
else
  nala_install "https://release.gitkraken.com/linux/gitkraken-amd64.deb"
fi
