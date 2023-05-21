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


# 128G swap, idk

#sudo mkdir /swap-space
#sudo fallocate -l 128G /swap-space/swapfile2
#sudo chmod 600 /swap-space/swapfile2
#sudo mkswap /swap-space/swapfile2
#sudo swapon /swap-space/swapfile2

#sudo echo -e "\n/swap-space/swapfile2 swap swap defaults 0" >> /etc/fstab


# 256G swap, idk x2 :)

#sudo mkdir /swap-space
#sudo fallocate -l 256G /swap-space/swapfile3
#sudo chmod 600 /swap-space/swapfile3
#sudo mkswap /swap-space/swapfile3
#sudo swapon /swap-space/swapfile3

#sudo echo -e "\n/swap-space/swapfile3 swap swap defaults 0" >> /etc/fstab
