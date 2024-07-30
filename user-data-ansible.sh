#!/bin/bash
# Ansible Installation

sudo apt-get update
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y

sudo apt install python3-pip --yes --force-yes
sudo pip install docker

sudo hostnamectl set-hostname ansible
/bin/bash
