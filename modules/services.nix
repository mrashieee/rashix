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
    nameservers = [
        "8.8.8.8"
        "1.0.0.1"
        "1.1.1.1"
      ];
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

  # For Flatpak
  # systemd.services.flatpak-repo = {
  #   wantedBy = [ "multi-user.target" ];
  #   path = [ pkgs.flatpak ];
  #   script = ''
  #     flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  #   '';
  # };

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
    material-symbols
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
    asusd.enable = true;
    supergfxd.enable = true;
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
    flatpak = {
      enable = true;
      packages = with pkgs; [
        "com.github.PintaProject.Pinta"
        "org.localsend.localsend_app"
        "com.hperrin.StreamOverlay"
        "org.kde.okular"
        "org.gnome.Snapshot"
        "org.gnome.Calculator"
        "community.pathofbuilding.PathOfBuilding"
        "org.qbittorrent.qBittorrent"
      ];      
    };
  };

  # Environment/system packages
  environment.systemPackages = with pkgs; [
    ntfs3g
    networkmanagerapplet
    blueman
    wlroots
    wl-clipboard
    wtype
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
    wineWowPackages.stable
    winetricks

    # System utils
    btop
    nvtopPackages.full
    asusctl
    supergfxctl
    pciutils
  ];

  nixpkgs.config.permittedInsecurePackages = [
    "mbedtls-2.28.10"
  ];
}
