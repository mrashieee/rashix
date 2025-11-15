{ config, pkgs, ... }:

{
  home.sessionVariables = {
    XCURSOR_THEME = "Bibata-Modern-Ice";
    XCURSOR_SIZE = "18";
    NIXOS_OZONE_WL = "1";
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
  
  xdg.mimeApps.defaultApplications = {
    "inode/directory" = "dolphin.desktop";
    "application/x-directory" = "dolphin.desktop";
    "x-directory/normal" = "dolphin.desktop";
  };
}