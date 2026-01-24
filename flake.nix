{
  description = "Zhao's NixOS config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        nixosConfigurations = {
          nixos = pkgs.nixosSystem {
            inherit system;
            modules = [ ./configuration.nix ];
          };
        };
      }
    );
}
