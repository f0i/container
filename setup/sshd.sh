#!/usr/bin/env bash

set -eu -o pipefail

sudo mkdir -p /root/.ssh/
sudo ls -la /root/
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMEq92vWnF99O5no7E+nnITW0d6HSklFH1kT3GUwLkPf ma@md" | sudo tee -a /root/.ssh/authorized_keys

mkdir -p /home/$USER/.ssh/
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMEq92vWnF99O5no7E+nnITW0d6HSklFH1kT3GUwLkPf ma@md" >>/home/$USER/.ssh/authorized_keys

sudo apt-get update
sudo apt install -y openssh-server

echo done
