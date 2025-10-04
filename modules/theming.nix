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
    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrains Mono";
      };
      sansSerif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      serif = {
        package = pkgs.montserrat;
        name = "Montserrat";
      };
      sizes = {
        applications = 12;
        terminal = 15;
        desktop = 11;
        popups = 12;
      };
    };
  };

  environment.systemPackages = with pkgs; [
    hellwal
    swww
  ];
}