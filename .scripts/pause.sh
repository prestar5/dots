#!/bin/sh

mpc -q pause;
amixer set Master mute;
pkill gpu-screen-reco;
systemctl suspend;
swaylock -C .config/swaylock/swaylock.conf;