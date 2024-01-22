#!/bin/bash

# Update package manager
sudo apt update

# Upgrade any outdated packages
sudo apt upgrade

# Install gparted
sudo apt install gparted

# Install git
sudo apt install git

# Install npm
sudo apt install npm

# Installing NVM (Node Version Manager) - to change versions of Node.
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

echo "********************************************************"
echo "Setup complete! Close and reopen the terminal to take effect."
echo "********************************************************"
