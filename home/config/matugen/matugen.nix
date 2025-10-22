{ config, pkgs, lib, ... }:

let
  matugenconfDir = "${config.home.homeDirectory}/confix/home/config/matugen/config";
in

{
  home.file.".config/.keep" = {
    text = "";
  };

  home.activation.symlink-matugen = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ${config.home.homeDirectory}/.config
    ln -sfn ${matugenconfDir} ${config.home.homeDirectory}/.config/matugen
  '';
}
