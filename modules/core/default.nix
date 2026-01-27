{ pkgs, config, inputs, ... }:


let
  system = pkgs.system;
in
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

    qemu_kvm
    virt-viewer
    spice-gtk
    virtio-win
    netcat-gnu
  ];
}
