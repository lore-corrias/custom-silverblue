#!/usr/bin/env bash

set -oue pipefail

LATEST_VERSION=$(curl -s https://api.github.com/repos/eza-community/eza/releases/latest | jq -r .tag_name)
DOWNLOAD_URL="https://github.com/eza-community/eza/releases/download/${LATEST_VERSION}/eza_x86_64-unknown-linux-gnu.tar.gz"

wget "$DOWNLOAD_URL" -O /tmp/eza.tar.gz && \
  tar -xzf /tmp/eza.tar.gz -C /tmp && \
  mv /tmp/eza /usr/bin/eza && \
  eza --version
