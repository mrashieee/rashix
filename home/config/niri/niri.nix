{ config, pkgs, lib, ... }:

let
  # Path to your Niri config file in your repo
  niriConfFile = "${config.home.homeDirectory}/confix/home/config/niri/config";
in

{
  # Ensure .config exists
  home.file.".config/.keep" = {
    text = "";
  };

  # Activation script to symlink the Niri config
  home.activation.symlink-niri = lib.hm.dag.entryAfter ["writeBoundary"] ''
    mkdir -p ${config.home.homeDirectory}/.config
    ln -sfn ${niriConfFile} ${config.home.homeDirectory}/.config/niri
  '';
}
