#!/usr/bin/bash

# Samba install
sudo pacman -S samba

# Add samba group
sudo groupadd -r sambausers

# Add user to samba group
sudo usermod -aG sambausers bojanstrko

# Create password for samba user
sudo smbpasswd -a bojanstrko 

# Start smb services
sudo systemctl enable --now smb
sudo systemctl enable --now nmb

### share example
##create new directory

# sudo mkdir /samba

## change ownersship of directory to sambausers

# sudo chown -R :sambausers /samba

## change permisions of directory

# sudo chmod 1770 /samba
