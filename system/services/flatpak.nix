{ config, pkgs, ... }:
{
   services.flatpak = {
     enable = true;
     remotes = [
       {
         name = "sober";
         location = "https://sober.vinegarhq.org/repo;
       }
     ];
     packages = [
       "org.vinegarhq.Sober"
     ];
  };
}
