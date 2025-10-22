{ config, pkgs, ... }:

{
  # Networking & Bluetooth
  networking = {
    networkmanager = {
      enable = true;
      wifi = {
        powersave = false;
      };
    };
  };
  hardware.bluetooth.enable = true;

  # Obs Studio
  programs.obs-studio = {
    enable = true;
    enableVirtualCamera = true;

    # optional Nvidia hardware acceleration
    package = (
      pkgs.obs-studio.override {
        cudaSupport = true;
      }
    );

    plugins = with pkgs.obs-studio-plugins; [
      wlrobs
      obs-backgroundremoval
      obs-pipewire-audio-capture
      obs-vaapi #optional AMD hardware acceleration
      obs-gstreamer
      obs-vkcapture
    ];
  };

  # Fonts
  fonts = {
    packages = with pkgs; [
    maple-mono.NF-CN
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
  security= {
    polkit.enable = true;
    rtkit.enable = true;
  };
  
  xdg.portal = {
    enable = true;
    wlr.enable = true;
  };
  
  services = {
    hardware.openrgb.enable = true;
    printing.enable = true;
    gvfs.enable = true;
    dbus.enable = true;
    udisks2.enable = true;
    pulseaudio.enable = false;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      wireplumber.enable = true;
      # jack.enable = true;      # Uncomment if needed
      # media-session.enable = true;  # Optional
    };
  };

  # Environment/system packages
  environment.systemPackages = with pkgs; [
    ntfs3g
    networkmanagerapplet
    blueman
    wlroots
    wl-clipboard
    cliphist
    xwayland-satellite
    libjpeg
    libtiff
    libnotify
    mako
    grim
    slurp
    brightnessctl
    hyprlock
    hypridle
    xdg-desktop-portal
    xdg-desktop-portal-wlr
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    ffmpegthumbnailer
    jellyfin-ffmpeg
    wlogout

    # System utils
    btop
    nvtopPackages.full
  ];
}
