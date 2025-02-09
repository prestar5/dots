#!/bin/sh

# notification(){
#     notify-send "Recordmenu" "$@" --icon=record
# }

menu() {
  printf "1. Toggle replay buffer\n"
  printf "2. Toggle recording\n"
}

main() {
  choice=$(menu | rofi -dmenu -p " Record" -theme-str 'window {width: 20%;}' | cut -d. -f1)

  case $choice in
  1)
    sh /home/stinker/.scripts/nvidia-start-replay.sh
    break
    ;;
  2)
    sh /home/stinker/.scripts/nvidia-toggle-record.sh
    break
    ;;
  esac
}

main
