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
    affinity-nix.packages.x86_64-linux.v3

    # Entertainment
    blanket
    vlc
    stremio
    vesktop
    spotify

    # Utils
    feh
    eog
    gthumb
    imv
    mpv
    mpvpaper
    nemo
    kitty
    emacs
    bemoji
    fuzzel
    rofi-wayland
    rofi-wayland-unwrapped
    rofi-emoji-wayland
    waybar
    librewolf
    obsidian
    gnome-solanum
    fastfetch
    libreoffice-fresh
    openrgb-with-all-plugins
    zip
    unzip
    cbonsai

    # Gaming
    steam
    lutris
    mangohud
    ];
}