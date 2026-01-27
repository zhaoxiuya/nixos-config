{ pkgs, config, inputs, ... }:

{
  imports = [
    inputs.stylix.homeModules.stylix
    inputs.nixcord.homeModules.nixcord
    ./stylix
    ./neovim.nix
    ./git.nix
    ./zsh.nix
    ./kitty.nix
    ./zed-editor.nix
    ./firefox.nix
    ./discord.nix
    ./fonts.nix
    ./winapps
  ];

  programs.home-manager.enable = true;

  home = {
    username = "zhaoxiuya";
    homeDirectory = "/home/zhaoxiuya";
    stateVersion = "25.11";
  };
}
