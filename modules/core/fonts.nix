{ pkgs
, config
, ...
}:
{
  fonts.packages = with pkgs; [
    nanum-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    d2coding
  ];
}
