{ config, pkgs, ... }:

{
  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  nixpkgs.config.allowUnfree = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  programs.zsh.enable = true;
  environment.variables.EDITOR = " neovim ";

  system.stateVersion = "26.05";
}
