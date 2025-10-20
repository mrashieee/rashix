#!/usr/bin/env bash

# Check if Waybar running
if pgrep -x "waybar" > /dev/null; then
    echo "Waybar is running..."
    pkill -USR2 waybar
else
    echo "Waybar not running..."
    nohup waybar > /dev/null 2>&1 &
fi