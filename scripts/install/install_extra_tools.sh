#!/bin/bash

sudo apt update
# Atualizar
sudo apt upgrade -y
# Instalalar TMATE
sudo apt install -y tmate
# Oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Z
wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/z.sh
# Add to .zshrc
echo . /path/to/z.sh >> ~/.zshrc
# Add pssh
sudo apt-get install pssh -y
