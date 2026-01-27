{ pkgs
, config
, ...
}:
{
  programs.bash = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      snrs = "sudo nixos-rebuild switch --flake .#iridium";
    };
  };
}
