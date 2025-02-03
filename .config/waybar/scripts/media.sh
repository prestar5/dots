#!/bin/bash

spotify_status=$(playerctl --player=spotify_player status 2>/dev/null)
if [ "$spotify_status" == "Playing" ] || [ "$spotify_status" == "Paused" ]; then
  icon="<span color='#b4befe'1></span>" # Spotify icon
  title=$(playerctl --player=spotify_player metadata title)
  artist=$(playerctl --player=spotify_player metadata artist)
  echo -e "{\"text\": \"$icon $artist - $title\"}"
  exit 0
fi

rbox_status=$(playerctl --player=cmus status 2>/dev/null)
if [ "$rbox_status" == "Playing" ] || [ "$rbox_status" == "Paused" ]; then
  icon="<span color='#b4befe'></span>" # Spotify icon
  title=$(playerctl --player=cmus metadata title)
  artist=$(playerctl --player=cmus metadata artist)
  echo -e "{\"text\": \"$icon $artist - $title\"}"
  exit 0
fi

exit 0
