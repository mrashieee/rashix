{ config, pkgs, ... }:

{
  # Stylix theming
  stylix = {
    enable = true;
    image = "/home/rashocean/confix/assets/wallpapers/guts-armour.jpg";
    polarity = "dark";
    targets.gtk.enable = true;
    targets.qt.enable = true;
  };

  environment.systemPackages = with pkgs; [
    hellwal
  ];
}