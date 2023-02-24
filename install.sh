#!/bin/sh
sudo apt update
sudo apt upgrade -y
sudo apt remove neovim
sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt install -y python3.9 git fuse pip3 software-properties-common

# install latest nvim
wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
chmod +x nvim
sudo chown root:root nvim
sudo mv nvim /usr/bin
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config/nvim/site/autoload/ ~/.nvim/plugged
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s /workspaces/.codespaces/.persistedshare/dotfiles/init.vim ~/.config/nvim/init.vim 