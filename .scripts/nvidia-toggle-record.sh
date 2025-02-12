#!/bin/sh -e

killall -SIGINT gpu-screen-recorder && sleep 0.5 && notify-send -t 1500 -u low 'GPU Screen Recorder' 'Stopped recording.' --icon=record && exit 0
video="$HOME/Videos/Recording/$(date +"Video_%Y-%m-%d_%H-%M-%S.mp4")"
notify-send -t 5000 -u low 'GPU Screen Recorder' "Started recording video to $video" --icon=record
gpu-screen-recorder -w screen -c mp4 -f 60 -bm qp -q ultra -a "default_output|alsa_input.usb-SteelSeries_SteelSeries_Alias-00.mono-fallback" -o "$video"
