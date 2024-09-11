#!/usr/bin/env bash

bash ./preinstall-steps.sh
bash ./auto/install-apps.sh
bash ./deb/install.sh
bash ./flatpak/install-apps.sh
