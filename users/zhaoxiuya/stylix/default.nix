{pkgs, config, lib,... }:

{
  stylix = {
    enable = true;
    image = ./cern.png;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
    
    homeManagerIntegration = true;

    fonts = {
      sansSerif = {
        package = pkgs.noto-fonts-cjk-sans;
        name = "Noto Sans CJK KR";
      };
      serif = {
        package = pkgs.noto-fonts-cjk-serif;
        name = "Noto Serif CJK KR";
      };
      monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };
      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };
      sizes.terminal = 12;
    };  
  
    targets = {
      # kde.enable = false;
      # gnome.enable = false;
      firefox = {
        enable = true;
        profileNames = [ "zhaoxiuya" ];
      };
    };
  };
  qt = {
    enable = true;
    platformTheme.name = lib.mkForce "kde";
    style.name = lib.mkForce "kvantum";
  };
}
