#!/bin/zsh

CONFIG_FILES="$HOME/.dotfiles/config/mako/config"

while true; do
  inotifywait -e create,modify $CONFIG_FILES;
  echo "Change in config detected. Restarting mako"
  makoctl reload
  notify-send "Test notification" "Lorem ipsum dolor sit amet"
done 
