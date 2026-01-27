{ pkgs, config, ... }:

{
  imports = [
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
