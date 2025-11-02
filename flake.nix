{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.05";

    # Home manager input
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
    # Stylix theme input
    stylix = {
      url = "github:nix-community/stylix/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # MangoWC
    mango = {
      url = "github:DreamMaoMao/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Flatpak
    nix-flatpak = {
      url = "github:gmodena/nix-flatpak/?ref=latest";
    };

    # Affinity
    affinity-nix = {
      url = "github:mrshmllow/affinity-nix";
    };
  };

  outputs = { self, nixpkgs, stylix, home-manager, mango, nix-flatpak, affinity-nix, ... }@inputs: {
    nixosConfigurations = {
      lapix = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = { inherit inputs; };
        modules = [
          nix-flatpak.nixosModules.nix-flatpak
          mango.nixosModules.mango
          stylix.nixosModules.stylix
          ./hosts/lapix/configuration.nix
          home-manager.nixosModules.default
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users = {
                rashocean = import ./home/home.nix;
              };
              sharedModules = [
                mango.hmModules.mango
                {
                  home.packages = [affinity-nix.packages.x86_64-linux.v3];
                }
              ];
              backupFileExtension = "backup";
            };
          }
        ];
      };
    };
  };
}