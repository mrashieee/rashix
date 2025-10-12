{ config, pkgs, ... }:

{
  # Stylix theming
  # stylix = {
  #   enable = true;
  #   image = ./../assets/wallpapers/nix-black.jpg;
  #   polarity = "dark";
  # };

  environment.systemPackages = with pkgs; [
    matugen
    imagemagick
    swww
  ];
}
