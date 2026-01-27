{
  pkgs,
  config,
  ...
}:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "bira";
      plugins = [
        "git"
        "kubectl"
        "helm"
        "docker"
      ];
    };
    shellAliases = {
      ll = "ls -l";
      snrs = "sudo nixos-rebuild switch --flake .#iridium";
    };
  };
}
