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

# Install python
sudo apt install python3

# Install python virtual environment
sudo apt install python3.10-venv

# Install pip (package manager for python)
sudo apt install python3-pip

# Install django framework
sudo apt install python3-django

# Handly command to visualize the structure of the folder
sudo apt install tree

# Package to see and kill processes on Linux
sudo apt install htop

# SQLite browser
sudo apt-get install sqlitebrowser

#install yarn globally
npm install --global yarn

echo "********************************************************"
echo "Setup complete! Close and reopen the terminal to take effect."
echo "********************************************************"
