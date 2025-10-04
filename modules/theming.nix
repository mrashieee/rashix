{ config, pkgs, ... }:
let
  wallpaper = ../assets/wallpapers/silksong.jpg;
in
{
  # Stylix theming
  stylix = {
    enable = true;
    image = builtins.toString wallpaper;
    polarity = "dark";
    targets.gtk.enable = true;
    targets.qt.enable = true;
  };

  environment.systemPackages = with pkgs; [
    hellwal
  ];
}