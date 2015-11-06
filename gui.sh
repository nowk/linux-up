#!/bin/sh
set -e

# drivers for the nvidia gt600
# sudo apt-get install nvidia-driver nvidia-xconfig

# unsure if this is related to the nvidia gt610 card/driver update or occurred
# prior. But errors related to dbus-launch stop chrome from launching properly
sudo apt-get install dbus-x11

# xorg and fluxbox
sudo apt-get -y install \
	xorg \
	fluxbox \
	xcompmgr

# fonts
sudo apt-get -y install \
	ttf-unfonts-core \
	ttf-liberation \
	ttf-mscorefonts-installer

# google chrome
curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb \
	&& apt-get install -f \
	&& dpkg -i google-chrome-stable_current_amd64.deb

# vim: set filetype=sh :
