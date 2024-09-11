#!/usr/bin/env bash

flatpak install \
  com.adilhanney.saber \
  com.github.mtkennerly.ludusavi \
  com.heroicgameslauncher.hgl \
  it.mijorus.gearlever \
  org.freedesktop.Platform.VulkanLayer.gamescope/x86_64/24.08

# Install optional apps
if [ "$1" == "--install-optional" ]; then
  flatpak install \
    com.calibre_ebook.calibre \
    com.github.marktext.marktext \
    com.github.tchx84.Flatseal
fi
