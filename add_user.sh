#!/bin/bash
# Create new user and add to sudo group
# Script must be run as sudo 
echo 'Requires sudo rights to run'
read -p 'Input the new username' userid
sudo useradd -m --shell /bin/bash $userid
sudo passwd $userid
echo 'Adding the user to the sudo group'
sudo usermod -a -G sudo $userid
echo 'User account has been successfully created'
