{ pkgs, inputs, ... }:

let
  system = pkgs.system;
in
{
  home.packages = with pkgs; [
    freerdp
    libnotify
    inputs.winapps.packages."${system}".winapps
    inputs.winapps.packages."${system}".winapps-launcher
  ];

  home.file.".config/winapps/winapps.conf".text = ''
    WA_FLAVOR="libvirt"
    WA_RDP_USER="zhaoxiuya"
    WA_RDP_PASS="1234"
    WA_RDP_IP="192.168.122.105"
    WA_VM_NAME="win10"
  '';
}
