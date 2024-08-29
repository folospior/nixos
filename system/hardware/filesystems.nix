{ config, pkgs, ... }:
{

  fileSystems = {
    "/" = {
      device = "/dev/disk/by-uuid/26086706-8a98-476a-aa06-0f748d26fe40";
      fsType = "ext4";
    };
    "/boot" = {
      device = "/dev/disk/by-uuid/B6F1-79EB";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };
  };

  swapDevices = [ ];
}
