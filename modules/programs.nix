{ config, pkgs, ... }:

{

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
  programs.xwayland.enable = true;
  
  # Flatpaks
  services.flatpak = {
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
      "com.stremio.Stremio"
      "dev.mariinkys.StarryDex"
      "io.github.OpenToonz"
    ];      
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
    wineWowPackages.unstable
    winetricks
    freetype

    # System utils
    btop
    nvtopPackages.full
    asusctl
    supergfxctl
    pciutils
    mesa-demos
    vulkan-tools
  ];
}