# Add self to the input and uinput groups
sudo usermod -aG input $USER 
sudo groupadd uinput
sudo usermod -aG uinput $USER

# See https://github.com/chrippa/ds4drv/issues/93
echo 'KERNEL=="uinput", SUBSYSTEM=="misc", MODE="0660", GROUP="uinput"' | sudo tee /etc/udev/rules.d/90-uinput.rules

# This seems to be needed because uinput isn't compiled as a loadable module these days.
# See https://github.com/chrippa/ds4drv/issues/93#issuecomment-265300511
echo uinput | sudo tee /etc/modules-load.d/uinput.conf