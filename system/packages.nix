{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    discord
    obsidian
    rofi
    waybar
    git
    yazi
    fzf
    proton-pass
    vscode
    jetbrains.idea-oss
  ];
}
