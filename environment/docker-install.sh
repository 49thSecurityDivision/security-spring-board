#!/bin/bash

# Documentation for this section can be found here
# https://docs.docker.com/install/linux/docker-ce/debian/

# Remove installed docker
sudo apt-get remove docker docker-engine docker.io containerd runc -y

# Install docker
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common -y

# Docker Key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# Key fingerprint
sudo apt-key fingerprint 0EBFCD88

# Add repository
echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' | sudo tee -a /etc/apt/sources.list.d/docker.list
sudo apt-get update

# Install docker
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Install docker-compose
# https://docs.docker.com/compose/install/
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Systemd
sudo systemctl enable docker
sudo systemctl start docker

echo -e "ADD USER TO docker GROUP!\n" 
