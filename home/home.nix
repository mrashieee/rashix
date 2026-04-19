{ config, pkgs, ... }:

{
  imports =
    [
      ./apps/utils.nix
      ./config/git.nix
      ./config/shell.nix
      ./ai.nix
    ];

  home = {
    username = "rashocean";
    homeDirectory = "/home/rashocean";
    stateVersion = "26.05";
    };
}
