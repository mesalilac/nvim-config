#!/bin/env bash

# this script will download and install
# all formatters that i use in null-ls.nvim
# and other stuff

set -e

echo "Installing lua formatter"
cargo install stylua

echo "Installing python formatter"
sudo apt-get install black

echo "Installing python linter"
sudo apt-get install pylint

echo "Installing prettier"
yarn global add prettier

# Install Node.js provider
yarn global add neovim

# Install ripgrep for telescope
cargo install ripgrep

# Install fd for telescope
cargo install fd-find

