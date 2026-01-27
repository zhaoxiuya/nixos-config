{
  pkgs,
  config,
  inputs,
  ...
}:
{
  imports = [
    inputs.stylix.homeModules.stylix
    ./stylix
    ./neovim.nix
    ./git.nix
    ./zsh.nix
    ./kitty.nix
  ];

  home.packages = with pkgs; [
    discord
    zed-editor
  ];

  home.stateVersion = "25.11";
}
