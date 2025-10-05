{ config, pkgs, ... }:

{
  # Networking & Bluetooth
  networking.networkmanager.enable = true;
  hardware.bluetooth.enable = true;

  # System services
  services.dbus.enable = true;
  services.gvfs.enable = true;
  security.polkit.enable = true;
  xdg.portal.enable = true;
  services.printing.enable = true;

  # Pipewire sound
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # jack.enable = true;      # Uncomment if needed
    # media-session.enable = true;  # Optional
  };

  # Disk management & automount
  services.udisks2.enable = true;

  # Environment/system packages
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
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    udiskie        # GUI for automounting
  ];
}
