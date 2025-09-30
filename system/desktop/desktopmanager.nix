{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
}