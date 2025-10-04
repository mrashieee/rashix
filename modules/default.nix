{ config, ... }:

{
  imports =
    [
      ./boot/bootloader.nix
      ./desktop/desktopmanager.nix
      ./desktop/windowmanager.nix
      ./desktop/greeter.nix
      ./garbage-collector/gc.nix
      ./intrzone/zone.nix
      ./keyboard/keymap.nix
      ./mount/mount.nix
      ./services.nix
    ];
}