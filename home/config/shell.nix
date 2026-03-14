{ config, pkgs, lib, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo I use nixos, btw";
    };
    initExtra = ''
      # Run fastfetch
      ${pkgs.fastfetch}/bin/fastfetch

      # Aliases with arguments
      rashixupdate () {
        DIR = $(DIR)
        HOST = $(hostname)

        nix flake update "$DIR"
        sudo nixos-rebuild switch --flake "$DIR#$HOST"
      }

      # Set Prompt
      # export PS1="\[\e[38;5;75m\]\u@\h \[\e[38;5;113m\]\w \[\e[38;5;189m\]\$ \[\e[0m\]"
    '';
  };
}
