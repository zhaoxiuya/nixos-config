{ pkgs, config, ... }:

{
  users.users.zhaoxiuya = {
    isNormalUser = true;
    description = "zhaoxiuya";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = [];
  };

  programs.ssh.startAgent = true;
}
