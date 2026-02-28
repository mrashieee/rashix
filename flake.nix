{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.11";

    # Home manager input
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Flatpak
    nix-flatpak = {
      url = "github:gmodena/nix-flatpak/?ref=latest";
    };
  };

  outputs = { self, nixpkgs, home-manager, nix-flatpak, ... }@inputs: {
    nixosConfigurations = {
      lapix = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          nix-flatpak.nixosModules.nix-flatpak
          ./hosts/lapix/configuration.nix
          home-manager.nixosModules.default
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users = {
                rashocean = import ./home/home.nix;
              };
              backupFileExtension = "backup";
            };
          }
        ];
      };
    };
  };
}