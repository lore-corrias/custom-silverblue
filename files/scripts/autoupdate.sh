#!/usr/bin/env bash

# from https://github.com/wayblueorg/wayblue/blob/live/files/scripts/ensureautoupdates.sh

# Tell build process to exit if there are any errors.
set -oue pipefail

systemctl enable rpm-ostreed-automatic.timer
systemctl enable podman-auto-update.timer
systemctl --global enable podman-auto-update.timer
systemctl --global enable flatpak-user-update.timer
systemctl enable flatpak-system-update.timer
