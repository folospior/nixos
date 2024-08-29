{ config, ... }:
{

  services.xserver = {
    enable = true;
    displayManager.sddm.enable = true;
    xkb = {
      layout = "pl";
      variant = "";
    };
    libinput.enable = true;
}
