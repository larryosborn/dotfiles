#!/bin/bash
export CWD=`pwd`
echo $CWD/.vimrc
rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
rm -rf ~/.vimrc ~/.vim
ln -s $CWD/.vimrc ~/
