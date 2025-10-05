{ config, pkgs, ... }:

{
  imports =
    [
      ./config/git.nix
      ./config/shell.nix
      ./config/gnome/gnome.nix
      ./apps/utils.nix
    ];

  home = {
    username = "rashocean";
    homeDirectory = "/home/rashocean";
    stateVersion = "25.05";
    };
}
