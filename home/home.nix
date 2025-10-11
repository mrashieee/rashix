{ config, pkgs, ... }:

{
  imports =
    [
      ./config/git.nix
      ./config/shell.nix
      ./config/hyprland/hyprland.nix
      ./config/niri/niri.nix
      ./apps/utils.nix
    ];

  home = {
    username = "rashocean";
    homeDirectory = "/home/rashocean";
    stateVersion = "25.05";
    };
}
