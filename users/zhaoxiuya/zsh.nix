{ pkgs, config, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    plugins = [
      {
        name = "pure";
        src = pkgs.pure-prompt;
        file = "share/zsh/site-functions/async.zsh";
      }
      {
        name = "pure";
        src = pkgs.pure-prompt;
        file = "share/zsh/site-functions/pure.zsh";
      }
    ];
    initContent = ''
      source ${pkgs.pure-prompt}/share/zsh/site-functions/async.zsh
      autoload -U promptinit; promptinit
      fpath+=( "${pkgs.pure-prompt}/share/zsh/site-functions" )
      prompt pure
    '';

    shellAliases = {
      ll = "ls -l";
      snrs = "sudo nixos-rebuild switch --flake .#iridium";
    };
  };
}
