#!/usr/bin/env bash

# Checking if any waybar process
pkill -f "waybar"
waybar >/dev/null 2>&1 &