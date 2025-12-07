{ config, pkgs, ... }:
 
{
  # Fonts
  fonts = {
    packages = with pkgs; [
      corefonts
      vista-fonts
      maple-mono.NF-CN
      noto-fonts
      noto-fonts-color-emoji
      noto-fonts-cjk-sans
      nerd-fonts.jetbrains-mono
      nerd-fonts.fira-code
      nerd-fonts.droid-sans-mono
      font-awesome
      material-symbols
    ];
    fontconfig = {
      defaultFonts = {
        emoji = [ "Noto Color Emoji" ]; # or use "OpenMoji Color"
      };
    };
  };
}