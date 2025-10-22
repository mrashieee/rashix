{ config, pkgs, ... }:

{
  imports =
    [
      ./apps/utils.nix
      ./apps/theming.nix
      ./config/git.nix
      ./config/shell.nix
      ./config/hyprland/hyprland.nix
      ./config/niri/niri.nix
      ./config/waybar/waybar.nix
      ./config/mango/mango.nix
      ./config/matugen/matugen.nix
      ./config/kitty/kitty.nix
    ];

  home = {
    username = "rashocean";
    homeDirectory = "/home/rashocean";
    stateVersion = "25.05";
    };
}
