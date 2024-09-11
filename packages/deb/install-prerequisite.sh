#!/usr/bin/env bash
set -e

# Install Nala
if command -v code &>/dev/null; then
  echo "Nala is already installed. Skipping"
else
  curl https://gitlab.com/volian/volian-archive/-/raw/main/install-nala.sh | bash
  sudo apt install -t nala nala
fi

# Setup Nala
sudo nala fetch --auto -y --https-only --non-free
sudo nala install --update -y curl wget git ca-certificates

# Clone Distro Setup repository
git clone https://github.com/MRDGH2821/Distro-Setup ~/GitHub/Distro-Setup
