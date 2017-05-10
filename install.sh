#!/bin/bash
echo "Installing ..."
mv ~/.vimrc ~/.vimrc.bak
cp ./.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Install Done."
