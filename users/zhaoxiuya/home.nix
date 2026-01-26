{ pkgs, config, ... }:

{
  imports = [
    ./neovim.nix
    ./git.nix
    # ./bash.nix
    ./zsh.nix
    ./kitty.nix
  ];

  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    discord
    zed-editor
    nerd-fonts.monoid
  ];
}
