{ configs, pkgs, inputs, ... }:

let
  spicetifyPkgs = inputs.spicetify.legacyPackages.${pkgs.system};
in {
  environment.systemPackages = with pkgs; [ spotify ];
  programs.spicetify = {
    enable = true;

    enabledExtensions = with spicetifyPkgs.extensions; [
      adblockify
    ];

    theme = spicetifyPkgs.themes.hazy;

    enabledCustomApps = [
      spicetifyPkgs.apps.marketplace
    ];
  };
}
