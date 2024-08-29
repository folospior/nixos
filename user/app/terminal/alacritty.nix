{ config, pkgs, ... }:
{

  home.packages = [ pkgs.alacritty pkgs.kitty ]; #kitty is temporary
  programs.alacritty.enable = true;

}
