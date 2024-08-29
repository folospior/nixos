{ config, pkgs, ... }:
{

  users.users.folo = {
    isNormalUser = true;
    description = "Folo";
    extraGroups = [ "networkmanager" "wheel" ];
  };

}
