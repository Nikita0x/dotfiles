#!/bin/bash

# Update package manager
sudo apt update -y

# Upgrade any outdated packages
sudo apt upgrade  -y

echo "********************************************************"
echo Installing gparted
echo "********************************************************"
echo 

# Install gparted
sudo apt install gparted -y


echo "********************************************************"
echo Installing git
echo "********************************************************"
echo 

# Install git
sudo apt install git -y


echo "********************************************************"
echo Installing xclip
echo "********************************************************"
echo 

sudo apt install xclip

echo "********************************************************"
echo Installing adb
echo "********************************************************"
echo 

sudo apt install adb -y

echo "********************************************************"
echo Installing simplescreenrecorder
echo "********************************************************"
echo 

sudo apt install simplescreenrecorder -y


echo "********************************************************"
echo Installing gpick
echo "********************************************************"
echo 

sudo apt install gpick -y

# Install npm
sudo apt install npm -y

echo "********************************************************"
echo Installing NVM - Node Version Manager
echo "********************************************************"
echo 

# Installing NVM (Node Version Manager) - to change versions of Node.
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash -y

echo "********************************************************"
echo Updating node to latest version
echo "********************************************************"
echo 

# update node from v12 to the latest v22+
nvm install node

echo "********************************************************"
echo Installing ionic cli globally
echo "********************************************************"
echo 

# install ionic cli globally
npm install -g @ionic/cli

echo "********************************************************"
echo Installing utils for npm for updates
echo "********************************************************"
echo 

# to check for updates in package.json via "ncu" and "ncu -u"
npm install -g npm-check-updates

echo "********************************************************"
echo Installing python
echo "********************************************************"
echo 

# Install python
sudo apt install python3 -y

echo "********************************************************"
echo Installing python virtual environment
echo "********************************************************"
echo 

# Install python virtual environment
sudo apt install python3.10-venv -y

echo "********************************************************"
echo Installing pip - python package manager
echo "********************************************************"
echo 

# Install pip (package manager for python)
sudo apt install python3-pip -y

echo "********************************************************"
echo Installing django
echo "********************************************************"
echo 

# Install django framework
sudo apt install python3-django -y

echo "********************************************************"
echo Installing tree cli command
echo "********************************************************"
echo 

# Handly command to visualize the structure of the folder
sudo apt install tree -y

echo "********************************************************"
echo Installing whois
echo "********************************************************"
echo 

# install whois - CLI tool to check if a domain is taken or free
sudo apt install whois

echo "********************************************************"
echo Installing btop
echo "********************************************************"
echo 

# Package to see and kill processes on Linux
sudo apt install btop -y

echo "********************************************************"
echo Installing SQLite browser
echo "********************************************************"
echo 

# SQLite browser
sudo apt-get install sqlitebrowser -y

echo "********************************************************"
echo Installing yarn - globally
echo "********************************************************"
echo 

# install yarn globally
sudo npm install --global yarn -y

echo "********************************************************"
echo Installing PostgreSQL
echo "********************************************************"
echo 

# install PostgreSQL, so we can use psql
sudo apt-get install postgresql postgresql-contrib -y

echo "********************************************************"
echo Installing Rust and Cargo
echo "********************************************************"
echo 

# install Rust and Cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh /dev/stdin -y -c rustc

# Add Rust to PATH
source "$HOME/.cargo/env"

echo "********************************************************"
echo Installing cloc
echo "********************************************************"
echo 

# install cloc - to count lines,commets,blank spaces in many languages
echo "Y" | sudo apt install cloc

# install chrome
source ./scripts/chromeinstallation.sh

# install brave
source ./scripts/bravebrowser.sh

echo "********************************************************"
echo Installing steam
echo "********************************************************"
echo 

# install steam
sudo apt-get install steam -y

echo "********************************************************"
echo Installing kolourpaint
echo "********************************************************"
echo 

# install paint-like program for simple editing
sudo apt install kolourpaint -y

# install vscode
source ./scripts/vscodeinstallation.sh

echo "********************************************************"
echo Installing Zed
echo "********************************************************"
echo 

# install zed
curl -f https://zed.dev/install.sh | sh

# install android studio + java sdk
source ./scripts/androidstudio.sh

# create/delete folders
source ./scripts/createfolders.sh

# add aliases (studio, etc..)
source ./aliases.sh

# tools for hackering
source ./scripts/hackertools.sh

# nvim
source ./scripts/nviminstallation.sh

source ./scripts/flathub.sh

# snapd packages
source ./scripts/snapdpackages.sh

# go specific packages
source ./scripts/gotools.sh

# install firebase cli for Flutter
source ./scripts/firebasecli.sh

echo "********************************************************"
echo "Setup complete! Close and reopen the terminal to take effect."
echo "********************************************************"
