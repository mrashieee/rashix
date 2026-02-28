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
    freecad
    kicad

    # Entertainment
    blanket
    vlc
    vesktop
    spotify
    # krita

    # Utils
    # feh
    # eog
    # gthumb
    # imv
    mpv
    kitty
    gnuplot
    texliveFull
    zathura
    mupdf
    librewolf
    obsidian
    gnome-solanum
    fastfetch
    libreoffice-fresh
    openrgb-with-all-plugins

    # Gaming
    steam
    steam-run
    lutris
    mangohud
    rimsort
    mcpelauncher-ui-qt
  ];
}
