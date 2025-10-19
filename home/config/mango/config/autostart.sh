#!/usr/bin/env bash

# Waybar
waybar

# Screen share
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots
