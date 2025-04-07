echo "********************************************************"
echo Installing snapd
echo "********************************************************"
echo 

sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.backup
sudo apt update
sudo apt install snapd

echo "********************************************************"
echo Installing golang
echo "********************************************************"
echo 

sudo snap install go --classic

echo "********************************************************"
echo Installing helix
echo "********************************************************"
echo 

sudo snap install helix --classic
