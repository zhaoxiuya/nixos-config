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
    ./discord.nix
  ];

  home.packages = with pkgs; [
    discord
  ];

  programs.gtk.enable = true;
  programs.gtk.gtk2Theme = "Stylix";
  programs.gtk.gtk3Theme = "Stylix";

  home.stateVersion = "25.11";
}
