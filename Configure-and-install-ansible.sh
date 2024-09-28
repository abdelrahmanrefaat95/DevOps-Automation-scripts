#!/bin/bash

echo "This script is used to update your Ubuntu 22.04 LTS, enable SSH and install ansible latest version on ansible control node"

echo " Please Run using sudo "

apt update
 
apt upgrade -y

apt install ssh -y

systemctl enable ssh

systemctl start ssh

UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible -y

echo "Execution success and ansible is installed"

