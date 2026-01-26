{ pkgs, config, ... }:

{
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    discord zed-editor
  ];

  programs.git = {
    enable = true;
    config = {
      user.name = "zhaoxiuya";
      user.email = "zhaoxiuya12@gmail.com";
    };
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      snrs = "sudo nixos-rebuild switch --flake .#iridium";
    };
  };
}
