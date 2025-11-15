{ config, pkgs, lib, ... }:
let
  scriptNames = [ "applauncher" "bgselector" "powermenu" ];
in 
{
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo I use nixos, btw";
    };
    initExtra = ''
      # Run fastfetch
      ${pkgs.fastfetch}/bin/fastfetch

      # Set Prompt
      # export PS1="\[\e[38;5;75m\]\u@\h \[\e[38;5;113m\]\w \[\e[38;5;189m\]\$ \[\e[0m\]"
    '';
  };
  home = {
    sessionPath = [ "${config.home.homeDirectory}/.local/bin" ];
    file.".local/bin" = {
      source = ../bin;
    };
  };
}