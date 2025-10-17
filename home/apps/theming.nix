{ config, pkgs, ... }:

{
    gtk = {
        enable = true;

        theme = {
            package = pkgs.gnome-themes-extra;
            name = "Adwaita-dark";
        };

        icontheme = {
            package = pkgs.adwaita-icon-theme;
            name = "Adwaita";
        };

        font = {
            name = "Sans";
            size = 12;
        };

        gtk3.extraConfig.Settings = "gtk-application-prefer-dark-theme=1";
        gtk4.extraConfig.Settings = "gtk-application-prefer-dark-theme=1";
    };

    dconf = {
        enable = true;
        settings = {
            "org/gnome/desktop/interface" = {
                color-scheme = "prefer-dark";
            };
        };
    };
}