{ config, pkgs, ... }:

{
  # Installs and activates only extensions that are available in pkgs.gnomeExtensions
  home.packages = with pkgs.gnomeExtensions; [
    user-themes
    clipboard-indicator
    sound-output-device-chooser
    appindicator
  ];
}
