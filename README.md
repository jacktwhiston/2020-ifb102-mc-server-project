# 2020-ifb102-mc-server-project

Hello and welcome to the installation process for the dedicated Minecraft server management web tool for Raspberry Pi

## Step 1
Install the QUT Raspberry Pi Customised Raspberry Pi Operating System on a flash drive and place it into your Raspberry Pi.
It uses a modified version of Raspbian Buster 10 that includes the necessary packages to run this project.

## Step 2
Update your system using: `sudo apt-get update && sudo apt-get upgrade`

## Step 3
Download the installation script with `wget https://raw.githubusercontent.com/jacktwhiston/2020-ifb102-mc-server-project/master/setup-minecraft.sh`

## Step 4
Enable run permissions for the installation script with: `chmod +rwx setup-minecraft.sh`

## Step 5
Run the script as root with: `sudo ./setup-minecraft.sh`

## Step 6
Allow the installation script to run and provide user input when asked.

## Step 7
Run McMyAdmin with `sudo ./run_McMyAdmin`

## Notes
- You can ...
