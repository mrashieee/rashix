{ config, pkgs, lib, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo I use nixos, btw";
      ai-mode = "sudo systemctl start ollama open-webui";
      game-mode = "sudo systemctl stop ollama open-webui";
      ai-status = ''
        echo "=== AI Services ==="
        systemctl is-active --quiet ollama && echo "  Ollama: Running" || echo "  Ollama: Offline"
        systemctl is-active --quiet open-webui && echo "  Open-WebUI: Running" || echo "  Open-WebUI: Offline"

        nvidia-smi --query-gpu=name,utilization.gpu,memory.used,memory.total,temperature.gpu \
        --format=csv,noheader,nounits | while IFS=, read -r name util memused memtotal temp; do

        RESET="\033[0m"

        if [ "$temp" -lt 65 ]; then TCOLOR="\033[1;32m";
        elif [ "$temp" -lt 80 ]; then TCOLOR="\033[1;33m";
        else TCOLOR="\033[1;31m"; fi
        memperc=$(( memused * 100 / memtotal ))

        echo "=== GPU Usage ==="
        printf "  %-12s : %s\n" "GPU" "$name"
        printf "  %-12s : %3s%%\n" "Usage" "$util"
        printf "  %-12s : %4s/%4s MB (%2s%%)\n" "VRAM" "$memused" "$memtotal" "$memperc"
        printf "  %-12s : $TCOLOR%s⁰C$RESET\n" "Temp" "$temp"
        done

        echo "=== Loaded Models ==="
        if ollama ps >/dev/null 2>&1; then
          if ollama ps | tail -n +2 | grep -q .; then
            ollama ps
          else
            echo "  No models running"
          fi
        else
          echo "  Couldn't get models, Ollama might be offline"
        fi
      '';
    };

    initExtra = ''
      # Run fastfetch
      if [[ -z "$FASTFETCH_SHOWN" && "$SHLVL" -eq 1 && "$TERM_PROGRAM" != "vscode" ]]; then
        ${pkgs.fastfetch}/bin/fastfetch
         export FASTFETCH_SHOWN=1
      fi
      
      # Set Prompt
      export PS1="\[\e[1;32m\][\u@\[\e[1;34m\]\h\[\e[1;32m\]:\w]\$ \[\e[0m\]"
    '';
  };
}
