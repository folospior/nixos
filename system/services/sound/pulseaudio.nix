{ config, pkgs, ... }:
{

  hardware.pulseaudio.enable = true;
  security.rtkit.enable = true;

}
