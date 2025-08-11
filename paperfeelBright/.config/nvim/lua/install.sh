#!/bin/bash

# install.sh - Setup script for Neovim config
# Author: Espfre

set -e

echo "\n Starting Neovim environment setup...\n"

# Detect package manager
if command -v pacman &>/dev/null; then
  echo "Using pacman (Arch Linux)"
  sudo pacman -Syu --needed neovim ripgrep fd npm python-pip stylua shfmt
elif command -v apt &>/dev/null; then
  echo "Using apt (Debian/Ubuntu)"
  sudo apt update
  sudo apt install -y neovim ripgrep fd-find npm python3-pip stylua shfmt
else
  echo "Unsupported package manager. Install dependencies manually."
  exit 1
fi

# Install Python packages
echo "\n Installing Python packages..."
pip install --upgrade pip
pip install black flake8 debugpy

# Install Prettier globally
echo "\n Installing Prettier globally via npm..."
sudo npm install -g prettier

# Reminder for NerdFonts
echo "\n Reminder: Install a Nerd Font manually for full icon support!"
echo "(https://www.nerdfonts.com/)"

# Finish
echo "\n Environment setup complete! You are ready to rock! 🚀"
