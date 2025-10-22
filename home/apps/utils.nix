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
    feh
    eog
    gthumb
    vlc
    nemo
    kitty
    rofi
    fuzzel
    waybar
    librewolf
    obsidian
    fastfetch
    vesktop
    stremio
    libreoffice-fresh
    openrgb-with-all-plugins

    # Gaming
    steam
    lutris
    mangohud
    ];
}