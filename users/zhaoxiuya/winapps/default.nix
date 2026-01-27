{ pkgs, inputs, ... }:

let
  system = pkgs.system;
in
{
  home.packages = with pkgs; [
    freerdp3
    libnotify
    winapps.packages."${system}".winapps
    winapps.packages."${system}".winapps-launcher
  ];

  home.file.".config/winapps/winapps.conf".text = ''
    RDP_USER="zhaoxiuya"
    RDP_PASS="1234"
    RDP_IP="192.168.122.186"
    VM_NAME="RDPWindows"
  '';
}
