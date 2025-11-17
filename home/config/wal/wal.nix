{ config, pkgs, lib, ... }:

let
  walconfDir = "${config.home.homeDirectory}/confix/home/config/wal/config";
in

{
  home.file.".config/.keep" = {
    text = "";
  };

  home.activation.symlink-wal = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ${config.home.homeDirectory}/.config
    rm -rf ${config.home.homeDirectory}/.config/wal/templates
    ln -sfn ${walconfDir} ${config.home.homeDirectory}/.config/wal/templates
  '';
}