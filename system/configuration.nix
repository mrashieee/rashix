# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./driver/lapix.nix
      ./services.nix
      ./boot/bootloader.nix
      ./mount/mount.nix
      ./garbage-collector/gc.nix
      ./hosts/host.nix
      ./hosts/users.nix
      ./intrzone/zone.nix
      ./desktop/greeter.nix
      ./desktop/desktopmanager.nix
      ./desktop/windowmanager.nix
      ./keyboard/keymap.nix
    ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    neovim
  ];

  # Enable flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "25.05";

}
