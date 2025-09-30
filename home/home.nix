{ config, pkgs, ... }:

{
  imports =
    [
      ./config/utils.nix
      ./config/shell.nix
    ];

  home = {
    username = "rashocean";
    homeDirectory = "/home/rashocean";
    stateVersion = "25.05";
    };
}
