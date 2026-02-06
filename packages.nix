{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    discord
    firefox
    obsidian
    rofi
    waybar
    swww
    git
    yazi
    fzf
    proton-pass
    vscode
    jetbrains.idea-oss
  ];
}
