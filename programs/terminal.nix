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
      update = "sudo nixos-rebuild switch --flake /home/stark/NixOS#stark";
      commit = "git add . && git commit -m";
      push = "git push origin main";
      status = "git status";
      add = "git add .";
      diff = "git diff";
      vim = "nvim";
      y = "youtube";
      c = "chatgpt";
      g = "google";
    };
  };

  programs.zsh.ohMyZsh = {
    enable = true;
    theme = "darkblood";
    plugins = [
      "web-search"
    ];
  };
}
