{ config, pkgs, ... }:

let
  hyprEcosystem = with pkgs; [ hypridle hyprpaper ];
in
{
  environment.systemPackages = hyprEcosystem;

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
}
