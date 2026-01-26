{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;

    font = {
      name = "Monoid";
      size = 13;
    };

    themeFile = "GruvboxMaterialDarkHard";

    settings = {
      cursor_shape = "beam";
      shell = pkgs.zsh;
    };
  };
}

