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

    # Enable CUPS to print documents.
    services.printing.enable = true;

    # Enable sound with pipewire.
    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        # If you want to use JACK applications, uncomment this
        #jack.enable = true;

        # use the example session manager (no others are packaged yet so this is enabled by default,
        # no need to redefine it in your config for now)
        #media-session.enable = true;
    };

    # Enable touchpad support (enabled default in most desktopManager).
    # services.xserver.libinput.enable = true;

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