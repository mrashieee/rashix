{ config, pkgs, ... }:

{
  # Enable the greeter.
  # services.xserver.displayManager.gdm.enable = true;
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
      command = "${pkgs.greetd.tuigreet}/bin/tuigreet --background  /home/rashocean/Pictures/Wallpapers/nix-black.jpg --sessions ${config.services.displayManager.sessionData.desktops}/share/xsessions:${config.services.xserver.displayManager.sessionData.desktops}/share/wayland-sessions --remember --remember-user-session";
      user = "greeter";
      };
    };
  };

}