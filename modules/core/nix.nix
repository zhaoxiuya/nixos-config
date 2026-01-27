{ pkgs, config,... }:

{
  nix = {
    package = pkgs.nix;
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
  nixpkgs.config.allowUnfree = true;
  environment.interactiveShellInit = ''
    gsnrs() {
      if [ -z "$1" ]; then
        echo "please write commit message"
        return 1
      fi

      git add .
      git commit -m "$1"
      sudo nixos-rebuild switch --flake .#iridium
    }
  '';
}
