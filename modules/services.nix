{ config, pkgs, ... }:

{
  # Networking & Bluetooth
  networking = {
    networkmanager = {
      enable = true;
      wifi = {
        powersave = false;
      };
    };
    nameservers = [
        "8.8.8.8"
        "1.0.0.1"
        "1.1.1.1"
      ];
  };
  hardware.bluetooth.enable = true;

  # System services
  security= {
    polkit.enable = true;
    rtkit.enable = true;
  };
  
  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-kde ];
    config.common.default = "kde";
  };
  
  services = {
    hardware.openrgb.enable = true;
    asusd.enable = true;
    supergfxd.enable = true;
    printing.enable = true;
    gvfs.enable = true;
    dbus.enable = true;
    udisks2.enable = true;
    pulseaudio.enable = false;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      wireplumber.enable = true;
      # jack.enable = true;      # Uncomment if needed
      # media-session.enable = true;  # Optional
    };
  };
}
