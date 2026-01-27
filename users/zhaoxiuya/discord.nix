{ config, pkgs, ... }:

{
  programs.nixcord = {
    enable = true;
    discord.enable = false;
    vesktop.enable = true;s
    user = "zhaoxiuya";
  };
}
