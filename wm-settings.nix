{ config, pkgs, ... }:

{
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
