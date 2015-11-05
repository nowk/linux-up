#!/bin/sh
set -e

# drivers for the nvidia gt600
# sudo apt-get install nvidia-driver nvidia-xconfig

# asian fonts
sudo apt-get install ttf-unfonts-core

# google chrome
curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb \
	&& apt-get install -f \
	&& dpkg -i google-chrome-stable_current_amd64.deb

# vim: set filetype=sh :
