{ config, pkgs, ... }:

{
    programs.gnome.extensions = with pkgs.gnomeExtensions; [
      user-theme
      dash-to-dock
      clipboard-indicator
      gnome-shell-pomodoro
      system-monitor
      panel-osd
      sound-output-device-chooser
      appindicator
    ];
}