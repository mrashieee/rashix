{ config, pkgs, ... }:

{
    # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
    # Configure network proxy if necessary
    # networking.proxy.default = "http://user:password@proxy:port/";
    # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

    # Enable networking
    networking.networkmanager.enable = true;

    # Enable bluetooth
    hardware.bluetooth.enable = true;

    services.dbus.enable = true;
    security.polkit.enable = true;
    xdg.portal.enable = true;

    environment.systemPackages = with pkgs; [
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