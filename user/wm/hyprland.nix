{ config, pkgs, ... }:
{

  wayland.windowManager.hyprland = {
    enable = true;
    # config here soon
  }; 

  programs.wofi = {
    enable = true;
    # config here soon
  };
}
