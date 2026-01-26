{ pkgs, config, ... }:

{
  users.users.zhaoxiuya = {
    isNormalUser = true;
    description = "zhaoxiuya";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
      thunderbird
    ];
  };

  programs.git = {
    enable = true;
    config = {
      user.name = "zhaoxiuya";
      user.email = "zhaoxiuya12@gmail.com";
    };
  };

  programs.ssh.startAgent = true;
}
