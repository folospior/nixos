{ config, pkgs, ... }:
{
   services.flatpak = {
     enable = true;
     remotes = [
       {
         name = "sober";
         location = "https://sober.vinegarhq.org/repo";
       }

       {
         name = "flathub";
	 location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
       }
     ];
     packages = [
       "org.vinegarhq.Sober"
     ];
  };
}
