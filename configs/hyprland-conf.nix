{ config, pkgs, ... }:

{
  home.file = {

    ".config/hyprland.conf".text = ''
      # every needed config is in those file

      source = ./modules/monitors
      source = ./modules/variables
      source = ./modules/keybindings
      source = ./modules/keyboard
      source = ./modules/autostart
      source = ./modules/look-and-feel
      source = ./modules/windowrules
    '';

#  "config/modules/monitors".text = ''
#    
#  ''
  };
}
