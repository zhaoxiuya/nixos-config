{ pkgs, config, ... }:

{
  networking.networkmanager.enable = true;
  networking.firewall.allowedTCPPorts = [ 3389 ];
}
