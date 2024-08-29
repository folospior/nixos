{

  description = "Folo's Flake.";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    home-manager = { 
      url = "github:nix-community/home-manager/master"; 
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-flatpak.url = "github:gmodena/nix-flatpak";
  };
  
  outputs = { self, nixpkgs, home-manager, nix-flatpak, ... }:
  let
    system = "x86_64-linux";
    lib = nixpkgs.lib;
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      Folo-Laptop = lib.nixosSystem {
        inherit system;
	modules = [ ./system/configuration.nix nix-flatpak.nixosModules.nix-flatpak ];
      };
    };
    homeConfigurations = {
      folo = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
	modules = [ ./user/home.nix ];
      };
    };
  };
}
