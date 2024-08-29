{ config, ... }:
{

  services.xserver = {
    enable = true;
    xkb = {
      layout = "pl";
      variant = "";
    };
  };
  services.displayManager.sddm.enable = true;
  services.libinput.enable = true;
}
