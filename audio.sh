#!/bin/sh
# vim: set filetype=sh :

# NOTE requires bluetooth setup

sudo apt-get -y install \
	pulseaudio \
	pulseaudio-module-bluetooth \
	pavucontrol \
	bluez-firmware

# NOTE for the bluetooth device to show up as an output source within
# pavucontrol, pulseaudio --start must occur before the bluetooth device
# connects.
