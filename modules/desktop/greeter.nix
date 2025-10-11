{ config, pkgs, ... }:

{
  # Enable the greeter.
  # services.displayManager.sddm.enable = true;
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
      command = "${pkgs.greetd.tuigreet}/bin/tuigreet --sessions ${config.services.displayManager.sessionData.desktops}/share/xsessions:${config.services.xserver.displayManager.sessionData.desktops}/share/wayland-sessions --remember --remember-user-session";
      user = "greeter";
      };
    };
  };
}
