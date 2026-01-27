{
  pkgs,
  config,
  ...
}: {
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "zhaoxiuya";
        email = "zhaoxiuya13@gmail.com";
      };
      core.editor = "nvim";
    };
  };
}
