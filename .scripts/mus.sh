#!/bin/bash

# Function to start cmus
start_cmus() {
  cmus
}

# Function to start spotify_player
start_spotify() {
  spotify_player
}

# Main function to show fzf menu and choose player
choose_player() {
  choice=$(echo -e "cmus\nspotify_player" | fzf)

  case $choice in
  "cmus")
    start_cmus
    ;;
  "spotify_player")
    start_spotify
    ;;
  *)
    echo "Invalid option."
    ;;
  esac
}

# Infinite loop to restart the fzf menu after each player exit
while true; do
  choose_player
done
