# Install Java SDK for android studio
echo "********************************************************"
echo Installing openjdk-17-jdk
echo "********************************************************"
echo 

sudo apt update
sudo apt install openjdk-17-jdk -y

echo "********************************************************"
echo Installing openjdk-21-jdk
echo "********************************************************"
echo 

sudo apt install openjdk-21-jdk -y

# javac --version
# java --verision

# sudo update-alternatives --config java    -to change version
# sudo update-alternatives --config javac   -to change version
