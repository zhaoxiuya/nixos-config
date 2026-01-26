{ pkgs, config, inputs, ... }:

{
  imports = [
    inputs.stylix.homeManagerModules.stylix
    ./neovim.nix
    ./git.nix
    # ./bash.nix
    ./zsh.nix
    ./kitty.nix
    ./stylix.nix
  ];

  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    discord
    zed-editor
    nerd-fonts.monoid
  ];
}
