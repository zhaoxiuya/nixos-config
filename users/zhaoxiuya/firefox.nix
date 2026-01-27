{ pkgs, config, ... }:

{
  programs.firefox = {
    enable = true;
    profiles.zhaoxiuya = {
      isDefault = true;
      extensions.force = true;
    };
  };
}
