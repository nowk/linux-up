#!/bin/sh
set -e

sudo apt-get update
sudo apt-get -y install \
	protobuf-compiler \
	libprotobuf-dev \
	libncurses5-dev \
	zlib1g-dev \
	libutempter-dev \
	libssl-dev

# this was required to fix the OpenSSL lib not found error @ ./configure
# possibiilty that libcurl4-openssl-dev and/or linux-headers-$(uname -r) is 
# needed if error persists
sudo apt-get -y install pkg-config

# need for make
sudo apt-get -y install g++

cd ~/opt
git clone https://github.com/mobile-shell/mosh
cd mosh
sudo ./autogen.sh
sudo ./configure
sudo make
sudo make install

# clean up
sudo rm -rf ~/opt/mosh

# vim: set filetype=sh :
