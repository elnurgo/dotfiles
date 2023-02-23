#!/bin/sh
sudo apt update
sudo apt upgrade -y
sudo apt remove neovim
sudo apt install -y git fuse libfuse2

# install latest nvim
wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim
chmod +x nvim
sudo chown root:root nvim
sudo chown root:root nvim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s ~/.vimrc /workspaces/.codespaces/.persistedshare/dotfiles/init.vim