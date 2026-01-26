{ pkgs, config, ... }:

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
    #targets = {
    #  kitty.enable = true;
    #  zsh.enable = true;
    #};
  };
}
