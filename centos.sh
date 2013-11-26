#!/bin/bash

# git, zsh, vim, tmux, python2.7, easy_install, pip,
# mysql, ipython, nginx?, 
# Install required libraries
yum update
yum upgrade 

yum groupinstall “Development tools” -y


yum install -y zlib-devel sqlite-devel readline-devel libxml2-devel libcurl-devel
              

# Install frequently-used softwares
yum install -y vim zsh  tree  
                      
                      
# Install Databases 
yum install -y  mysql-server 

# Install less-frequently used softwares
yum install -y mercurial  

# Setup Vim
if [ ! -e ~/.vim ]
then
  mkdir -p ~/.vim
  cp -r vim/* ~/.vim
fi

if [ -f ~/.vimrc ] || [ -h ~/.vimrc ]
then
  echo "Remove origin .vimrc"
  rm ~/.vimrc
fi

ln -s ~/.vim/vimrc ~/.vimrc

if [ ! -e ~/.vim/bundle/vundle ]
then
   git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

echo "Going to install vim plugins"
system_shell=$SHELL
export SHELL="/bin/sh"
vim +BundleInstall! +BundleClean +qall
export SHELL=$system_shell
echo "Vim setup done."

# Setup tmux
if [ ! -e ~/.tmux.conf ]
then
  cp tmux.conf ~/.tmux.conf                   
fi
echo "Tmux setup done."



# Setup zsh and oh-my-zsh
if [ ! -e ~/.oh-my-zsh ]
then 
  cp -r oh-my-zsh ~/.oh-my-zsh
fi

if [ -f ~/.zshrc ] || [ -h ~/.zshrc ]
then
  mv ~/.zshrc ~/.zshrc.pre
fi
ln -s ~/.oh-my-zsh/zshrc ~/.zshrc
echo "Oh My Zsh has been installed."

env|grep SHELL|grep zsh > /dev/null
if [ $? -ne 0 ]
then
  echo "Current shell is not zsh, so change it to zsh"
  chsh -s `which zsh`
fi
/usr/bin/env zsh
source ~/.zshrc
echo "Zsh setup done."

# gitconfig
if [ ! -e ~/.gitconfig ]
then
  cp gitconfig ~/.gitconfig
fi

# pip
mkdir -p ~/.pip
if [ ! -e ~/.pip/pip.conf ]
then
  cp pip.conf ~/.pip/pip.conf
fi

# Python
curl -O http://python-distribute.org/distribute_setup.py
python distribute_setup.py
easy_install pip
rm -f distribute*
pip install virtualenv virtualenvwrapper ipython requests pytest\
            yolk 
