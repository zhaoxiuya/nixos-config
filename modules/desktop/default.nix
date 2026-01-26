{ pkgs, config, ... }:

{
  imports = [ ./plasma.nix ];

  programs.firefox.enable = true;
}
