{ config, lib, pkgs, ... }:
{
   services.flatpak = {
     enable = true;
     remotes = lib.mkOptionDefault [
#      {
#        name = "sober";
#        location = "https://sober.vinegarhq.org/repo";
#      }
       {
         name = "flathub";
         location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
       }
     ];
    packages = [
#     { appId = "org.vinegarhq.Sober"; origin = "sober"; }
    ];
  };
}
