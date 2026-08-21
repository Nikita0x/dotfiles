#!/bin/bash

echo "********************************************************"
echo "Adding aliases (only if they don't already exist)"
echo "********************************************************"
echo

add_alias_if_missing() {
  local alias_line="$1"
  local alias_name=$(echo "$alias_line" | cut -d'=' -f1 | awk '{print $2}')
  if ! grep -Fxq "$alias_line" ~/.bashrc; then
    echo "$alias_line" >> ~/.bashrc
    echo "✔️ Added: $alias_name"
  else
    echo "⚠️ Already exists: $alias_name"
  fi
}

add_alias_if_missing "alias clipboard='xclip -selection clipboard'"
add_alias_if_missing "alias c='cd'"
add_alias_if_missing "alias св='cd'"
add_alias_if_missing "alias dotfiles='zed ~/github/dotfiles'"
add_alias_if_missing "alias lock='cinnamon-screensaver-command --lock'"
add_alias_if_missing "alias internet_check='python3 ~/github/dotfiles/internet_check.py'"

# Line below enables ctrl+backspace - to delete whole word in terminal (without it only alt+backspace works)
echo "stty werase '^H'" >> ~/.bashrc

echo
echo "Please run 'source ~/.bashrc' to apply the changes or open a new terminal."
