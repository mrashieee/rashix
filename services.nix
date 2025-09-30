{ config, pkgs, ... }:

{
    services.dbus.enable = true;
    security.polkit.enable = true;

    environment.systemPackages = with pkgs; [
    hyprland
    niri
    wlroots
    wl-clipboard
    mako
    kitty
    nautilus
    polkit_gnome
    grim
    slurp
    brightnessctl
    swaylock
    waybar
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    ];
}