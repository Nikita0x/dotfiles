# Install Java SDK for android studio
echo "********************************************************"
echo Installing openjdk-11-jdk
echo "********************************************************"
echo 

sudo apt update
sudo apt install openjdk-11-jdk

# download android studio

echo "********************************************************"
echo Downloading android studio
echo "********************************************************"
echo 

wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2024.2.1.11/android-studio-2024.2.1.11-linux.tar.gz -O android-studio-linux.tar.gz

# extract the tarball

echo "********************************************************"
echo Extracting the tarball
echo "********************************************************"
echo 

sudo tar -xzf android-studio-linux.tar.gz -C /opt

# Set Up Environment Variables

echo "********************************************************"
echo Setting env variables
echo "********************************************************"
echo 

echo 'export ANDROID_HOME=/opt/android-studio' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/bin' >> ~/.bashrc
echo 'export CAPACITOR_ANDROID_STUDIO_PATH="/opt/android-studio/bin/studio.sh"' >> ~/.bashrc
source ~/.bashrc



