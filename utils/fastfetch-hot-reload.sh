#!/bin/zsh

CONFIG_FILES="$HOME/.dotfiles/config/fastfetch/config.jsonc"

while true; do
  inotifywait -e create,modify $CONFIG_FILES;
  clear
  fastfetch
done 
