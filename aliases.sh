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

add_alias_if_missing "alias android-studio='cd /opt/android-studio/bin && ./studio.sh'"
add_alias_if_missing "alias clipboard='xclip -selection clipboard'"
add_alias_if_missing "alias c='cd'"
add_alias_if_missing "alias dotfiles='code ~/github/dotfiles'"
add_alias_if_missing "alias bashrc='hx ~/.bashrc'"

echo
echo "Please run 'source ~/.bashrc' to apply the changes or open a new terminal."
