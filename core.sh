#!/bin/sh
set -e

# Install script for Linux core for development
#

# core dependencies
sudo apt-get -y install \
	curl \
	git-core \
	tmux \
	zsh \
	libncurses-dev \
	make \
	gcc \
	automake

# switch to home ~/
cd ~/

# dotfiles
git clone https://github.com/nowk/prospect.git
ln -s ~/prospect/ ~/.prospect \
	&& ln -s ~/.prospect/gitconfig ~/.gitconfig \
	&& ln -s ~/.prospect/gitignore_global ~/.gitignore_global \
	&& ln -s ~/.prospect/tmux.conf ~/.tmux.conf \
	&& ln -s ~/.prospect/vim ~/.vim \
	&& ln -s ~/.prospect/vimrc ~/.vimrc \
	&& mv ~/.zshrc ~/.zshrc.before-ln-s \
	&& ln -s ~/.prospect/zshrc ~/.zshrc \
	&& ln -s ~/.prospect/zshrc.local ~/.zshrc.local \
	&& ln -s ~/.prospect/oh-my-zsh/themes/normalt.zsh-theme ~/.oh-my-zsh/themes/normalt.zsh-theme

# specifically checkout the unite-test branch
cd ~/prospect && git co unite-test

# install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# send <enter>
echo | vim +PlugInInstall +qall > /dev/null 2>&1

# install terminfos
cd ~/.prospect/terminfo \
	&& tic screen-256color-italic.terminfo \
	&& tic xterm-256color-italic.terminfo

mkdir -p ~/opt
cd ~/opt

# install tig
git clone https://github.com/jonas/tig.git \
	&& cd tig \
	&& sudo make prefix=/usr/local \
	&& sudo make install prefix=/usr/local \
	&& cd .. \
	&& sudo rm -rf tig

# vim: set filetype=sh :
