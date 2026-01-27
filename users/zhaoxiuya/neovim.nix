{
  pkgs,
  config,
  ...
}:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    initLua = ''
      vim.opt.expandtab = true
      vim.opt.shiftwidth = 2
      vim.opt.tabstop = 2
      vim.opt.softtabstop = 2
      vim.opt.smartindent = true
      vim.opt.number = true
    '';
  };
}
