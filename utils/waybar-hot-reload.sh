#!/bin/bash

## https://github.com/Alexays/Waybar/issues/961

CONFIG_FILES="$HOME/.dotfiles/config/waybar/config.jsonc $HOME/.dotfiles/config/waybar/style.css"

trap "killall waybar" EXIT


while true; do
  waybar &
  inotifywait -e create,modify $CONFIG_FILES
  echo "Change in config detected. Restarting waybar"
  killall waybar
done 
