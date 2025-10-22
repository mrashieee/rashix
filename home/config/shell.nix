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

      # Set Prompt
      # export PS1="\[\e[38;5;75m\]\u@\h \[\e[38;5;113m\]\w \[\e[38;5;189m\]\$ \[\e[0m\]"
    '';
  };
  home.sessionPath = [ "${config.home.homeDirectory}/.local/bin" ];
  home.file.".local/bin" = {
    source = ../bin;
  };
  home.activation.makeScriptsExecutable = lib.hm.dag.entryAfter ["writeBoundary"] ''
    chmod +x ${config.home.homeDirectory}/.local/bin/*
  '';
}