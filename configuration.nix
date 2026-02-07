{ config, pkgs, inputs, ... }:

{
  imports =
    [

      ./system/boot.nix
      ./system/hardware.nix
      ./system/nvidia.nix
      ./system/users.nix
      ./system/network.nix
      ./system/locale.nix
      ./system/hyprland.nix
      ./system/wm.nix
      ./system/audio.nix
      ./system/fonts.nix
      ./system/packages.nix


      ./programs/terminal.nix
      ./programs/spotify.nix
      ./programs/steam.nix

    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  environment.systemPackages = with pkgs; [
    mpv
    go
    gccgo15
    glibc
    yt-dlp
    protonvpn-gui
  ];

  programs.nix-ld.enable = true;

}
