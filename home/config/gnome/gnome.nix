{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
  gnomeExtensions.gnome-shell-extension-manager
];

  programs.gnome.extensions = with pkgs.gnomeExtensions; [
    user-theme                              # gnome-shell-extension-user-theme
    dash-to-dock                           # gnome-shell-extension-dash-to-dock
    clipboard-indicator                    # gnome-shell-extension-clipboard-indicator
    pomodoro                              # gnome-shell-extension-pomodoro (may differ from gnome-shell-pomodoro)
    system-monitor                        # gnome-shell-extension-system-monitor
    panel-osd                            # gnome-shell-extension-panel-osd
    sound-output-device-chooser          # gnome-shell-extension-sound-output-device-chooser
    appindicator                         # gnome-shell-extension-appindicator
  ];
}
