{ config, pkgs, ... }:

{
  boot.kernelModules = [ "kvm-intel" ];
  programs.virt-manager.enable = true;
  hardware.graphics.enable = true;

  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        package = pkgs.qemu_kvm;
        runAsRoot = true;
        swtpm.enable = true;
      };
      networks.default.enable = true;
    };
    docker.enable = true;
  };

  environment.systemPackages = with pkgs; [
    virt-viewer
    spice-gtk
    virtio-win
    netcat-gnu
  ];
}
