#/bin/bash

# Script for swap magnifications, made by XorekCloud. The main goal is overselling for node :(

sudo dnf install util-linux -y

sudo mkdir /swap-space
sudo fallocate -l 32G /swap-space/swapfile
sudo chmod 600 /swap-space/swapfile
sudo mkswap /swap-space/swapfile
sudo swapon /swap-space/swapfile

sudo echo -e "\n/swap-space/swapfile swap swap defaults 0" >> /etc/fstab