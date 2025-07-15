#! /bin/bash

# Create dedicated user for ansible
# -M means user requires no home directory
useradd -M ansible 

# Set up user permissions
# Create a sudoers file for ansible
usermod -aG sudo ansible
echo 'ansible ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers.d/ansible


