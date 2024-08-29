{ config, pkgs, ... }:
{
  programs.wireshark.enable = true;
  users.users.folo.extraGroups = [ "wireshark" ];
}
