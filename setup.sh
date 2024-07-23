#!/bin/bash

# Update package manager
sudo apt update -y

# Upgrade any outdated packages
sudo apt upgrade  -y

# Install gparted
sudo apt install gparted -y

# Install git
sudo apt install git -y

# Install npm
sudo apt install npm -y

# Installing NVM (Node Version Manager) - to change versions of Node.
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash -y

# update node from v12 to the latest v22+
nvm install node

# install ionic cli globally
npm install -g @ionic/cli

# Install python
sudo apt install python3 -y

# Install python virtual environment
sudo apt install python3.10-venv -y

# Install pip (package manager for python)
sudo apt install python3-pip -y

# Install django framework
sudo apt install python3-django -y

# Handly command to visualize the structure of the folder
sudo apt install tree -y

# Package to see and kill processes on Linux
sudo apt install htop -y

# SQLite browser
sudo apt-get install sqlitebrowser -y

# install yarn globally
sudo npm install --global yarn -y

# install PostgreSQL, so we can use psql
sudo apt-get install postgresql postgresql-contrib -y

# install Rust and Cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh /dev/stdin -y -c rustc

# Add Rust to PATH
source "$HOME/.cargo/env"

# install cloc - to count lines,commets,blank spaces in many languages
echo "Y" | sudo apt install cloc

# install gnome-system-monitor (GUI for htop, basically)
sudo apt-get install gnome-system-monitor -y

# install chrome
source ./chromeinstallation.sh

# install steam
sudo apt-get install steam -y

# install paint-like program for simple editing
sudo apt install kolourpaint -y

# install vscode
source ./vscodeinstallation.sh

# install android studio + java sdk
source ./androidstudio.sh

# create/delete folders
source ./createfolders.sh

# add aliases (studio, etc..)
source ./aliases.sh


echo "********************************************************"
echo "Setup complete! Close and reopen the terminal to take effect."
echo "********************************************************"
