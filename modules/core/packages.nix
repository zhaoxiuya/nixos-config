{ pkgs, config, ... }

{
  environment.systemPackages = with pkgs; [
    vim neovim neofetch wget git openssh tree
  ];
}
