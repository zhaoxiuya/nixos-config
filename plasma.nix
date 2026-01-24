{ inputs, config, pkgs, ... }:

let 
  myFlavor = "mocha";
  myTheme = "Catppuccin-Macha";
in
{
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
#  services.displayManager.sddm.theme = null;
  services.xserver.desktopManager.plasma6.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  imports = [
    inputs.catppuccin.nixosModules.catppuccin
  ];
  
  catppuccin = {
    enable = true;
    flavor = myFlavor;
#    gtk = {
#      enable = true;
#      icon = {
#        enable = true;
#        flavor = myFlavor;
#      };
#    };
  };
 
  environment.systemPackages = with pkgs; [
    catppuccin-kvantum
    catppuccin-kde
    kdePackages.qtstyleplugin-kvantum
    kvantum
#    catppuccin-gtk-papirus-folders
  ];

#  services.desktopManager.plasma6.settings = {
#    "org.kde.kdeglobals" = {
#      ColorScheme = myTheme;
#      widgetStyle = "Breeze";
#    };
#    "org.kde.plasma.desktop" = {
#      lookAndFeel = myTheme;
#    };
#    "org.kde.kdecoration2" = {
#      library = myTheme;
#    };
#    "org.kde.iconThemes" = {
#      theme = myTheme;
#    };
#  };

#  environment.systemPackages = with pkgs; [
#    catppuccin-kvantum
#    libsForQt5.qtstyleplugin-kvantum
#  ];

#  xsession.windowManager.session = {
#    qt = {
#      style.name = "kvantum";
#      theme = myTheme;
#    };
#  };
}
