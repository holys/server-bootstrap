#!/bin/sh
# Back up original vim configuration files 
mv ~/.vim ~/.vim.orig
mv ~/.vimrc ~/.vimrc.orig

#Clone vimfiles repo from GitHub 
git clone http://github.com/chendahui007/vimfiles.git ~/.vim 
ln -s ~/.vim/vimrc ~/.vimrc 

#Setup Vundle
git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qa

