{ pkgs, config, ... }:

{
  imports = [
    ./neovim.nix
    ./home.nix
    ./bash.nix
  ];

  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    discord zed-editor
  ];
}
