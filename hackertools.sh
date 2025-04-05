# get metadata of an image.
# usage: exiftool dinner.jpg 
echo "********************************************************"
echo Installing hacker tools
echo "********************************************************"
echo 


sudo apt install libimage-exiftool-perl -y

# another tool for metadata
# usage: identify -verbose  dinner.jpg 
sudo apt install imagemagick -y
