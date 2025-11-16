{ config, pkgs, ... }:

{
  # Enable the greeter.

  # For SDDM
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  environment.systemPackages = with pkgs; [
  (pkgs.writeTextDir "share/sddm/themes/breeze/theme.conf.user" ''
    [General]
    background=/home/rashocean/confix/assets/wallpapers/nix-black.jpg
  '')
];

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
