{ pkgs, config, ... }:

{
  programs.zed-editor = {
    enable = true;
    extensions = [
      "nix"
      "make"
      "toml"
      "clangd"
      "fortran"
    ];
    userSettings = {
        disable_ai = true;
        assistant = {
            enabled = false;
        };
        hour_format = "hour24";
        vim_mode = false;
    };
  };
}
