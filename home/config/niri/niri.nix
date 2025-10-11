{ config, pkgs, lib, ... }:

let
  niriConfFile = "${config.home.homeDirectory}/confix/home/config/niri/config";
in

{
  home.file.".config/.keep" = {
    text = "";
  };

  home.activation.symlink-niri = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ${config.home.homeDirectory}/.config
    ln -sfn ${niriConfFile} ${config.home.homeDirectory}/.config/niri
  '';
}
