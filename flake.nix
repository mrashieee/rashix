{
  description = "Nixos config flake";

  inputs ={
    nixpkgs.url = "nixpkgs/nixos-25.05";

    # Home manager input
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
      };
    
    };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations = {
      lapix = nixpkgs.lib.nixosSystem {
        specialArgs = {inherit inputs;};
        modules = [
          ./hosts/lapix/configuration.nix
          home-manager.nixosModules.default
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.rashocean = import ./home/home.nix;
              backupFileExtension = "backup";
            };
          }
        ];
      };
    };
  };
}