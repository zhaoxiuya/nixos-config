{
  pkgs,
  config,
  ...
}: {
  users.users.zhaoxiuya = {
    isNormalUser = true;
    shell = pkgs.zsh;
    description = "zhaoxiuya";
    extraGroups = ["networkmanager" "wheel" "libvirtd"];
    packages = [];
  };

  programs.zsh.enable = true;
  programs.ssh.startAgent = true;
}
