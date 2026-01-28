{pkgs, config, lib,... }:

{
  stylix = {
    enable = true;
    autoEnable = true;
    image = ./cern.png;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml;

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
      firefox = {
        enable = true;
        colorTheme.enable = true;
        colors.enable = true;
        fonts.enable = true;
        inputs.enable = true;
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
