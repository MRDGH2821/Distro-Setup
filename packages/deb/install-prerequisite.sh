#!/usr/bin/env bash

# Install Nala
curl https://gitlab.com/volian/volian-archive/-/raw/main/install-nala.sh | bash
sudo apt install -t nala nala

# Setup Nala
sudo nala fetch --auto -y
sudo nala install --update -y curl wget git ca-certificates

# Clone Distro Setup repository
mkdir -p ~/Github
cd ~/GitHub/ || exit

git clone https://github.com/MRDGH2821/Distro-Setup
