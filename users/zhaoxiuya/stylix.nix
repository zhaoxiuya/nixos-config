{ pkgs, config, ... }:

{
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";

    stylix.fonts = {
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };
      size.terminal = 12;
    };
    targets = {
      kitty.enable = true;
      zsh.enable = true;
    };
  };
}
