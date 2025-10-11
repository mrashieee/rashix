{ config, pkgs, lib, ... }:

let
  # Path to your cloned Hyprland config repo
  hyprconfDir = "${config.home.homeDirectory}/confix/home/config/hyprland/hypr";
in

{
  # Optional: ensure .config exists
  home.file.".config/.keep" = {
    text = "";
  };

  # Create a symlink from your repo to ~/.config/hypr automatically
  home.activation.symlink-hypr = lib.hm.dag.entryAfter ["writeBoundary"] ''
    echo "Creating symlink for Hyprland config..."
    mkdir -p ${config.home.homeDirectory}/.config
    ln -sfn ${hyprconfDir} ${config.home.homeDirectory}/.config/hypr
  '';
}
