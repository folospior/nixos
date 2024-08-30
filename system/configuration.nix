# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:
{

  imports = [ 
      ./bootloader.nix
      ./hardware/cpu.nix
      ./hardware/filesystems.nix
      ./hardware/kernel.nix
      ./hardware/networking.nix
      ./hardware/nvidia.nix
      ./locale.nix
      ./nix-config.nix
      ./services/bluetooth.nix
      ./services/flatpak.nix
      ./services/sound/pipewire.nix
      ./services/xserver.nix
      ./user/user.nix
      ./wm/hyprland.nix
      ./wireshark.nix
    ];
  system.stateVersion = "24.05";
}
