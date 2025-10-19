{ config, pkgs, ... }:

{
    gtk = {
        enable = true;

        theme = {
            package = pkgs.gnome-themes-extra;
            name = "Adwaita-dark";
        };

        gtk3.extraConfig.Settings = "gtk-application-prefer-dark-theme=1";
        gtk4.extraConfig.Settings = "gtk-application-prefer-dark-theme=1";
    };

    qt = {
        style.name = "adwaita-dark";
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