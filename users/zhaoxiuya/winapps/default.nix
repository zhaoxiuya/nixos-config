{ pkgs, inputs, ... }:

let
  system = pkgs.system;
in
{
  home.file.".config/winapps/winapps.conf".text = ''
    RDP_USER="zhaoxiuya"
    RDP_PASS="1234"
    RDP_IP=""
    VM_NAME="win10"
    WAFLAVOR="libvirt"
    APP_SCAN_TIMEOUT="120"
    DEBUG="true"
    MULTIMON="false"
    AUTOPAUSE="off"
    AUTOPAUSE_TIME="300"
    FREERDP_COMMAND="xfreerdp"
  '';
}
