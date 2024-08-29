{ config, pkgs, ... }:
{

  nixpkgs = {
    config.allowUnfree = true;
    hostPlatform = lib.mkDefault "x86_64-linux";
  };
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

}
