#!/bin/bash
rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm -rf ~/.vimrc
ln -s ~/src/dotfiles/.vimrc ~/.vimrc
