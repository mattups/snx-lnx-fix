#!/bin/bash
# Adding i386 architecture. Needed for some packages.
sudo dpkg --add-architecture i386 
sudo apt-get update
sudo apt-get install libc6-i386 libaudit1 libxcb1 libgcc1 libc6 lib32tinfo5 libaudit1 -y
sudo apt -f install -y

# Install debs for snx.
sudo dpkg -i ./debs/*.deb
sudo apt -f install -y

# Installing snx.
sudo chmod +x ./snx_install_linux30_7075.sh
sudo ./snx-install-7075.sh

snx