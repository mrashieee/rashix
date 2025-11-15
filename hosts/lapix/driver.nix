{ config, pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs;
    [ nvidia-vaapi-driver ];
  };

  services.xserver.videoDrivers =
    [ "modesetting" "nvidia" ];

  hardware.nvidia = {
    open = true;
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
