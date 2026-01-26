{ pkgs, config, ... }:

{
  environment.systemPackages = with pkgs; [
    vim neovim neofetch wget git openssh tree
    kdePackages.spectacle
    kdePackages.qtstyleplugin-kvantum
    libsForQt5.qtstyleplugin-kvantum
  ];
}
