#!/usr/bin/env bash

COUNT=
ENABLED=
DISABLED=
if dunstctl is-paused | grep -q "false"; then echo $ENABLED; else echo $DISABLED; fi
