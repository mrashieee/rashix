{ config, pkgs, ... }:

{
    gtk = {
        enable = true;

        theme = {
            package = pkgs.adw-gtk3;
            name = "adw-gtk3-dark";
        };

        iconTheme = {
            package = pkgs.papirus-icon-theme;
            name = "Papirus-Dark";
        };

        gtk3.extraConfig.Settings = "gtk-application-prefer-dark-theme=1";
        gtk4.extraConfig.Settings = "gtk-application-prefer-dark-theme=1";
    };


    qt = {
        enable = true;
        platformTheme.name = "gtk";
        style.name = "adwaita-dark";
    };

    home.pointerCursor = {
        enable = true;
        gtk.enable = true;
        x11.enable = true;
        hyprcursor.enable = true;
        package = pkgs.bibata-cursors;
        name = "Bibata-Modern-Ice";
        size = 18;
    };

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

    home.packages = with pkgs; [
        hellwal
        pywal16
        watchdog
        matugen
        imagemagick
        swww
        waypaper
        pywalfox-native
    ];
}