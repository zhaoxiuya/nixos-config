{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    shell = pkgs.zsh;

    font = {
      name = "Monoid";
      size = 13;
    };

    themeFile = "GruvboxMaterialDarkHard";

    settings = {
      cursor_shape = "beam";
    };
  };
}

