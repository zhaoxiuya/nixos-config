{
  pkgs,
  config,
  inputs,
  ...
}:

{
  imports = [
    inputs.stylix.homeManagerModules.stylix
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
    discord
    zed-editor
    firefox
  ];

  home.stateVersion = "25.11";
}
