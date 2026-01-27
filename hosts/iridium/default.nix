{ pkgs, config, ... }:

{
  imports = [
    ./users.nix
    ./hardware-configuration.nix
    ../../modules/core
    ../../modules/desktop
  ];

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  boot.kernelModules = [ "kvm-intel" ];

  programs = {
    zsh.enable = true;
    virt-manager.enable = true;
    ssh.startAgent = true;
  };

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_kvm;
      runAsRoot = true;
      swtpm.enable = true;
    };
  };

  virtualisation.docker.enable = true;

  hardware.graphics.enable = true;

  networking.hostName = "iridium";
  system.stateVersion = "25.11";
}
