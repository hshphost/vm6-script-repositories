#/bin/bash

# Script for swap magnifications, made by XorekCloud for Hasanbek. The main goal is overselling for node :(
# Note to self: bash <(wget -O- https://raw.githubusercontent.com/hshphost/vm6-script-repositories/main/utils/swap.sh)

sudo dnf install util-linux -y

sudo mkdir /swap-space
sudo fallocate -l 64G /swap-space/swapfile
sudo chmod 600 /swap-space/swapfile
sudo mkswap /swap-space/swapfile
sudo swapon /swap-space/swapfile

sudo echo -e "\n/swap-space/swapfile swap swap defaults 0" >> /etc/fstab