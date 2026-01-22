{ config, pkgs, ... }:

{
  swapDevices = [
    {
      device = "/swapfile";
      size = 16 * 1024;
    }
  ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs;
    [ nvidia-vaapi-driver ];
  };
  
  boot.kernelParams = [
    "nvidia-drm.modeset=1"
  ];

  hardware.enableRedistributableFirmware = true;

  services.xserver.videoDrivers =
    [ "nvidia" ];

  hardware.nvidia = {
    open = false;
    nvidiaSettings = true;
    modesetting.enable = true;
    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };
    intelBusId = "PCI:0:2:0";
    nvidiaBusId = "PCI:1:0:0";
    };
  };
}
