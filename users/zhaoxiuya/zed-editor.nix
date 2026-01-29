{ pkgs, config, lib, ... }:

{
  programs.zed-editor = {
    enable = true;
    extensions = [
      "nix"
      "make"
      "toml"
      "clangd"
      "fortran"
      "git-firefly"
    ];
    userSettings = {
        disable_ai = true;
        assistant = {
            enabled = false;
        };
        vim_mode = false;
        ui_font_size = lib.mkForce 20.0;
        ui_rulers = [80];
    };
  };
}
