{ config, pkgs, lib, ... }:

let
  roficonfDir = "${config.home.homeDirectory}/confix/home/config/rofi/config";
in

{
  home.file.".config/.keep" = {
    text = "";
  };

  home.activation.symlink-rofi = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ${config.home.homeDirectory}/.config
    rm -rf ${config.home.homeDirectory}/.config/rofi
    ln -sfn ${roficonfDir} ${config.home.homeDirectory}/.config/rofi
  '';
}