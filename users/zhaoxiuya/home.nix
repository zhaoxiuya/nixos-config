{ pkgs, config, ... }:

{
  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    discord zed-editor
  ];

  programs.git = {
    enable = true;
    user = {
      name = "zhaoxiuya";
      email = "zhaoxiuya13@gmail.com";
    };
    settings.core.editor = "nvim";
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      snrs = "sudo nixos-rebuild switch --flake .#iridium";
    };
  };
}
