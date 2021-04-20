#!/bin/bash

CURRENT_DIR=$(pwd)
mkdir dotfiles && touch extensions.txt brew_packages.txt

cd ~

# Configs
cp .gitconfig .vimrc .zshrc $CURRENT_DIR/dotfiles/

# SSH
cp -R .ssh/ $CURRENT_DIR/dotfiles/.ssh/

# VSCode Extensions
ls ~/.vscode/extensions/ > $CURRENT_DIR/extensions.txt

# Brew Packages
brew list > $CURRENT_DIR/brew_packages.txt
