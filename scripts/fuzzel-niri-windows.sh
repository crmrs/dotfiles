#!/bin/zsh

WINDOW=$(niri msg -j windows | jq -c '.[].title' | tr -d '"' | fuzzel -d);
echo $WINDOW; 

ID=$(niri msg -j windows | jq --arg window $WINDOW -c '.[] | select(.title == $window).id');
echo $ID;

niri msg action focus-window --id $ID
