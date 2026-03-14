{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    nil
    lua-language-server
    nodePackages.vscode-json-languageserver
  ];
}
