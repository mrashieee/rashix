{ config, pkgs, ... }:

{
  # Adds the Extension Manager GUI for GNOME Shell
  home.packages = with pkgs; [
    gnome-shell-extension-manager
  ];

  # Enables GNOME Shell in your session
  programs.gnome.enable = true;

  # Installs and activates only extensions that are available in pkgs.gnomeExtensions
  programs.gnome.extensions = with pkgs.gnomeExtensions; [
    user-theme
    dash-to-dock
    clipboard-indicator
    pomodoro
    system-monitor
    panel-osd
    sound-output-device-chooser
    appindicator
  ];
}
