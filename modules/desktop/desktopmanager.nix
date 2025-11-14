{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.desktopManager.plasma6.enable = true;
  
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
    gwenview
    okular
    kate
  ];
  
  # services.xserver.desktopManager.gnome.enable = true;

  # Enable the COSMIC desktop environment
  # services.desktopManager.cosmic.enable = true;
}
