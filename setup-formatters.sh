#!/bin/env bash

# setup-formatters
# this script will download and install
# all formatters that i use in null-ls.nvim

set -e

echo -e "
This script will download and install
All formatters that i use in null-ls.nvim
"

read -s -n 1 -p "Press any key to continue... "

echo "Installing lua formatter"
cargo install stylua

echo "Installing python formatter"
sudo pacman -S python-black

echo "Installing python linter"
sudo pacman -S python-pylint

echo "Installing prettier"
npm install -g prettier
