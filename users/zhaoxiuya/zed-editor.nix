{ pkgs, config, ... }:

{
  programs.zed-editor = {
    enable = true;
    extensions = [ "nix" "make" ];
    userSettings = {
        assistant = {
            enabled = false;
        };
        hour_format = "hour24";
        vim_mode = false;
    };
  };
}
