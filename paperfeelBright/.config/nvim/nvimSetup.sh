#!/usr/bin/env bash
set -e

echo "[*] Installing depends..."

sudo pacman -S --needed \
  git \
  neovim \
  ripgrep \
  fd \
  xclip \
  npm \
  nodejs \
  python \
  python-pip \
  stylua \
  shfmt \
  shellcheck \
  wl-clipboard \
  unzip \
  wget \
  luarocks

echo "[*] Installing pynvim..."
pip install --break-system-packages pynvim

echo "[*] Installing Prettier and formatingtools..."
npm install -g prettier

echo "[*] Installing Python-tools..."
pip install --break-system-packages black isort ruff debugpy

echo "[*] Done. Run Neovim and let Lazy/mason deal with the rest."
