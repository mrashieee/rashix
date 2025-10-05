{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gnomeExtensions.user-themes
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.sound-output-device-chooser
    gnomeExtensions.appindicator
  ];

  dconf.settings = {
    "org/gnome/shell" = {
      enabled-extensions = [
        "user-theme@gnome-shell-extensions.gcampax.github.com"
        "clipboard-indicator@tudmotu.com"
        "sound-output-device-chooser@kgshank.net"
        "appindicatorsupport@rgcjonas.gmail.com"
      ];
    };
  };
}
