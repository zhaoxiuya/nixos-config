{ pkgs, config, ... }:

{
  programs.firefox = {
    enable = true;
#    profiles.zhaoxiuya = {
#      isDefault = true;
#      #path = "zhaoxiuya";
#      settings = {
#        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
#      };
#      extensions.force = true;
#    };
  };
}
