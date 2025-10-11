{ config, pkgs, ... }:

{
  # Networking & Bluetooth
  networking.networkmanager = {
    enable = true;
    wifi = {
      powersave = false;
    };
  };
  hardware.bluetooth.enable = true;

  # System services
  security.polkit.enable = true;
  xdg.portal.enable = true;
  services.printing.enable = true;

  # Fonts
  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-emoji
      noto-fonts-cjk-sans
      nerd-fonts.jetbrains-mono
      nerd-fonts.fira-code
      nerd-fonts.droid-sans-mono
      font-awesome
    ];
    fontconfig = {
      defaultFonts = {
        emoji = [ "Noto Color Emoji" ]; # or use "OpenMoji Color"
      };
    };
  };

  # Pipewire sound
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # jack.enable = true;      # Uncomment if needed
    # media-session.enable = true;  # Optional
  };

  # Environment/system packages
  environment.systemPackages = with pkgs; [
    wlroots
    wl-clipboard
    xwayland-satellite
    mako
    kitty
    grim
    slurp
    brightnessctl
    hyprlock
    hypridle
    xdg-desktop-portal
    kdePackages.xdg-desktop-portal-kde
    xdg-desktop-portal-hyprland        # UI for automounting
    # Temporary
    rofi
    waybar
  ];
}
