{ config, pkgs, ... }:

{
  # Enable the greeter.

  # For SDDM
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "breeze";
    settings = {
      Theme = {
        Background = "etc/nixos/wallpapers/nix-black.jpg";
      };
    };
  };

  # services.xserver.displayManager.gdm.enable = true;
  # services.greetd = {
  #   enable = true;
  #   settings = {
  #     default_session = {
  #     command = "${pkgs.greetd.tuigreet}/bin/tuigreet --sessions ${config.services.displayManager.sessionData.desktops}/share/xsessions:${config.services.xserver.displayManager.sessionData.desktops}/share/wayland-sessions --remember --remember-user-session";
  #     user = "greeter";
  #     };
  #   };
  # };
}
