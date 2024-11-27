# Install Java SDK for android studio

sudo apt update
sudo apt install openjdk-11-jdk

# download android studio

wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2024.2.1.11/android-studio-2024.2.1.11-linux.tar.gz -O android-studio-linux.tar.gz

# extract the tarball

sudo tar -xzf android-studio-linux.tar.gz -C /opt

# Set Up Environment Variables

echo 'export ANDROID_HOME=/opt/android-studio' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/bin' >> ~/.bashrc
echo 'export CAPACITOR_ANDROID_STUDIO_PATH="/opt/android-studio/bin/studio.sh"' >> ~/.bashrc
source ~/.bashrc



