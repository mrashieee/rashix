{ config, pkgs, ... }:

let
    hyprconf = /home/${USER}/confix/home/config/hyprland/hypr;
in

{
    home.file.".config/hypr" = {
        source = "${hyprconf}";
        link = true;
    };
}