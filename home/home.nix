{ config, pkgs, ... }:

{
  imports =
    [
      ./apps/utils.nix
      ./config/git.nix
      ./config/shell.nix
    ];

  home = {
    username = "rashocean";
    homeDirectory = "/home/rashocean";
    stateVersion = "25.05";
    };
}
