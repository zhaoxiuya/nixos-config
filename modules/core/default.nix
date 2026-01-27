{ pkgs, config, system ? pkgs.system,... }:

{
  imports = [
    ./kime.nix
    ./nix.nix
    ./bluetooth.nix
    ./audio.nix
    ./network.nix
    ./printer.nix
  ];

  environment.systemPackages = with pkgs; [
    vim
    neovim
    neofetch
    wget
    git
    openssh
    tree
    btop

    docker
    virt-viewer
    spice-gtk
    virtio-win
    winapps.packages."${system}".winapps
    winapps.packages."${system}".winapps-launcher
  ];
}
