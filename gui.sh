#!/bin/sh
set -e

# asian fonts
sudo apt-get install ttf-unfonts-core

# google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable-current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb \
	&& apt-get install -f \
	&& dpkg -i google-chrome-stable_current_amd64.deb

# vim: set filetype=sh :
