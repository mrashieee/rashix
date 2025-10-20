set +e

# Waybar
waybar &

# For Wallpaper
swww-daemon &

# Screen share
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots