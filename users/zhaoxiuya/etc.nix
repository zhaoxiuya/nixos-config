{ pkgs, config, lib, ... }:

{
  services.dunst.enable = true;
  programs.clang-tools.enable = true;

  home.packages = with pkgs; [
    winboat
  ];
}
