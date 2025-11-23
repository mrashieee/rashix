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
    emacs
    bemoji
    fuzzel
    rofi
    waybar
    librewolf
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
    ];
}