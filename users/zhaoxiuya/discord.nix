{ config, pkgs, ... }:

{
  programs.nixcord = {
    enable = true;
    user = "zhaoxiuya";
  };
}
