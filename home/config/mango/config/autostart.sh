set +e

# Waybar
waybar &

# For Wallpaper
swww-daemon &

# Hypridle
hypridle &

# Screen share
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots