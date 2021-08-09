#!/bin/bash

echo "pacman" > installPackages.sh
echo "-S" >> installPackages.sh
pacman -Qe >> installPackages.sh
sed -i 's/ .*//g' installPackages.sh
sed -i ':a;N;$!ba;s/\n/ /g' installPackages.sh
chmod +x installPackages.sh

