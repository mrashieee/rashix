{ config, pkgs, lib, ... }:

let
  mangoconfDir = "${config.home.homeDirectory}/confix/home/config/mango/config";
in

{
  home.file.".config/.keep" = {
    text = "";
  };

  home.activation.symlink-mango = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ${config.home.homeDirectory}/.config
    ln -sfn ${mangoconfDir} ${config.home.homeDirectory}/.config/mango
  '';
}
