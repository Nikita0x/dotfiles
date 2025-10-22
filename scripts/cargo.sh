echo "********************************************************"
echo Installing watchexec
echo "********************************************************"
echo 

cargo install watchexec-cli


echo "********************************************************"
echo Installing xremap
echo "********************************************************"
echo 

cargo install xremap

# Automatically create xremap config.yml with starter remaps
CONFIG_DIR="$HOME/.config/xremap"
mkdir -p "$CONFIG_DIR"
CONFIG_FILE="$CONFIG_DIR/config.yml"
if [ ! -f "$CONFIG_FILE" ]; then
    cat > "$CONFIG_FILE" <<EOL
modmap:
  - name: Global remaps
    remap:
      CapsLock: Delete
EOL
    echo "Created starter xremap config at $CONFIG_FILE"
else
    echo "xremap config already exists at $CONFIG_FILE"
fi
