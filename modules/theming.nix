{ config, pkgs, ... }:

{
  # Stylix theming
  stylix = {
    enable = true;
    image = builtins.toString ../assets/wallpapers/silksong.jpg;
    polarity = "dark";
    targets.gtk.enable = true;
    targets.qt.enable = true;
  };

  environment.systemPackages = with pkgs; [
    hellwal
  ];
}