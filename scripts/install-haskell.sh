#!/usr/bin/env bash
set -e

echo "🚀 Installing Haskell toolchain via ghcup..."

# Update system and ensure dependencies
sudo apt update
sudo apt install -y curl build-essential libffi-dev libgmp-dev libtinfo-dev libncurses-dev zlib1g-dev

# Download and run the ghcup installer (non-interactive)
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | BOOTSTRAP_HASKELL_NONINTERACTIVE=1 sh

# Load ghcup environment for this session
source ~/.ghcup/env

# --- Add ghcup to shell config automatically ---
if [ -n "$ZSH_VERSION" ]; then
  SHELL_RC="$HOME/.zshrc"
elif [ -n "$BASH_VERSION" ]; then
  SHELL_RC="$HOME/.bashrc"
else
  SHELL_RC="$HOME/.profile"
fi

if ! grep -q 'source ~/.ghcup/env' "$SHELL_RC"; then
  echo "🔧 Adding 'source ~/.ghcup/env' to $SHELL_RC"
  echo 'source ~/.ghcup/env' >> "$SHELL_RC"
fi
# ------------------------------------------------

# Install recommended components
ghcup install ghc recommended
ghcup install cabal recommended
ghcup install stack recommended
ghcup install hls recommended

# Set default versions
ghcup set ghc recommended
ghcup set cabal recommended
ghcup set stack recommended

echo "✅ Haskell installation complete!"

