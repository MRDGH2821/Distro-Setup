#!/usr/bin/env bash
set -e
LINE="-------------------------------------------"

# Deb Installer

function nala_install {
  sudo nala install --update -y -o APT::Get::AllowUnauthenticated=true "$@"
  echo $LINE
}

# Add Repositories
echo "Setting up repositories"

## Firefox
sudo install -d -m 0755 /etc/apt/keyrings
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc >/dev/null
gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); if($0 == "35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3") print "\nThe key fingerprint matches ("$0").\n"; else print "\nVerification failed: the fingerprint ("$0") does not match the expected one.\n"}'
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list >/dev/null
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla

echo $LINE

## KeePassXC
sudo add-apt-repository ppa:phoerious/keepassxc -y
echo $LINE

## Waydroid
curl https://repo.waydro.id | sudo bash
echo $LINE

## Docker Engine

sudo nala remove docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

### Add the repository to Apt sources:
# shellcheck disable=SC1091
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$UBUNTU_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null

## Fastfetch
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch -y

## GitHub CLI
sudo mkdir -p -m 755 /etc/apt/keyrings
wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg >/dev/null
sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list >/dev/null

# Install Packages
echo "Installing Packages"
nala_install \
  apparmor-utils \
  containerd.io \
  docker-buildx-plugin \
  docker-ce \
  docker-ce-cli \
  docker-compose-plugin \
  fastfetch \
  firefox \
  gh \
  gir1.2-goocanvas-2.0 \
  keepassxc \
  language-pack-gnome-en \
  waydroid

# Install from URL
echo "Installing from URLs"
echo $LINE
if command -v code &>/dev/null; then
  echo "VSCode is already installed. Skipping"
else
  nala_install "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
fi

if command -v gramps &>/dev/null; then
  echo "Gramps is already installed. Skipping"
else
  nala_install "https://github.com/gramps-project/gramps/releases/download/v5.2.3/gramps_5.2.3-1_all.ubuntu-22.04.deb"
fi

# Post install

## Disable AppArmor for firefox
sudo aa-disable /etc/apparmor.d/usr.bin.firefox

## Allow management of Docker as a non-root user
sudo groupadd docker
sudo usermod -aG docker "$USER"
newgrp docker

# Install Optional Apps

if [ "$1" == "--install-optional" ]; then
  echo "Installing Optional Apps"
  echo $LINE
  nala_install \
    grsync
fi
