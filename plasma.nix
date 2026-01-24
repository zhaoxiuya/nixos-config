{ inputs, config, pkgs, ... }:

let 
  myFlavour = "Mocha";
  myTheme = "Catppuccin-${myFlavour}";
in
{
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.theme = null;
  services.xserver.desktopManager.plasma6.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  imports = [
    (import (builtins.fetchTarball "https://github.com/catppuccin/nix/archive/refs/heads/main.tar.gz"))
  ];
  
  catppuccin = {
    enable = true;
    flavour = builtins.toLower myFlavour;
    gtk = {
      enable = true;
      icon = {
        enable = true;
        flavor = builtins.toLower myFlavour;
      };
    };
  };

  services.desktopManager.plasma6.settings = {
    "org.kde.kdeglobals" = {
      ColorScheme = myTheme;
      widgetStyle = "Breeze";
    };
    "org.kde.plasma.desktop" = {
      lookAndFeel = myTheme;
    };
    "org.kde.kdecoration2" = {
      library = myTheme;
    };
    "org.kde.iconThemes" = {
      theme = myTheme;
    };
  };

  environment.systemPackages = with pkgs; [
    catppuccin-kvantum
    libsForQt5.qtstyleplugin-kvantum
  ];

  xsession.windowManager.session = {
    qt = {
      style.name = "kvantum";
      theme = myTheme;
    };
  };
}
