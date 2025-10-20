{ config, pkgs, lib, ... }:

let
  waybarconfDir = "${config.home.homeDirectory}/confix/home/config/waybar/config";
in

{
  home.file.".config/.keep" = {
    text = "";
  };

  home.file.".config/waybar" = {
    recursive = true;
    mode = "0755";
  };

  home.activation.symlink-waybar = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ${config.home.homeDirectory}/.config
    ln -sfn ${waybarconfDir} ${config.home.homeDirectory}/.config/waybar
  '';
}