# Distro-Setup

This repository contains files & folders to be reinstalled after switching/reinstalling linux based OS

## Steps to run

```bash
sudo apt install curl git -y

git clone https://github.com/MRDGH2821/Distro-Setup ~/GitHub/Distro-Setup
cd ~/GitHub/Distro-Setup || exit

bash ./packages/preinstall-steps.sh

cd ./packages
bash ./auto/install-apps.sh

bash ./deb/install-prerequisite.sh
bash ./deb/install-apps.sh
bash ./deb/install-non-free.sh
bash ./deb/install-kde-apps.sh # If you want KDE apps

bash ./flatpak/install-apps.sh
```
