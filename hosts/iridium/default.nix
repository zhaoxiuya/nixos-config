{ pkgs, config, ... }:

{
  imports = [
    ./users.nix
    ./hardware-configuration.nix
    ../../modules/core
    ../../modules/desktop
    ../../users/zhaoxiuya
  ];

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  programs = {
    virt-manager.enable = true;
    ssh.startAgent = true;
  }

  virtualisation.libvirtd.enable = true;
  hardware.graphics.enable = true;

  networking.hostName = "iridium";
  system.stateVersion = "25.11";
}
