{ config, lib, pkgs, ...}:
{

  hardware.opengl.enable = true;
  services.xserver.videoDrivers = [ "nvidia" "modesetting" ];
  hardware.nvidia = {
    modesetting.enable = true;
    nvidiaSettings = true;
    prime = {
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
      sync.enable = true;
    };
  };

}
