{ pkgs, config, ... }:

{
  imports = [
    neovim.nix
  ];

  home.stateVersion = "25.11";

  home.packages = with pkgs; [
    discord zed-editor
  ];

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "zhaoxiuya";
        email = "zhaoxiuya13@gmail.com";
      };
      core.editor = "nvim";
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
