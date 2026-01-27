{
  pkgs,
  config,
  inputs,
  ...
}:

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
  ];

  home.packages = with pkgs; [
  ];

  home.stateVersion = "25.11";
}
