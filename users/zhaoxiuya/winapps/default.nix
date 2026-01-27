{ pkgs, inputs, ... }:

let
  system = pkgs.system;
in
{
  home.packages = with pkgs; [
    freerdp
    libnotify
  ];

  home.file.".config/winapps/winapps.conf".text = ''
    WA_FLAVOR=""
    WA_RDP_USER="zhaoxiuya"
    WA_RDP_PASS="1234"
    WA_RDP_IP="192.168.122.105"
    WA_VM_NAME="win10"
  '';
}
