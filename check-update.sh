#!/usr/bin/env bash
# Updates the packages installed on your OS
# For OSs that uses APT as package manager

echo "---------------------------"
echo "Check updates"
echo "---------------------------"

sudo apt update
sudo apt full-upgrade
sudo apt autoremove

# Update Snap store and its apps, if it's installed
sudo snap refresh 

echo "----------------------------------"
echo "Update completed"
echo "----------------------------------"
