{ pkgs, config, lib, ... }:

{
  home.packages = with pkgs; [
    freerdp3
    ibnotify
    virt-viewer
    virt-manager
  ];


}
