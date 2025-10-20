#!/usr/bin/env bash

# Checking if any waybar process
pkill -f "waybar"
nohup waybar >/dev/null 2>&1 &