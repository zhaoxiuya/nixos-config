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
    ./zed-editor.nix
    ./firefox.nix
    ./vesktop.nix
  ];

  home.packages = with pkgs; [
  ];

  home.stateVersion = "25.11";
}
