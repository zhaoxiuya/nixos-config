# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{ config
, pkgs
, ...
}:
{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ../../modules/core
    ../../modules/desktop
    ../../users/zhaoxiuya
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  programs.virt-manager.enable = true;
  virtualisation.libvirtd.enable = true;
  hardware.graphics.enable = true;
  networking.hostName = "iridium";
  system.stateVersion = "25.11";
}
