{ pkgs, config, ... }:

{
    config.stylix = {
        enable = true;
        image = ../assets/wallpapers/nix-black.jpg;
        polarity = "dark";
        targets = {
            gtk = true;
            qt = true;
            nixos-icons.enable = true;
        };
        fonts = {
        sizes = {
          terminal = 11;
          applications = 11;
          popups = 11;
        };
        #
        serif = {
          #     name = "CaskaydiaCove Nerd Font";
          #     package = pkgs.nerd-fonts.caskaydia-cove;
          package = pkgs.nerd-fonts.jetbrains-mono;
          name = "JetBrains Mono Nerd Font";
        };
        #
        sansSerif = {
          #     name = "CaskaydiaCove Nerd Font";
          #     package = pkgs. nerd-fonts.caskaydia-cove;
          package = pkgs.nerd-fonts.jetbrains-mono;
          name = "JetBrains Mono Nerd Font";
        };
        #
        monospace = {
          #     package = pkgs. nerd-fonts.caskaydia-cove;
          #     name = "CaskaydiaCove Nerd Font";
          package = pkgs.nerd-fonts.jetbrains-mono;
          name = "JetBrains Mono Nerd Font";

          # emoji = {
          #   package = pkgs.noto-fonts-emoji;
          #   name = "Noto Color Emoji";
          # };
        };
      };
    };
}