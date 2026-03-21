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
      # export PS1="\[\e[38;5;75m\]\u@\h \[\e[38;5;113m\]\w \[\e[38;5;189m\]\$ \[\e[0m\]"
    '';
  };
}
