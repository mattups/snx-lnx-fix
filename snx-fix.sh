#!/bin/bash
# Adding i386 architecture. Needed for some packages.
sudo dpkg --add-architecture i386 
sudo apt-get update

sudo apt-get install libc6-i386 libaudit1 libxcb1 libgcc1 libc6 lib32tinfo5 libaudit1 libx11-6:i386 libstdc++5:i386 libpam0g:i386 -y
sudo apt -f install -y

# Installing snx.
sudo chmod +x ./snx-install-7075.sh
sudo ./snx-install-7075.sh

# Creating config file for snx.
printf "\n"
read -p "Your VPN server: " vpnserver
read -p "Your username: " username
printf "\nPlease insert your VPN password below.\n\n"

echo "server $vpnserver
username $username
reauth yes" > ~/.snxrc

# Connection.
snx