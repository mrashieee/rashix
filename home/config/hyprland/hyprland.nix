{ config, pkgs, lib, ... }:

let
  hyprconfDir = "${config.home.homeDirectory}/confix/home/config/hyprland/config";
in

{
  home.file.".config/.keep" = {
    text = "";
  };

  home.activation.symlink-hypr = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ${config.home.homeDirectory}/.config
    ln -sfn ${hyprconfDir} ${config.home.homeDirectory}/.config/hypr
  '';
}
