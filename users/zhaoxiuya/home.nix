{ pkgs, config, ... }:

{
  imports = [
    ./neovim.nix
    ./git.nix
    # ./bash.nix
    ./zsh.nix
  ];

  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    discord zed-editor
  ];
}
