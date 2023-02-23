#!/bin/sh
sudo apt update
sudo apt upgrade -y
sudo apt remove neovim
sudo apt install -y git fuse libfuse2

# install latest nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

mkdir -p ~/.local/bin/ ~/.config/nvim/
mv nvim.appimage ~/.local/bin/nvim
mv init.vim ~/.config/nvim/init.vim