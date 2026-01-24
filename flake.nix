{
  description = "Zhao's NixOS config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    catppuccin.url = "github:catppuccin/nix";
  };

  outputs = { self, nixpkgs, flake-utils, catppuccin, ... }:
    flake-utils.lib.eachSystem [ "x86_64-linux" ] (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        nixosConfigurations = {
          nixos = pkgs.nixosSystem = {
            inherit system;
            modules = [ ./configuration.nix ];
          };
        };
      }
    );
}
