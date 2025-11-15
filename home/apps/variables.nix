{ config, pkgs, ... }:

{
  home.sessionVariables = {
    XCURSOR_THEME = "Bibata-Modern-Ice";
    XCURSOR_SIZE = "18";
    NIXOS_OZONE_WL = "1";
    Editor = "nano";
    Visual = "nano";
  };


  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/interface" = {
          color-scheme = "prefer-dark";
          gtk-theme = "adw-gtk3-dark";
      };
    };
  };
  
  home.file.".local/bin/xdg-open".text = ''
  #!/usr/bin/env bash
  dolphin "$@"
  '';
  home.file.".local/bin/xdg-open".executable = true;

}