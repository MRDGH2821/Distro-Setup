#!/usr/bin/env bash

sudo nala install --update -y -o APT::Get::AllowUnauthenticated=true \
  "https://release.gitkraken.com/linux/gitkraken-amd64.deb" \
  "https://cdn.akamai.steamstatic.com/client/installer/steam.deb"
