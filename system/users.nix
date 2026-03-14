{ config, pkgs, ... }:

{
  users.users.stark = {
    isNormalUser = true;
    description = "Stark";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };

  users.users.steam = {
    isNormalUser = true;
    description = "Steam";
    shell = pkgs.zsh;
    extraGroups = [ "video" "audio" ];
    packages = with pkgs; [
      wine
      lutris
      heroic
    ];
    home = "/home/steam";
    createHome = true;
  };

  programs.firejail = {
    enable = true;
    wrappedBinaries = {
      wine = {
        executable = "${pkgs.wine}/bin/wine";
        profile = pkgs.writeText "wine.profile" ''
          noblacklist ${pkgs.wine}
          private-home /home/steam/Games
          whitelist /home/steam/Games
          whitelist /tmp
          caps.drop all
          seccomp
          noroot
          protocol unix,inet,inet6
        '';
      };

      lutris = {
        executable = "${pkgs.lutris}/bin/lutris";
        profile = pkgs.writeText "lutris.profile" ''
          private-home /home/steam
          whitelist /home/steam/Games
          whitelist /run/opengl-driver
          whitelist /dev/dri
          caps.drop all
          seccomp
          noroot
        '';
      };
    };
  };

  fileSystems."/home/steam/Downloads" = {
    device = "/home/steam/Downloads";
    options = [ "bind" "noexec" "nodev" "nosuid" ];
  };
}
