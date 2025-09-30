{ config, pkgs, ... }:

{
  imports =
    [
      ./utils.nix
      ./shell.nix
    ];

  home = {
    username = "rashocean";
    homeDirectory = "/home/rashocean";
    stateVersion = "25.05";
    };
}
