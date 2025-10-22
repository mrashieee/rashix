{ config, pkgs, lib, ... }:

let
  binPath = "${config.home.homeDirectory}/.local/bin";
  scriptSource = ../bin; # adjust this path if needed
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
  home.sessionPath = [ binPath ];
  home.activation.installScripts = lib.hm.dag.entryAfter ["writeBoundary"] ''
    echo "[home.activation] Installing scripts to ${binPath}..."

    mkdir -p ${binPath}
    cp -r --no-preserve=mode,ownership ${scriptSource}/* ${binPath}
    chmod +x ${binPath}/*
  '';
}