#!/usr/bin/env bash

bash ./install-prerequisite.sh
bash ./install-apps.sh --install-optional
bash ./install-non-free.sh --install-optional
bash ./install-kde-apps.sh --install-optional