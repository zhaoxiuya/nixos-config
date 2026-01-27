{ pkgs, config, ... }:

{
  users.users.zhaoxiuya = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "zhaoxiuya";
    extraGroups = [
      "networkmanager"
      "wheel"
      "libvirtd"
    ];
    packages = [ ];
  };
}
