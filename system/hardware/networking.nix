{ config, lib, pkgs,  ... }:
{

  networking = {
    hostName = "Folo-Laptop";
    networkmanager.enable = true;
    useDHCP = lib.mkDefault true;
  };

}
