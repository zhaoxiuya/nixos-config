{ config, pkgs, ... }:

{
  boot.kernelModules = [ "kvm-intel" ];

  programs.virt-manager.enable = true;

  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        package = pkgs.qemu_kvm;
        runAsRoot = true;
        swtpm.enable = true;
        ovmf.enable = true;
      };
    };

    docker.enable = true;
  };

  hardware.graphics.enable = true;

  environment.systemPackages = with pkgs; [
    virt-viewer
    spice-gtk
    virtio-win
    netcat-gnu
  ];
}
