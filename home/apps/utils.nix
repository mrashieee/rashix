 { config, pkgs, ... }:

 { 
  # Home utils
  home.packages = with pkgs; [
    # Development
    vscode
    neovim
    gcc
    nodejs
    python3

    # Utils
    librewolf
    obsidian
    fastfetch
    vesktop
    stremio
    libreoffice-fresh

    # Gaming
    steam
    lutris
    mangohud
    ];
}