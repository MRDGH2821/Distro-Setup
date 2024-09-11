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
sudo nala install --update -y git
git clone https://github.com/MRDGH2821/Distro-Setup ~/GitHub/Distro-Setup
```

## Apps

Apps present in [install-apps.sh](./install-apps.sh)

| App                                                                                                      | Notes                                              |
| -------------------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| [Firefox](https://support.mozilla.org/en-US/kb/install-firefox-linux)                                    | Use the method in which you add PPA                |
| [Gramps](https://gramps-project.org/wiki/index.php/Installing_Gramps_for_Linux_computers#Debian_package) | Install gir1.2-goocanvas-2.0 for graph view plugin |
| [KeePassXC](https://keepassxc.org/download/#linux)                                                       | Use Ubuntu PPA method to install                   |
| [Visual Studio Code](https://code.visualstudio.com/docs/?dv=linux64_deb)                                 |                                                    |
| [Waydroid](https://docs.waydro.id/usage/install-on-desktops#ubuntu-debian-and-derivatives)               | Check community projects section                   |

### Optional Apps

| App                                                  | Notes                                |
| ---------------------------------------------------- | ------------------------------------ |
| [Grsync](https://www.opbyte.it/grsync/download.html) | Website has latest version available |

### CLI Apps

| App                                                                       | Notes                    |
| ------------------------------------------------------------------------- | ------------------------ |
| [Docker Engine](https://docs.docker.com/engine/install/ubuntu/)           |                          |
| [FastFetch](https://github.com/fastfetch-cli/fastfetch)                   |                          |
| [GitHub CLI](https://github.com/cli/cli/blob/trunk/docs/install_linux.md) |                          |
| [Python 3](https://www.python.org/downloads/)                             | Install pip & venv both. |

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
| [Filelight](https://apps.kde.org/filelight/)                    |                                |
| [Kamoso](https://apps.kde.org/kamoso/)                          |                                |
| [KCalc](https://apps.kde.org/kcalc/)                            |                                |
| [KDE Partition Manager](https://apps.kde.org/partitionmanager/) |                                |
| [Kleopatra](https://apps.kde.org/kleopatra/)                    |                                |
| [Marknote](https://flathub.org/apps/org.kde.marknote)           | Markdown based note taking app |
| [NeoChat](https://flathub.org/apps/org.kde.neochat)             | Matrix Client                  |
| [Skanpage](https://flathub.org/apps/org.kde.skanpage)           | Scanner app                    |

### Optional KDE Apps

| App                                        | Notes |
| ------------------------------------------ | ----- |
| [KBackup](https://apps.kde.org/kbackup/)   |       |
| [Skanlite](https://apps.kde.org/skanlite/) |       |
