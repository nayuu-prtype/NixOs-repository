{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    discord
    firefox
    spotify
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
