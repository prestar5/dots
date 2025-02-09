#!/bin/sh

VOLUME=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/%//')

dunstify \
  "Volume: $(printf "%3d%%" $VOLUME)" \
  -i speaker \
  -r 28223 \
  -h int:value:$VOLUME
