{ config, pkgs, ... }:

{
  # Git enable
  programs.git = {
   enable = true;
   userName = "Muhammad Rashid K";
   userEmail = "mrashieee@gmail.com";
   extraConfig = {
    init.defaultBranch = "main";
    safe.directory = "/etc/nixos";
    safe.directory = "/home/rashocean/confix";
   };
  };
  
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
    equibop
    ];
}
