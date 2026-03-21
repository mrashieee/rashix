{ config, pkgs, lib, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo I use nixos, btw";
    };
    initExtra = ''
      # Run fastfetch
      if [[ -z "$FASTFETCH_SHOWN" && "$SHLVL" -eq 1 && "$TERM_PROGRAM" != "vscode" ]]; then
        ${pkgs.fastfetch}/bin/fastfetch
         export FASTFETCH_SHOWN=1
      fi
      
      # Set Prompt
      export PS1="\[\e[1;32m\][\u@\[\e[1;34m\]\h\[\e[1;32m\]:\w]\$➜ \[\e[0m\]"
    '';
  };
}
