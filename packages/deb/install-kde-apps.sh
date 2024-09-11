#!/usr/bin/env bash

LINE="-------------------------------------------"

function nala_install {
  sudo nala install --update -y -o APT::Get::AllowUnauthenticated=true "$@"
  echo $LINE
}

nala_install \
  filelight \
  kamoso \
  partitionmanager \
  kalc

# Install Optional Apps

if [ "$1" == "--install-optional" ]; then
  nala_install \
    grsync \
    skanlite
fi
