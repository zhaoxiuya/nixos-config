{ pkgs, config, ... }:

{
  imports = [
    ./neovim.nix
    ./git.nix
    ./bash.nix
  ];

  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    discord zed-editor
  ];
}
