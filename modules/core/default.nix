{ pkgs, config, inputs, ... }:

let
  system = pkgs.system;
in
{
  imports = [
    ./korean.nix # kime + locale
    ./nix.nix
    ./bluetooth.nix
    ./audio.nix
    ./network.nix
    ./printer.nix
  ];

  environment.systemPackages = with pkgs; [
    vim
    neovim
    neofetch
    wget
    git
    openssh
    tree
    btop
  ];
}
