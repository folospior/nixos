{ config, pkgs, ... }:
{
  environment.systemPackages = [ pkgs.wireshark ];
  programs.wireshark.enable = true;
  users.users.folo.extraGroups = [ "wireshark" ];
}
