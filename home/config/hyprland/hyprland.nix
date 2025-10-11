{ config, pkgs, lib, ... }:

let
  hyprconfDir = "${config.home.homeDirectory}/confix/home/config/hyprland/hypr";
in

{
  home.file.".config/.keep" = {
    text = "";
  };

  home.activation.symlink-hypr = lib.hm.dag.entryAfter ["writeBoundary"] ''
    echo "Creating symlink for Hyprland config..."
    mkdir -p ${config.home.homeDirectory}/.config
    ln -sfn ${hyprconfDir} ${config.home.homeDirectory}/.config/hypr
  '';
}
