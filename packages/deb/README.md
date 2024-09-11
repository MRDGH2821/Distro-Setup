# Deb Packages

Packages & Apps for Debian based distros.

## Prerequisite

### Nala Frontend for APT

Install [Nala](https://gitlab.com/volian/nala/-/wikis/Installation) frontend for APT

```bash
curl https://gitlab.com/volian/volian-archive/-/raw/main/install-nala.sh | bash
```

_Note: Ubuntu 20.04, 22.04 and Debian Bullseye this script may fail._
_If it does run:_

```bash
sudo apt install -t nala nala
```

### Clone Repo

```bash
mkdir -p ~/Github
cd ~/GitHub/
sudo nala install --update -y git
git clone https://github.com/MRDGH2821/Distro-Setup
```

## Apps

Apps present in [install-apps.sh](./install-apps.sh)

| App                                                                                                      | Notes                                              |
| -------------------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| [KeePassXC](https://keepassxc.org/download/#linux)                                                       | Use Ubuntu PPA method to install                   |
| [Firefox](https://support.mozilla.org/en-US/kb/install-firefox-linux)                                    | Use the method in which you add PPA                |
| [Visual Studio Code](https://code.visualstudio.com/docs/?dv=linux64_deb)                                 |                                                    |
| [Gramps](https://gramps-project.org/wiki/index.php/Installing_Gramps_for_Linux_computers#Debian_package) | Install gir1.2-goocanvas-2.0 for graph view plugin |
| [Waydroid](https://docs.waydro.id/usage/install-on-desktops#ubuntu-debian-and-derivatives)               | Check community projects section                   |

### Optional Apps

| App                                                  | Notes                                |
| ---------------------------------------------------- | ------------------------------------ |
| [Grsync](https://www.opbyte.it/grsync/download.html) | Website has latest version available |

### CLI Apps

| App                                                             | Notes |
| --------------------------------------------------------------- | ----- |
| [FastFetch](https://github.com/fastfetch-cli/fastfetch)         |       |
| [Docker Engine](https://docs.docker.com/engine/install/ubuntu/) |       |

## Non-free Apps

Non-free Apps present in [install-non-free.sh](./install-non-free.sh)

| App                                                       | Notes          |
| --------------------------------------------------------- | -------------- |
| [GitKraken](https://www.gitkraken.com/download/linux-deb) | Git GUI Client |
| [Steam](https://store.steampowered.com/about/download)    |                |

## KDE Apps

Apps present in [install-kde-apps.sh](./install-kde-apps.sh)

| App                                                             | Notes                          |
| --------------------------------------------------------------- | ------------------------------ |
| [Kamoso](https://apps.kde.org/kamoso/)                          |                                |
| [Filelight](https://apps.kde.org/filelight/)                    |                                |
| [KDE Partition Manager](https://apps.kde.org/partitionmanager/) |                                |
| [KCalc](https://apps.kde.org/kcalc/)                            |                                |
| [Kleopatra](https://apps.kde.org/kleopatra/)                    |                                |
| [NeoChat](https://flathub.org/apps/org.kde.neochat)             | Matrix Client                  |
| [Skanpage](https://flathub.org/apps/org.kde.skanpage)           | Scanner app                    |
| [Marknote](https://flathub.org/apps/org.kde.marknote)           | Markdown based note taking app |

### Optional KDE Apps

| App                                        | Notes |
| ------------------------------------------ | ----- |
| [KBackup](https://apps.kde.org/kbackup/)   |       |
| [Skanlite](https://apps.kde.org/skanlite/) |       |
