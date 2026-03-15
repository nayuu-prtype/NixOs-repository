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

  services.seatd.enable = true;
  security.polkit.enable = true;

  services.printing.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "intl";
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
    ];
  };
}
