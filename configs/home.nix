{ config, pkgs, ... }:

{
  imports = [
    ./LSPs.nix
    ./chromium.nix
    ./hyprland-conf.nix
  ];

  home.username = "stark";
  home.homeDirectory = "/home/stark";

  home.packages = with pkgs; [
    #
  ];
  
  home.file = {
    #
  };

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;

}
