{ config, pkgs, ... }:

{
  # Stylix theming
  stylix = {
    enable = true;
    image = ./../assets/wallpapers/nix-black.jpg;
    polarity = "dark";
    targets.gtk.enable = true;
    targets.qt.enable = true;
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 20;
    };
  };

  environment.systemPackages = with pkgs; [
    hellwal
    swww
  ];
}