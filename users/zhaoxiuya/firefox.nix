{ pkgs, config, ... }:

{
  programs.firefox = {
    enable = true;
    profiles.zhaoxiuya = {
      isDefault = true;
      settings = {
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
      };
    };
  };
}
