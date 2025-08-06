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


echo "********************************************************"
echo Installing gradle
echo "********************************************************"
echo 

sudo snap install gradle --classic

echo "********************************************************"
echo Installing lnav
echo "********************************************************"
echo 

sudo snap install lnav --classic


echo "********************************************************"
echo Installing postman
echo "********************************************************"
echo 

sudo snap install postman

echo "********************************************************"
echo Installing ffmpeg
echo "********************************************************"
echo 

sudo snap install ffmpeg

echo "********************************************************"
echo Installing flutter
echo "********************************************************"
echo 

sudo snap install flutter --classic

echo "********************************************************"
echo Installing zig
echo "********************************************************"
echo 

sudo snap install zig --edge --classic

echo "********************************************************"
echo Installing docker
echo "********************************************************"
echo 

sudo snap install docker
