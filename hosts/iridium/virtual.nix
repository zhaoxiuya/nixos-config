{ config, pkgs, inputs, ... }:

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
      extraConfig = ''
        network_default = "default"
      '';
    };
    docker.enable = true;
  };

  environment.systemPackages = with pkgs; [
    virt-viewer
    spice-gtk
    virtio-win
    netcat-gnu
    freerdp
    libnotify
    xdg-utils
    inputs.winapps.packages."${system}".winapps
    inputs.winapps.packages."${system}".winapps-launcher
  ];
}
