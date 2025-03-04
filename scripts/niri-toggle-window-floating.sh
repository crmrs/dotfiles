#/usr/bin/env zsh

IS_FLOATING=$(niri msg -j focused-window | jq -c ".is_floating")

if [[ $IS_FLOATING = "true" ]]
then
	niri msg action move-window-to-tiling;
	niri msg action set-window-height "100%";
else
	niri msg action move-window-to-floating;
	niri msg action set-window-height "70%";
fi

niri msg action center-window;
