{ config, pkgs, ... }:

{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    nanum
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    d2coding
  ];
}
