echo "********************************************************"
echo Updating neovim
echo "********************************************************"
echo 

# apparently nvim comes with Linux mint by default but we do have to update it.
sudo apt remove neovim -y # first remove an old version
sudo snap install nvim --classic # install a new fresh version


# installin nerd fonts for Neovim icons to render properly
# by default - we select the first font. You can remove "<<< "1"" " - and it will prompt you enter a number of the font.
# after that, you also have to select that newly installed font in your terminal
bash -c "$(curl -fsSL https://raw.githubusercontent.com/officialrajdeepsingh/nerd-fonts-installer/main/install.sh)" <<< "1"

# installing ripgrep for Telescope to work.
# Note: Has to be installed via "apt install" to be registered by Telescope, if installed via snap - won't work
sudo apt install ripgrep

