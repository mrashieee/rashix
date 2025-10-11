{ config, ... }:

{
  imports =
    [
      ./desktop/desktopmanager.nix
      ./desktop/windowmanager.nix
      ./desktop/greeter.nix
      ./bootloader.nix
      ./gc.nix
      ./zone.nix
      ./keymap.nix
      ./mount.nix
      ./services.nix
      ./theming.nix
    ];
}
