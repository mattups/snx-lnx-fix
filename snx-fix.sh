#!/bin/bash
# Add i386 architecture. Needed for some packages.
sudo dpkg --add-architecture i386 
sudo apt-get update
sudo apt-get install libc6:i386

# Install debs for snx.
cd ./debs
sudo dpkg -i ./*

# Install snx
cd ./snx

tar -xvzf /snx/SNX_for_VPN1_Win7.tgz ./installer
sudo chmod +x ./installer/snx_install.sh

cd ./installer && sudo ./snx_install.sh