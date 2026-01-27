{ config, pkgs, ... }:

{
  programs.nixcord = {
    enabled = true;
    user = "zhaoxiuya";
  };
}
