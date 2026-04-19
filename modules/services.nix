{ config, pkgs, ... }:

{
  # Networking & Bluetooth
  networking = {
    networkmanager = {
      enable = true;
      wifi = {
        powersave = false;
      };
    };
    firewall = {
      enable = true;
      allowedTCPPorts = [ 3000 11434 ];
    };
    nameservers = [
        "1.1.1.1"
      ];
  };
  hardware.bluetooth.enable = true;

  # Podman Virtualisation
  virtualisation.podman = {
    enable = true;
    dockerCompat = true;
  };

  # System services
  security= {
    polkit.enable = true;
    rtkit.enable = true;
  };
  
  xdg.portal = {
    enable = true;
    # wlr.enable = true;
    extraPortals = [ pkgs.kdePackages.xdg-desktop-portal-kde ];
    config.common.default = "kde";
  };
  
  services = {
    open-webui = {
      enable = true;
      port = 3000;
      host = "0.0.0.0";
      environment = {
        OLLAMA_BASE_URL = "http://127.0.0.1:11434";
        WEBUI_AUTH = "true";
        ENABLE_SIGNUP = "true";
        WEBUI_SEARCH_ENABLED = "true";
        WEBUI_LANGUAGE = "en";
      };
    };

    ollama = {
      enable = true;
      package = pkgs.ollama-cuda;
      openFirewall = true;
      environmentVariables = {
        OLLAMA_NUM_PARALLEL = "2";
        OLLAMA_MAX_LOADED_MODELS = "1";
      };
    };

    hardware.openrgb.enable = true;
    asusd.enable = true;
    supergfxd.enable = true;
    thermald.enable = true;
    printing.enable = true;
    gvfs.enable = true;
    dbus.enable = true;
    udisks2.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      wireplumber.enable = true;
      # jack.enable = true;      # Uncomment if needed
      # media-session.enable = true;  # Optional
    };
  };
}
