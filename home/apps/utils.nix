{ config, pkgs, ... }:

{
  programs.emacs = {
  enable = true;
  extraPackages = epkgs: [
      epkgs.org
      epkgs.org-contrib
      epkgs.org-ref
      epkgs.gnuplot
      epkgs.pdf-tools
    ];
  };

  # Home utils
  home.packages = with pkgs; [
    # Development
    vscode
    neovim
    gcc
    nodejs
    python3

    # Entertainment
    blanket
    vlc
    vesktop
    spotify
    krita

    # Utils
    feh
    eog
    gthumb
    imv
    mpv
    mpvpaper
    nemo
    file-roller
    kitty
    # gnuplot
    # texliveFull
    # zathura
    bemoji
    fuzzel
    rofi
    waybar
    librewolf-bin
    obsidian
    gnome-solanum
    fastfetch
    libreoffice-fresh
    openrgb-with-all-plugins
    zip
    unzip

    # Gaming
    steam
    steam-run
    lutris
    mangohud
    rimsort
    mcpelauncher-ui-qt
  ];
}