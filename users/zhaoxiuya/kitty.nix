{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;

    font = {
      name = "Monoid";
      size = 13;
    };

    themeFile = "GruvboxMaterialDarkHard";
  };
}

