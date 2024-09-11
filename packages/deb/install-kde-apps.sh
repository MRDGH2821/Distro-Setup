#!/usr/bin/env bash
set -e
LINE="-------------------------------------------"

function nala_install {
  sudo nala install --update -y -o APT::Get::AllowUnauthenticated=true "$@"
  echo $LINE
}

nala_install \
  filelight \
  kalc \
  kamoso \
  marknote \
  neochat \
  partitionmanager \
  skanpage

# Install Optional Apps

if [ "$1" == "--install-optional" ]; then
  nala_install \
    kbackup \
    skanlite
fi
