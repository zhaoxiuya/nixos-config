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
  ];

  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    nanum
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    d2coding
  ];

  home.stateVersion = "25.11";
}
