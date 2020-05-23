#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
echo "Installing screen..."
sudo apt-get install screen
echo "Installing Cockpit..."
sudo apt-get install cockpit
echo "Enabling Cockpit to autorun at startup..."
sudo systemctl enable cockpit.socket
echo "Downloading McMyAdmin into ~/McMyAdmin"
mkdir ~/McMyAdmin
cd ~/McMyAdmin
wget http://mcmyadmin.com/Downloads/MCMA2-Latest.zip
unzip MCMA2-Latest.zip
rm MCMA2-Latest.zip
echo "You need to enter a passward for McMyAdmin."
read -p 'Password for McMyAdmin: ' uservar
mono McMyAdmin.exe -setpass $uservar -configonly
echo "Cockpit is avaliable on port 9090."
echo "McMyAdmin is avaliable on port 8080."
echo "Change into the McMyAdmin installation directory and start the program by typing mono McMyAdmin.exe the ~/McMyAdmin directory."
echo "For more info, please read the readme.md on the github page: https://github.com/jacktwhiston/2020-ifb102-mc-server-project"