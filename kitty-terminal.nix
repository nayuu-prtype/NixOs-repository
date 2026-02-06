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
      update = "sudo nixos-rebuild switch --flake /home/stark/nix-os#stark";
      vim = "nvim";
      g = "google";
      y = "youtube";
      c = "chatgpt";
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
