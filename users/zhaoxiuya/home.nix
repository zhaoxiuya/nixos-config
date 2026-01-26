{ pkgs, config, ... }:

{
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    discord zed-editor
  ];

  programs.git = {
    enable = true;
    userName = "zhaoxiuya";
    userEmail = "zhaoxiuya13@gmail.com";
    extraConfig.core.editor = "nvim";
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      snrs = "sudo nixos-rebuild switch --flake .#iridium";
    };
  };
}
