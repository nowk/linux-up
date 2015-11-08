#!/bin/sh
# vim: set filetype=sh :
set -e

# must setup /etc/fstab before running docker

# install docker
curl -sSL https://get.docker.com | sh

# install docker-compose
curl -L https://github.com/docker/compose/releases/download/1.5.0/docker-compose-`uname -s`-`uname -m` > docker-compose
sudo mv docker-compose /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# install terraform
cd /opt
sudo mkdir -p /opt/terraform
wget https://releases.hashicorp.com/terraform/0.6.6/terraform_0.6.6_linux_amd64.zip
sudo unzip terraform_0.6.6_linux_amd64.zip -d /opt/terraform/

# install packer
cd /opt
sudo mkdir -p /opt/packer
wget https://releases.hashicorp.com/packer/0.8.6/packer_0.8.6_linux_amd64.zip
sudo unzip packer_0.8.6_linux_amd64.zip -d /opt/packer/

