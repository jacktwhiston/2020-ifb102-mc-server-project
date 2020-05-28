# 2020-ifb102-mc-server-project

Hello and welcome to the installation process for the dedicated Minecraft server management web tool for Raspberry Pi.

## Step 1
Install the QUT Raspberry Pi Customised Raspberry Pi Operating System on a flash drive and place it into your Raspberry Pi.
It uses a modified version of Raspbian Buster 10 that includes the necessary packages to run this project.

## Step 2
Update your system using:
```sudo apt-get update
sudo apt-get upgrade```

## Step 3
Install with Linux GNU Screen with: `sudo apt-get install screen`

## Step 4
Install Cockpit with: `sudo apt-get install cockpit`

## Step 5
Set Cockpit to boot on startup with: `sudo systemctl enable cockpit.socket`

## Step 6
Download McMyAdmin with the following commands
```mkdir ~/McMyAdmin
cd ~/McMyAdmin
wget http://mcmyadmin.com/Downloads/MCMA2-Latest.zip
unzip MCMA2-Latest.zip
rm MCMA2-Latest.zip
```
## Step 7
Perform the first time setup for McMyAdmin with the following command, replace [PASSWORD] with the password you want to use for the McMyAdmin admin account: `mono McMyAdmin.exe -setpass [PASSWORD] -configonly`

## Step 8
Download the run script into a directory of your choosing: `wget https://raw.githubusercontent.com/jacktwhiston/2020-ifb102-mc-server-project/master/run_mcserver.sh`

## Step 9
Give the script execute privilleges: `chmod +x run_mcserver.sh`

## Step 10
When you wish to launch the server, run the script as from the directory containing the script with: `./run_mcserver.sh`

## Notes
- Cockpit is avaliable on port 9090
- McMyAdmin is avaliable on port 8080
- The Minecraft server will default to a port of 25565
