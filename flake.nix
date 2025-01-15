{
  description = "Ficache's system flake";

  inputs = {

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    
    envycontrol.url = "github:bayasdev/envycontrol";
    
    stylix.url = "github:danth/stylix";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:

    let
      system = "x86_64-linux";
    in {

      # ficache-nixos - system hostname
      nixosConfigurations.ficache-nixos = nixpkgs.lib.nixosSystem {
        specialArgs = {
          nixpkgs.config.allowUnfree = true;
          inherit inputs system;
        };
        modules = [
          ./nixos/configuration.nix
          inputs.stylix.nixosModules.stylix
        ];
      };

      homeConfigurations.ficache = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.${system};
        modules = [ 
          ./home-manager/home.nix 
          inputs.nixvim.homeManagerModules.nixvim
          inputs.stylix.homeManagerModules.stylix 
        ];
      };
    };
  
}
