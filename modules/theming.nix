{ config, pkgs, ... }:

{
  # Stylix theming
  stylix = {
    enable = true;
    image = null;
    polarity = "dark";
    targets.gtk.enable = true;
    targets.qt.enable = true;
  };

  environment.systemPackages = with pkgs; [
    stylix
    hellwal
  ];
}