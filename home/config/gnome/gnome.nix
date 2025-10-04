{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    gnomeExtensions.gnome-shell-extension-manager
  ];

  programs.gnome = {
    enable = true;
    extensions = with pkgs.gnomeExtensions; [
      user-theme
      dash-to-dock
      clipboard-indicator
      pomodoro
      system-monitor
      panel-osd
      sound-output-device-chooser
      appindicator
    ];
  };
}
