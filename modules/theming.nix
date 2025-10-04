{ config, pkgs, ... }:

{
  # Stylix theming
  stylix = {
    enable = true;
    image = ./../assets/wallpapers/black-hole.jpg;
    polarity = "dark";
    targets.gtk.enable = true;
    targets.qt.enable = true;
  };

  environment.systemPackages = with pkgs; [
    hellwal
  ];
}