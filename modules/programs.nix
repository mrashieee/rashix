{ config, pkgs, ... }:

{
  # Obs Studio
  programs.obs-studio = {
    enable = true;
    enableVirtualCamera = true;
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

  programs = {
    xwayland.enable = true;
    appimage.enable = true;
    appimage.binfmt = true;
  };

  
  # Flatpaks
  services.flatpak = {
    enable = true;
    packages = with pkgs; [
      "com.github.PintaProject.Pinta"
      "org.localsend.localsend_app"
      "com.hperrin.StreamOverlay"
      "org.kde.okular"
      "org.gnome.Calculator"
      "community.pathofbuilding.PathOfBuilding"
      "org.qbittorrent.qBittorrent"
      "com.stremio.Stremio"
      "com.pokemmo.PokeMMO"
      "io.github.OpenToonz"
      "org.polymc.PolyMC"
      "org.onlyoffice.desktopeditors"
    ];      
  };

  # Environment/system packages
  environment.systemPackages = with pkgs; [
    ntfs3g
    brightnessctl
    ffmpegthumbnailer
    jellyfin-ffmpeg
    wineWow64Packages.unstable
    winetricks
    dxvk
    freetype
    dconf
    btop
    nvtopPackages.full
    pciutils
    mesa-demos
    vulkan-tools
    libjpeg
    libtiff
    libnotify
    asusctl
    supergfxctl
    zip
    unzip
    rar
    unrar

    kdePackages.kdeconnect-kde
  ];
}
