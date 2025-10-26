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
    imv
    mpv
    mpvpaper
    vlc
    nemo
    kitty
    bemoji
    fuzzel
    rofi-wayland
    rofi-wayland-unwrapped
    rofi-emoji-wayland
    waybar
    librewolf
    obsidian
    fastfetch
    vesktop
    stremio
    libreoffice-fresh
    openrgb-with-all-plugins
    zip
    unzip

    # Gaming
    steam
    lutris
    mangohud
    ];
}