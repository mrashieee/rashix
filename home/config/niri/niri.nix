{ config, pkgs, lib, ... }:

let
  niriconfDir = "${config.home.homeDirectory}/confix/home/config/niri/config";
in

{
  home.file.".config/.keep" = {
    text = "";
  };

  home.activation.symlink-niri = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ${config.home.homeDirectory}/.config
    ln -sfn ${niriconfDir} ${config.home.homeDirectory}/.config/niri
  '';
}
