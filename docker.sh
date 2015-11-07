#!/bin/sh
set -e

# must setup /etc/fstab before running docker

# install docker
curl -sSL https://get.docker.com | sh

# install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.5.0/docker-compose-`uname -s`-`uname -m` > docker-compose
sudo mv docker-compose /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# vim: set filetype=sh :
