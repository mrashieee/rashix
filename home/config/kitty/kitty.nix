{ config, pkgs, lib, ... }:

let
  kittyconfDir = "${config.home.homeDirectory}/confix/home/config/kitty/config";
in

{
  home.file.".config/.keep" = {
    text = "";
  };

  home.activation.symlink-kitty = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ${config.home.homeDirectory}/.config
    rm -rf ${config.home.homeDirectory}/.config/kitty
    ln -sfn ${kittyconfDir} ${config.home.homeDirectory}/.config/kitty
  '';
}