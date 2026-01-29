{ pkgs, config, lib, ... }:

{
  services.dunst.enable = true;
  programs.direnv.enable = true;

  home.packages = with pkgs; [
    winboat
    clang-tools
  ];
}
