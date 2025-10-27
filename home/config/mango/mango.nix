{ config, pkgs, lib, ...}:

let
  mangoconfDir = "${config.home.homeDirectory}/confix/home/config/mango/config";
in

{
  home.file.".config/.keep" = {
    text = "";
  };

  home.activation.symlink-mango = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p ${config.home.homeDirectory}/.config
    rm -rf ${config.home.homeDirectory}/.config/mango
    ln -sfn ${mangoconfDir} ${config.home.homeDirectory}/.config/mango
  '';
  wayland.windowManager.mango = {
    enable = true;
    autostart_sh = ''
      set +e

      # Waybar
      waybar &

      # For Wallpaper
      swww-daemon &

      # Hypridle
      # hypridle &

      # Screen share
      # dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots
      systemctl --user set-environment XDG_CURRENT_DESKTOP=wlroots
    '';
  };
}
