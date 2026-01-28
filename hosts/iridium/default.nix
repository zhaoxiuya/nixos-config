{ pkgs, config, ... }:

{
  imports = [
    ./users.nix
    ./hardware-configuration.nix
    ./virtual.nix
    ../../modules/core
    ../../modules/desktop
  ];

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  programs = {
    zsh.enable = true;
    ssh.startAgent = true;
  };

  networking.hostName = "iridium";
  system.stateVersion = "25.11";
}
