{
  description = "Zhao's NixOS config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    catppuccin.url = "github:catppuccin/nix";
  };

  outputs = { self, nixpkgs, home-manager, catppuccin, ... }@inputs: {
    nixosConfigurations.iridium = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; }; 
      modules = [
      	./hosts/iridium
      	home-manager.nixosModules.home-manager
	{
	  home-manager = {
	    useGlobalPkgs = true;
	    useUserPackages = true;
            users.zhaoxiuya = import ./users/zhaoxiuya/home.nix;
	    extraSpecialArgs = { inherit inputs; };
	  };
	}
      ];
    };
  };
}
