{ pkgs, config, lib, ... }:

{
  stylix = {
    enable = true;
    image = ./cern.png;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

    fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };
      sizes.terminal = 12;
    };

    targets = {
      kde.enable = false;
      gnome.enable = false;
    };
  };
  qt = {
    enable = true;
    platformTheme.name = lib.mkForce "kde";
    style.name = lib.mkForce "breeze";
  };
}
