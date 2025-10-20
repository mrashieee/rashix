#!/usr/bin/env bash

# Checking if any waybar process
if pgrep -f "waybar" >/dev/null; then
    pkill -f "waybar"
else
    nohup waybar >/dev/null 2>&1 &
fi