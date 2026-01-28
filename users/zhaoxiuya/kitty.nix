{ pkgs, config, ... }:

{
  programs.kitty = {
    enable = true;

    settings = {
      cursor_shape = "beam";
      shell = "${pkgs.zsh}/bin/zsh";
    };
  };
}
