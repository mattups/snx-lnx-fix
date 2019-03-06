#!/bin/bash
# Adding i386 architecture. Needed for some packages.
sudo dpkg --add-architecture i386 
sudo apt-get update
sudo apt-get install libc6-i386 libaudit1 libxcb1 libgcc1 libc6 lib32tinfo5  libaudit1 -y
sudo apt -f install -y

# Install debs for snx.
cd ./debs
sudo dpkg -i ./*
sudo apt -f install -y

# Installing snx.
cd ../snx
mkdir ./installer

tar -xvzf SNX_for_VPN1_Win7.tgz 
sudo chmod +x ./snx_install.sh

sudo ./snx_install.sh

snx