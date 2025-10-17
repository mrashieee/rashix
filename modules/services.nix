{ config, pkgs, ... }:

{
  # Networking & Bluetooth
  networking.networkmanager = {
    enable = true;
    wifi = {
      powersave = false;
    };
  };
  hardware.bluetooth.enable = true;

  # File manager
  programs = {
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugins
        thunar-volman
      ];
    };
  };

  # Fonts
  fonts = {
    packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    noto-fonts-cjk-sans
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    nerd-fonts.droid-sans-mono
    font-awesome
  ];
  fontconfig = {
    defaultFonts = {
      emoji = [ "Noto Color Emoji" ]; # or use "OpenMoji Color"
      };
    };
  };

  # System services
  security.polkit.enable = true;
  xdg.portal.enable = true;
  services.printing.enable = true;
  services.gvfs.enable = true;
  services.dbus.enable = true;



  # Pipewire sound
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # jack.enable = true;      # Uncomment if needed
    # media-session.enable = true;  # Optional
  };

  # Environment/system packages
  environment.systemPackages = with pkgs; [
    networkmanagerapplet
    blueman
    kitty
    wlroots
    wl-clipboard
    cliphist
    xwayland-satellite
    libnotify
    mako
    grim
    slurp
    brightnessctl
    hyprlock
    hypridle
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    rofi
    waybar
    ffmpegthumbnailer

    # System utils
    btop
    nvtopPackages.full
  ];
}
