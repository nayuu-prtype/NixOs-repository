{ config, pkgs, ... }:

let
  terminal = with pkgs; [ kitty ];
  utilsPkgs = with pkgs; [ fastfetch peaclock cmatrix htop cava];
in
{
  environment.systemPackages = terminal ++ utilsPkgs;
  programs.zsh.enable = true;

  programs.zsh = {
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      vim = "nvim";
      update = "sudo nixos-rebuild switch --flake /home/stark/nix-os#stark";
    };
  };

  programs.zsh.ohMyZsh = {
    enable = true;
    theme = "darkblood";
    plugins = [
      "web-search"
      "git"
    ];
  };
}
