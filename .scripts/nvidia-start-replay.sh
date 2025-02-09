#!/bin/sh -e

killall -SIGINT gpu-screen-recorder && sleep 0.5 && notify-send -t 1500 -u low 'GPU Screen Recorder' 'Stopped replay buffer.' --icon=record && exit 0
video="$HOME/Videos/Recording"
notify-send -t 5000 -u low 'GPU Screen Recorder' "Started replay buffer. (Press ALT+F8 to save clips.)" --icon=record
gpu-screen-recorder -w screen -f 60 -q ultra -a "default_output|default_input" -c mp4 -r 180 -o "$video"
