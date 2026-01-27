{ pkgs, config, ... }:

{
  home.packages = with pkgs; [
    vesktop
    nixcord
  ];
}
