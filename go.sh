#!/bin/sh
set -e

GOLANG_MAJOR=1.5
GOLANG_VERSION=1.5.1

sudo mkdir -p /opt/go
sudo chown nowk:nowk -R /opt

# failing tests during build, particularly https://github.com/golang/go/issues/12412
# On both debian and phusion/baseimage
# installing from binary release
cd /opt \
	&& curl -O https://storage.googleapis.com/golang/go${GOLANG_VERSION}.linux-amd64.tar.gz \
	&& tar -xf go${GOLANG_VERSION}.linux-amd64.tar.gz -C ./go --strip-components 1 \
	&& rm go${GOLANG_VERSION}.linux-amd64.tar.gz

# vim: set filetype=sh :
